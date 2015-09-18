# jjpikoov-vim
My vim config file and usefull plugins.
<br><br>

<h6>Airline</h6>
Remember to add some font for Airline plugin: https://github.com/powerline/fonts<br>
Tutorial: http://powerline.readthedocs.org/en/latest/installation/linux.html

<h5>To install on another machine:</h5>
```bash
cd ~
git clone https://github.com/jjpikoov/jjpikoov-vim
mv jjpikoov-vim ~/.vim
cd ~/.vim
git submodule init
git submodule update
```

<h5>To update plugins:</h5>
```bash
git submodule foreach git pull origin master
```

<h6>To delete submodel (plugin):</h6>
http://davidwalsh.name/git-remove-submodule