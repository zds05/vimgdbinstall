mkdir ~/.vim;
cp -rf ./vimrc ~/.vim/;
cp -R -rf ./vimplugin/bundle ~/.vim;

mkdir -p /opt/share/vim/vimfiles;
cp -R -rf ./vimgdb-for-vim7.4-master/vimgdb_runtime/* /opt/share/vim/vimfiles;
cp -R -rf ./vimplugin /opt/share/vim/vimfiles;
cd  ./vim74/src/;
make;
make install;
cp ./vim /bin;
chmod +x /bin/vim;
vim ../../readme.txt;








 
