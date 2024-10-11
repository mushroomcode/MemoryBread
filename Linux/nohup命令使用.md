# nohup命令使用：

## 1. 基本格式：  
> nohup command [arguments] > output.log 2>&1 &  
>
(1) \> output.log: 将标准输出重定向到 output.log 文件中。  
(2) 2 \>&1：将标准错误输出也重定向到 output.log 文件中。  
(3) &：将命令放到后台执行。  
(4) command：要运行的命令, arguments：传递给命令的参数。

## 2. springboot启动命令：
