# CompressPicture
一个用来压缩项目中png图片的Swift脚本

#### 一、安装[ImageOptim](https://imageoptim.com/mac)
ImageOptim是用来压缩png的应用程序；
1、打开[ImageOptim](https://imageoptim.com/mac)，里面有个下载按钮，下载到本地；
2、解压ImageOptim.tbz2下载下来的文件，得到ImageOptim；
3、将ImageOptim放到“**应用程序**”中；
4、测试ImageOptim：打开ImageOptim，将一张png图片拖入ImageOptim中，ImageOptim将在原图上自动压缩；

#### 二、安装**[ImageOptim-CLI](https://github.com/JamieMason/ImageOptim-CLI)**命令行工具
通过[ImageOptim-CLI](https://github.com/JamieMason/ImageOptim-CLI)，ImageOptim能在命令行中被打开，我们的脚本也正是借助于[ImageOptim-CLI](https://github.com/JamieMason/ImageOptim-CL)来操调用ImageOptim的；
安装步骤：
1、浏览器打开https://codeload.github.com/JamieMason/ImageOptim-CLI/zip/1.14.8 ， 下载ImageOptim-CLI
2、解压ImageOptim-CLI-1.14.8.zip
3、将imageoptim-cli/bin添加到$PATH中
比如，您下载的目录如下：/Users/breeze/Downloads/ImageOptim-CLI-1.14.8/bin，则在~/bash_profile文件中，添加如下配置：
```
export PATH=$PATH:~/Downloads/ImageOptim-CLI-1.14.8/bin
```
4、测试ImageOptim-CLI： 
```
$ imageOptim --version
1.14.8
```
此时说明ImageOptim-CLI安装成功！
#### 三、下载此脚本
##### 四、执行脚本，压缩png
1、更改脚本的可执行为可执行：
```
$ chmod +x CompressPicture.swift
```
2、执行脚本
```
$ ./CompressPicture.swift  Your/Project/Path
```
执行时，在终端中将看到类似的压缩过程：
```
Running ImageOptim...
TOTAL was: 10.565kb now: 5.767kb saving: 4.798kb (45.00%)
Compress /Users/breeze/dev/ShouldWinCopy//GoldenCreditease/GoldenCreditease/Images.xcassets/fund/fund_list_buy_more.imageset/icon01-2.png:
Running ImageOptim...
TOTAL was: 7.207kb now: 3.629kb saving: 3.578kb (49.00%)
Compress /Users/breeze/dev/ShouldWinCopy//GoldenCreditease/GoldenCreditease/Images.xcassets/fund/fund_list_buy_more.imageset/icon01.png:
Running ImageOptim...
TOTAL was: 7.207kb now: 3.629kb saving: 3.578kb (49.00%)
Compress /Users/breeze/dev/ShouldWinCopy//GoldenCreditease/GoldenCreditease/Images.xcassets/fund/fund_myFund_header_background.imageset/我的基金背景-1.png:
```
