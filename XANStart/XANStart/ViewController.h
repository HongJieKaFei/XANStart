//
//  ViewController.h
//  XANStart
//
//  Created by XAN on 2019/10/15.
//  Copyright © 2019 谢安宁. All rights reserved.
/*
 Git学习网站: https://www.liaoxuefeng.com/wiki/896043488029600
 Git是分布式版本控制系统
 
 1、一天的开始 先git pull  将项目更新到本地
 2、代码写完之后，git push origin <branch-name>推送自己的修改
 3、如果推送失败，可能远程分支有人提交了，需要先用git pull试图合并；
 4、如果合并有冲突，则解决冲突，并在本地提交；
 5、没有冲突或者解决掉冲突后，再用git push origin <branch-name>推送就能成功！
 如果git pull提示no tracking information，则说明本地分支和远程分支的链接关系没有创建，用命令git branch --set-upstream-to <branch-name> origin/<branch-name>。
 
 Git多人协助开发流程:
 1.生成一对ssh秘钥
 
 
 
 
 Git的使用:
 1.创建名为learngit的文件夹
    mkdir learngit
 2.进入文件夹
    cd learngit
 3.查看某文件夹下的所有目录
    ls
 4.显示该文件夹所在的目录
    pwd
 5.初始化git仓库,把文件夹变成Git可以管理的仓库
    git init
 6.把文件添加到git仓库
    git add readme.txt
 7.把文件提交到仓库并写明本次提交的说明
    git commit -m "添加了一个readme.txt文件"
 8.查看仓库当前的状态,那些修改了，那些还没有提交
    git status
 9.查看修改的内容
    git diff
 10.显示从最近到最远的提交日志历史以及所有版本
    git log
 11.回退到上一个版本
    git reset --hard HEAD^
    git reset --hard HEAD~100 回退到前100个版本
 12.回退到某一个版本去 xxx为commit 0155b977ee5bebb759d7b9b239e7c57c76f33a38 的前几位即可
    git reset --hard xxxxx
 13.查看所有的命令历史的记录
    git reflog
 14.工作区:
    就是你在电脑里能看到的目录，比如我的learngit文件夹就是一个工作区
 15.版本库（仓库）
    工作区有一个隐藏目录.git，这个不算工作区，而是Git的版本库
    这个库存的东西:
    15.1暂存区(stage)
    15.2第一个分支master
    15.3指向master的指针HEAD
    git add 把文件添加进去，实际上就是把文件修改添加到暂存区
    git commit 提交更改，实际上就是把暂存区的所有内容提交到当前分支
 16.git commit 只负责把暂存区的修改提交,每次修改，如果不用git add到暂存区，那就不会加入到commit中。
 17.工作区删除文件
    rm test.rtf
 18.版本库删除文件
    git rm test.rtf
    git commit -m "删除了一个test.rtf文件"
 19.工作区删除，版本库里文件还存在，从版本库里取出文件
    git checkout --test.rtf
 20.远程仓库:GitHub仓库就是一个现有的远程仓库
    你的本地Git仓库和GitHub仓库之间的传输是通过SSH加密的，所以，需要一点设置：
 21.创建SSH Key,打开终端
    ssh-keygen -t rsa -C "15003876305@163.com"
    mac/.ssh文件目录下有id_rsa和id_rsa.pub两个文件
    id_rsa是私钥，不能泄露出去，id_rsa.pub是公钥，可以放心地告诉任何人
    登陆GitHub，打开“Account settings”，“SSH Keys”页面：
    然后，点“Add SSH Key”，填上任意Title，在Key文本框里粘贴id_rsa.pub文件的内容：
    如果想多个人或者多台电脑开发往远程仓库传代码，就需要将每台电脑的公钥id_rsa.pub文件的内容全都添加到key中去
 22.本地仓库关联远程仓库:
    git remote add origin https://github.com/AnNingXie/LearnGit.git
    关联的时候如果出现错误:fatal: remote origin already exists.
    执行:git remote rm origin 先remove掉添加在远程的origin
    再执行 git remote -v,如果没有origin了,就再次关联执行关联代码
 23.第一次推送master分支的所有内容
    git push -u origin master
    加上了-u参数，Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的
    master分支关联起来，在以后的推送或者拉取时就可以简化命令
 24.此后，每次本地提交后,把本地master分支的最新修改推送至GitHub
    git push origin master
 25.将远程仓库克隆到本地仓库
    git clone https://github.com/AnNingXie/LearnGitDemo.git
 26.创建并切换到dev分支
    git checkout -b dev
 27.切换到dev分支
    git checkout dev
 28.创建dev分支
    git branch dev
 29.查看所有分支以及当前分支
    git branch
     * dev
     master
    当前分支前面会标一个*号
 30.删除dev分支
    git branch -d dev

 
 
 
 
 
 
 
 
 
 
 1.克隆完整项目主线master分支到本地
 git clone https://github.com/HongJieKaFei/XANStart.git
 
 
 
 
 */
