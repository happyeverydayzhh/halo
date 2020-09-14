
1、分支创建： 只是创建了一个可以移动的新的指针。
git branch <name>  

2、分支切换
git checkout <name>

创建新分支的同时切换过去：
git checkout -b <newbranchname> 

3、git log命令查看分叉历史。
git log --oneline --decorate --graph --all，它会输出你的提交历史、各个分支的指向以及项目的分支分叉情况。

4、分支新建与合并
1）新建分支： git checkout -b testing
修复bug： vi idx.html
提交： git commit -a -m 'add a new fotter'

2)需要解决紧急问题，建立hotfix分支
$ git checkout -b hotfix
修复bug：$ vim index.html
$ git commit -a -m 'fixed the broken email address'

4)将hotfix合并到master分支上
 $ git checkout master
$ git merge hotfix

5）删除不再需要的hotfix分支
$ git branch -d hotfix

5、遇到冲突时的分支合并



