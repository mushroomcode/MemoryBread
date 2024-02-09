FROM : 指定基础镜像   
MAINTAINER : 维护者的信息   
COPY : 从宿主机上copy一个文件到镜像模版中   
ADD : 添加一个URL地址（下载文件）   
ENTRYPOINT ：启动容器的时候，执行的命令，
            比如 jar -xxx 指令之类的, ["java","-jar","TcpBeseBuild-1.0-SNAPSHOT.jar"]
            
WORKDIR ：指定工作目录 /opt ：例如，WORKDIR /opt，工作目录为 opt。

RUN命令：RUN可以覆盖CMD命令，构建时的命令。
CMD命令：定义启动时运行命令。

