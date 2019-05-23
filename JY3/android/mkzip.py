import os
import zipfile
import shutil

def z_file(zipf, path):
	if path.startswith('.git/objects'):
		if path.find('info') != -1:
			zipf.write(path, path[5:])
		if path.find('pack') != -1:
			zipf.write(path, path[5:])
		return
	zipf.write(path, path[5:])
def zipdir(path, ziph):
	# ziph is zipfile handle
	for root, dirs, files in os.walk(path):
		for d in dirs:
			z_file(ziph, os.path.join(root, d))
			#ziph.write(os.path.join(root, d))

if __name__ == '__main__':
	zipf = zipfile.ZipFile('../out.zip', 'w', zipfile.ZIP_DEFLATED)
	#zipf.write('.git/', 'git/')
	zipf.write('.git/objects/', 'objects')
	zipdir('.git/',zipf)
	zipf.writestr('objects/info/alternates', '-\r\n')
	lst = ['config'
	#, 'FETCH_HEAD'
	, 'HEAD'
	, 'index'
	,'refs/heads/master']
	if os.path.isfile('.git/objects/refs/remotes/origin/master'):
		lst.append('refs/remotes/origin/master')
	for l in lst:
		z_file(zipf, '.git/' + l)
	zipf.close()
	shutil.copyfile('../out.zip', '../assets/project/loader/image/0001.mcf')