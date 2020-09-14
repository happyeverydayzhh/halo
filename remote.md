2.5 Git 基础 - 远程仓库的使用

1、查看远程仓库：
     git remote -v

2、添加远程仓库：
     git remote add <shortname> <url>
     
     比如：
     git remote add zh https://github.com/happyeverydayzhh/halo.git
     
     现在你可以在命令行中使用字符串 zh 来代替整个 URL。 例如，如果你想拉取 Paul 的仓库中有但你没有的信息，可以运行 git fetch zh：
     
3、从远程仓库中抓取与拉取：
     $ git fetch <remote>
     
     注意 git fetch 命令只会将数据下载到你的本地仓库——它并不会自动合并或修改你当前的工作。 当准备好时你必须手动将其合并入你的工作。
     
   git pull <remote>  命令来自动抓取后合并该远程分支到当前分支
   
4、推送到远程仓库
      git push <remote> <branch>
      
5、查看某个远程仓库
     git remote show <remote>
     
6、远程仓库的重命名与移除
    git remote rename <before> <after>
    
    例如，想要将 zh 重命名为 paul
    git remote rename pb paul
  
  移除远程仓库：
   使用 git remote remove <name> 或 git remote rm <name>


