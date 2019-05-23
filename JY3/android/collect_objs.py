import zlib
import binascii
import shutil
import os
from sys import argv
#filename = '.git/objects/00/93eb48d5edf61501ce97e652f3cb3f48a5ca82'
#filename = '.git/objects/60/59dd1987422fc7a8b7c5b5bfa9f8c089d9e439'
#filename = '.git/objects/12/6c0bcec98c5425fcf5118d114b8d1cb30738c0'
#filename = '.git/objects/d7/e77e80bb8707a9cff036718234021a7f4e27a1'
root_dir = 'git/'

def writefile(sha):
	print('write sha:' + sha)
	out_path = argv[1] + sha[:2] + '/' + sha[2:]
	dir = argv[1] + sha[:2]
	if not os.path.isdir(dir):
		os.mkdir(dir)
	name = root_dir + '.git/objects/' + sha[:2] + '/' + sha[2:]
	if not os.path.isfile(out_path):
		shutil.copyfile(name, out_path)

def readzfile(f):
	name = root_dir + '.git/objects/' + f[:2] + '/' + f[2:]
	with open(name, 'rb') as fp:
		zdata = fp.read()
		data = zlib.decompress(zdata)
	return data
def readstr(list):
	data = list[0]
	pos = data.find('\0')
	ret = data[:pos]
	list[0] = data[pos + 1:]
	return ret
	
def readtype(list):
	data = list[0]
	pos = data.find(' ')
	ret = data[:pos]
	list[0] = data[pos + 1:]
	return int(ret)

def readcommit(list, end):
	data = list[0]
	pos = data.find(end)
	ret = data[:pos]
	list[0] = data[pos + 1:]
	return ret

def readsha1(list):
	data = list[0]
	pos = 20
	ret = data[:pos]
	z = binascii.b2a_hex(ret)
	list[0] = data[pos:]	
	return z
def readobj(list, path):
	type = readtype(list)
	assert(type)
	if type == 40000:#tree
		name = path + '/'+ readstr(list)
		print('--tree,')
		print name
		sha1 = readsha1(list)
		print sha1
		writefile(sha1)
		traverse(sha1, name)
		
	elif type == 100644:#BLOB
		name = path + '/'+ readstr(list)
		sha1 = readsha1(list)
		print('--blob,')
		print name
		print sha1
		writefile(sha1)
	else:
		print(path + '??' + str(type))
		assert(False)

def traverse(tree, path):
	list = [(readzfile(tree))]
	#tree
	tree = readstr(list)
	while len(list[0]) > 1:
		readobj(list, path)
	
def main():	
	if not os.path.isdir(argv[1]):
		os.mkdir(argv[1])
	filename = root_dir +'.git/refs/remotes/origin/master'	
	if os.path.isfile(filename):
		print("find")
	else:
		filename = root_dir +'.git/refs/heads/master'
	with open(filename, 'rb') as fp:
		line = fp.readline()
	head = 1	
	commit_sha = line[:-1]
	while(True):
		writefile(commit_sha)
		commit = [readzfile(commit_sha)]
		print(commit)
		cmit_id = readstr(commit)
		treetype = readcommit(commit,' ')
		assert(treetype == 'tree')
		tree_sha = readcommit(commit,'\n')
		if head == 1:
			head_tree = tree_sha
			writefile(tree_sha)	
		head = 2
		parenttype = readcommit(commit,' ')
		if parenttype != 'parent':
			break
		parent_sha = readcommit(commit,'\n')
		writefile(parent_sha)
		commit_sha = parent_sha

	path = ''
	traverse(head_tree, path)
	
main()