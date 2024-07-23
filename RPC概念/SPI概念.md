### Java SPI机制

## Java Service Provider Interface（java 服务提供接口）

机制是一种为某个接口寻找服务实现的机制。
它的工作原理是：当服务的提供者提供了服务接口的一种实现后，在jar包的META-INF/services目录下创建一个文件，  
文件名是服务接口的全限定名，文件内容是实现类的全限定名，在运行时，服务加载器可以加载这些文件并实例化这些类。  

SPI由3个部分组成：
Service：服务接口/抽象类。  
Service Provider：实现接口的逻辑，提供具体的服务。  
Service Loader：在"运行时"发现并加载Service Provider（是 runtime，runtime，runtime）。  

                                 | --> 实现类 A  
调用方 --> 调用 --> 标准服务接口 --> | --> 实现类 B  
                             
面向的对象的设计里，我们一般推荐模块之间基于接口编程，模块之间不对实现类进行硬编码，  
一旦代码里涉及具体的实现类，就违反了可插拔的原则，如果需要替换一种实现，就需要修改代码。

应用场景：
JDBC加载不同类型的数据库驱动，java提供统一接口java.sql.Driver给数据库供应商业，mysql、oracle等数据库厂商可以实现自身的数据库驱动接入模式。
在使用时候，引入Service+ServiceProvider，通过使用ServiceLoader或者classLoader读取MATE-INF/services里面实现接口类的实体类。

