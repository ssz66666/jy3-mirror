@echo off
python ver_ok.py
svn update ..\
cd assets
rd /s /q acg
mkdir acg
cd ..
cd git

cd assets/project
rd /s /q game
mkdir game

cd game
move ../../../audio audio
move ../../../fonts fonts
move ../../../framelist framelist
move ../../../image image
move ../../../particle particle
move ../../../script script
move ../../../spine spine
move ../../../shader shader
cd ..
rd /s /q res
move ../assets/project/res res
git add *
git commit -a -m "publish"
exit 0