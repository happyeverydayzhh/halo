# halo

git 命令总结:
1、echo 新建文件(新建README文件，并在文件中写入My Project)
$ echo 'My Project' > README

2、git add <FILE PATH> 跟踪新文件
$ git add README

3、git status 状态概览 -s 或者 --short 则紧凑输出状态

4、忽略文件，新建名为.gitignore的文件，列出你要忽略的文件的模式。如：
$ cat .gitignore
*.[oa]
*~
第一行告诉Git忽略所有以.o或者.a结尾的文件。
第二行告诉Git忽略所有名字以波浪符（~）结尾的文件

文件 .gitignore 的格式规范如下：
所有空行或者以 # 开头的行都会被 Git 忽略。
可以使用标准的 glob 模式匹配，它会递归地应用在整个工作区中。
匹配模式可以以（/）开头防止递归。
匹配模式可以以（/）结尾指定目录。
要忽略指定模式以外的文件或目录，可以在模式前加上叹号（!）取反。

5、touch file 新建文件; vi file 编辑文件（如果没有file，则新建file）

6、rm file 移除文件
     
   rm -rf filePath 删除文件夹

7、git rm filename 从Git移除某个文件
     git rm -f filename 删除之前修改过，或者已经暂存
     git rm --cached filename 从暂存区删除，但仍保存在工作目录中
     
     移动文件：
     git mv file_from file_to
     
     运行 git mv 就相当于运行了下面三条命令：
     $ mv README.md README
     $ git rm README.md
     $ git add README
     
8、取消操作
     git commit --amend
     
     比如：
     $ git commit -m 'initial commit'
     $ git add forgotten_file
     $ git commit --amend
     最终你只会有一个提交——第二次提交将代替第一次提交的结果。
     
9、取消暂存的文件
      git reset HEAD <file>
      
10、撤销对文件的修改（！！！危险操作）
      git checkout -- <file> 

11、删除pod库
     pod repo remove ZHBase 
