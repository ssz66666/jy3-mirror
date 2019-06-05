#coding=utf-8
# 将文件批量改名为16进制的唯一id
# 遍历指定文件夹里的所有文件, 提取出文件名中的数字, 加上numberOffset后, 转成16进制的唯一id
import os, re;
path = 'E:\\JY3\\project\\JY3\\image\\skill\\new\\images\\';
numberOffset = 8;

os.chdir(path);
for fileName in os.listdir(path):
    searchObj = re.search(r'(\d+).*?([^\.]+$)', fileName);
    if searchObj:
        index = int(searchObj.group(1));
        index = index + numberOffset;
        extName = searchObj.group(2);
        newName = '{:0>4x}.{}'.format(index, extName);
        print(fileName, '==>', newName);
        os.rename(fileName, newName);
    else:
        print(fileName, 'Not renamed.');


raw_input("Press enter to exit...\n")