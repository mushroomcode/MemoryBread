Java Agent：

Java Agent 能够在 Java 虚拟机（JVM）启动时加载，并且在主应用程序的类被加载之前执行一些代码。
这通常用于在运行时修改类、收集数据、监控应用程序等。

使用 MANIFEST.MF 构建步骤:

1. 使用 javac 命令进行编译：
javac -d classes src/*.java
（其中 classes 是指的文件的路径）

2. 使用jar 命令进行构建：
jar cvfm your-agent.jar manifest.mf -C classes/ .

cvfm 命令解释：
-c 表示创建新的归档文件。
-v 表示在输出中生成详细信息。
-m 表示包含指定的清单文件（Manifest）。
-f 表示指定输出的 JAR 文件名。

3. 在需要添加 Java Agent 的启动参数（VM）中添加相应的参数：
-javaagent:{your-agent.jar 的路径}=option1=value1


-javaagent:/Users/joyyue/IdeaProjects/dragonball-starter/src/agent/myagent.jar=option1=value1
