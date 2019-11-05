# 学生考试系统


#### 项目介绍
学生考试系统。采用稳定的MVC框架开发，tp5.0+vue 前后端分离，执行效率、扩展性、稳定性值得信赖。


- 联系方式QQ：2352282123
- 安卓app安装包：https://pan.baidu.com/s/1BR7PCcoR_1d3qsHjrowxJA 



#### 环境要求
- Nginx/Apache/IIS
- PHP5.4+
- MySQL5.1+

建议使用环境：Linux + Nginx1.14 + PHP7 + MySQL5.6

#### 环境配置
1.修改数据库配置     文件路径：/application/database.php  

2.项目入口目录：/public  服务器虚拟主机www运行目录指向public

3.本地配置host 127.0.0.1 你的域名

#### ==友情提示==
- 引入了扩展类获取定位ip地址。
- 文件路径在\thinkphp\library\think\ipLocation
- 注意qqwry.dat如需==获取最新ip地址信息==， 需在==纯真数据库==官网下载最新数据库文件然后覆盖==qqwry.dat==即可。
- 若上传文件大小受到限制需要将php.ini，设置upload_max_filesize = 50M     注：50为大小单位M
- 若后台清理缓存文件失败需要将编辑php.ini查找 disable_functions，将等号后面的 exec system shell_exec 去掉即可。

#### 服务器搭建安装配置
- 详细教程在项目doc文件下的word文档。

#### 安全&缺陷
如果你发现了一个安全漏洞，请发送邮件到 2352282123@qq.com。所有的安全漏洞都将及时得到解决。
