# Hacktonish

Hacktonish--原本是因为记错单词了，不过和hackintosh也挺相似，姑且就不改了，这样也挺好的.

# macOS使用
[官方使用指南](https://help.apple.com/macOS/high-sierra/mac-basics/?lang=zh-cn#/outro)

## Related Forum
- [远景](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1753483&page=1#pid47417983)
- [tonymacx86](https://www.tonymacx86.com/)
- [Kexts](http://www.insanelymac.com/forum/files/category/2-kexts/)
- [威锋](https://bbs.feng.com/thread-htm-fid-102.html)
- [bitbucket](https://bitbucket.org/RehabMan/os-x-fake-pci-id)
- [itmanbu](https://www.itmanbu.com/appleacpiplatform.html)
- [daliansky](https://blog.daliansky.net/ "黑果小兵")
- [黑苹果的折腾时光](https://www.jianshu.com/p/bd57a9324f08)

## Installation

- 前情提要
    - 15年的时候装过一次黑苹果，遗憾于当时没能坚持，故只进入了苹果系统后便放弃折腾了，从那以后，几乎完全使用Linux了。当时折腾的版本是10.9.5.
    - 大概是在一周前，看微信公众号的时候，注意到有个安全研究人员用着联想的黑苹果，一下子又勾起了我的欲望。此时，电脑仅有Linux系统，故起了折腾的念头。
    - 自己也是学计算机的，想想折腾个黑苹果也还是有必要的，所以2月6日晚开始折腾。


- 安装过程
    - [电脑配置](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pcinfo.txt)
    - 材料准备
        - 笔记本（最好是windows系统，方便操作，我使用的是win-to-go），U盘
        - 系统镜像，看清楚你的是原版还是经过修改的，修改的有的会自带四叶草等
        - 相关软件
            - diskgeniu
            - transmac

    - 具体步骤
        - [制作启动盘](http://bbs.pcbeta.com/viewthread-1764286-1-5.html)，具体步骤在链接中也很详细，需要注意的是新建分区后，先别急着保存，直接管理员权限运行transmac进行restore即可，否则会出现没有权限之类的错误。
        - 开机重启，设置相应的bios模式，我这里是四叶草gpt安装，我的电脑需要设置为dual boot模式。此时会进入代码刷屏界面，根据不同的错误进行爬贴排错（这里的排错可以是更换相应的参数，config.plist配置文件）。如果直接进入苹果的界面，那么恭喜你可以进行下一步安装了。
        - 初始安装,进入系统后使用磁盘工具进行抹盘操作，*注意备份数据*。由于我的笔记本上的硬盘只剩一块128G的SSD了，故我将64G的U盘当作系统盘抹掉了，也就说，我的系统在U盘里，没什么大的问题，就是安装速度会很慢。期间会进行多次重启，耐心等待即可。
        - 系统安装，这一步的安装是基于上一步的，这里需要你设置相应的偏好，调整即可，问题不大，不出意外，不一会儿你便可以正式进入苹果系统了。系统的成熟度和流畅度依赖于你的电脑及你的配置文件，有的可能遇到花屏、卡顿等现象，不要着急，也不用担心，慢慢调整驱动，利用注入、hotpatch等进行调整优化和完善，慢慢的你会得到一个可以日常使用的、流畅的系统的。
        - 脱离U盘启动系统，直接挂载系统盘和u盘相应的EFI分区，将u盘EFI文件夹复制到系统盘中即可。

- 系统图赏
![1](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.44.16.png)
![2](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.46.19.png)
![3](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.46.33.png)
![4](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.48.24.png)
![5](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.48.52.png)
![6](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.49.57.png)
![7](https://github.com/i0Ek3/Funny-ianpasm/blob/master/hacktonish/pic/屏幕快照%202018-02-08%2011.54.32.png)



- 鸣谢
    - [谷谷科技](http://i.pcbeta.com/space-uid-4642498.html) 因为安装过程中直接使用了@谷谷科技提供的EFI文件，故也谈不上什么探索，更大的功劳归属于ta。
    - [黑果小兵](https://daliansky.github.io) 安装过程是参考@黑果小兵的博客记录进行的，也学习了很多其他的知识,感谢提供优质博客。博客中说博主69年生，那这样看来的话，真的是太厉害了！
    - [1296283984](http://bbs.pcbeta.com/viewthread-1764286-1-5.html) U盘启动盘是按照这位楼主的帖子进行的，不过制作的时候好像有些出入，新建分区后如果保存了，下一步将无法进行，故新建分区后直接Restore dmg即可。
    - 广大远景论坛的网友


- 后记
    - 继续完善和优化系统
        - 目前wifi,电池电量显示，蓝牙不可正常工作，其他均正常
        - siri也可用

    - 由于直接使用了网友的EFI，故接下来需要自己研究一番
    
    - 配置Mac开发环境，软件，日常使用
        - iterm2
        - zsh
        - vimplus
        - tmux

    - 另，系统是装在U盘里的，故接下来会迁移系统到ssd上


- 下载提供
    - [baiduPCS_Go](https://github.com/iikira/BaiduPCS-Go/releases) 下载速度很快的命令行版本的百度云，我用来下载dmg镜像文件
    - EFI 链接:https://pan.baidu.com/s/1gg84hMV  密码:ieij
    - macOS dmg 链接:https://pan.baidu.com/s/1eSToGuQ  密码:fqz5
    - 制作U盘启动所需材料 链接:https://pan.baidu.com/s/1dGJx8pr  密码:vvl8


## 优化与完善

- [hotpatch](https://blog.daliansky.net/hotpatch-detailed-solution.html)
- [DSDT/SSDT补丁](http://blog.csdn.net/wr132/article/details/54798754)
- [DSDT/SSDT综合教程](http://blog.csdn.net/wangmj518/article/details/50748681)
- [电池补丁制作](http://bbs.pcbeta.com/viewthread-1521462-1-1.html)
- [提取DSDT/SSDT](http://bbs.pcbeta.com/viewthread-1571455-1-1.html)
- [联合编译](http://bbs.pcbeta.com/viewthread-1475332-1-1.html)
- []()
- []()


## Records
>2018<br>
>02-06:第二次开坑黑苹果。晚上，信息收集，准备[制作U盘启动盘](http://bbs.pcbeta.com/viewthread-1764286-1-5.html)。<br>
>02-07:黑果无果，不过解决了家里电脑连网线的问题。继续hacktonishing...<br>
>02-08:昨晚10点的时候，黑果成功。一直在折腾来着，今天写篇教程记录下，后续再进行完善和优化。<br>
>02-09:重新做了macOS到HHD上，作为测试，准备在其上进行hotpatch或者ssdt/dsdt.另，直接将4409的EFI拷贝到U盘中可以正常启动系统，初始系统和u盘里的并无二异。<br> 

