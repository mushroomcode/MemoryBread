## SCP命令

SCP是Secure Copy Protocol（安全拷贝协议）的缩写，是SSH（Secure Shell）协议的一部分，
用于在网络之间传输文件。其使用加密的方式在本地主机和远程主机之间复制文件。

-1：使用ssh协议版本1；  
-2：使用ssh协议版本2；  
-4：使用ipv4；  
-6：使用ipv6；  
-B：以批处理模式运行；  
-C：开启压缩传输；  
-F：指定ssh配置文件；  
-i：identity_file 从指定文件中读取传输时使用的密钥文件（例如亚马逊云pem），此参数直接传递给ssh；  
-l：指定宽带限制；  
-o：指定使用的ssh选项；  
-P：指定远程主机的端口号；  
-p：保留文件的最后修改时间，最后访问时间和权限模式；  
-q：不显示复制进度；  
-r：以递归方式复制。  

scp local_file remote_username@remote_ip:remote_folder

"""joyyue@joyyuedeMacBook-Pro ~ % scp /Users/joyyue/Downloads/docker-desktop-amd64.deb  root@47.115.204.11:/usr/local/bin/"""
