FactoryBean是一种用于创建特殊类型Bean的工厂Bean类，
（类似 @Bean，@Bean 可以平替）

作用：
1.动态创建某一种指定的类，创建后会加入到 IOC容器的 FactoryBeanObjectCache 里面。
2.AOP使用较多，如 ProxyFactoryBean，
（ProxyFactoryBean 其同时还实现了InInitializingBean）。

使用：
1. 通过 getObject 和 getObjectType，分别获取 Bean 实例和 Bean 的类型。
2. 此外还可以使用 isSingleton 去设置创建出来的指定类型的 bean 是否为单例。


对于 BeanFactory,官方解析已经很清晰，就是通过BeanFactory接口访问spring bean container的接口。
