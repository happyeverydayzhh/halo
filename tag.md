1、列出标签:
git tag 以字母顺序列出标签
git tag -l(--list) "v1.2.8*"  列出1.2.8系列标签

2、创建标签：轻量标签（lightweight）与附注标签（annotated）

轻量标签很像一个不会改变的分支——它只是某个特定提交的引用。

而附注标签是存储在 Git 数据库中的一个完整对象， 它们是可以被校验的，其中包含打标签者的名字、电子邮件 地址、日期时间， 此外还有一个标签信息，并且可以使用 GNU Privacy Guard (GPG)签名并验证。

1）附注标签 git tag -a ...
如：git tag -a v1.4 -m "my version 1.4" (-m 选项指定了一条将会存储在标签中的信息)

git show <version>  查看标签信息和与之对应的提交信息。

2）轻量标签 
git tag <version>
创建轻量标签，不需要使用 -a、-s 或 -m 选项

3、共享标签
git push 命令并不会传送标签到远程仓库服务器上

git push origin <tagname>  在创建完标签后你必须显式地推送标签到 共享服务器上

git push origin --tags 一次性推送很多标签


4、删除标签

git tag -d <tagname>  删除掉本地仓库上的标

注意上述命令并不会从任何远程仓库中移除这个标签，你必须用以下两个命令之一来更新你的远程仓库:
1）git push <remote> :refs/tags/<tagname>
2）git push origin --delete <tagname>


Git 别名
git config --global alias.<shortname> 命令

比如：
git config --global alias.ci commit

这意味着，当要输入git commit时，只需要输入git cii
