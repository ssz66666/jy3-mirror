import os

if __name__ == '__main__':
	f = 'assets/project/loader/script/ok.lua'
	ver = 0
	if os.path.isfile(f):
		with open(f, 'rb') as fp:
			l = fp.readline()
			ver = int(l[9:-2])
			print(ver)
	ver += 1
	out = "return '/" + str(ver) + "'\n"
	with open(f, 'wb') as ofp:
		ofp.write(out)
	