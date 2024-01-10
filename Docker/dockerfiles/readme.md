## DockerFile定义：

Dockerfile 是一种基于文本的配置文件，通过文本中的指令，构建docker image镜像信息。
Dockerfile 中每条指令都会构建分层文件中的一层Layer。

1. dockerfile 是文本型配置文件，用于声明构建自定义镜像(docker image)的指令，
基于某一个已有的基础镜像，通过docker build 命令构建新的 docker image。

