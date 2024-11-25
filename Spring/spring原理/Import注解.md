# @Import注解

## Import注解使用
1. @Import注解的value为class类本身的实例对象
通过在注解中声明某个类的.class对象将其本身注入到spring容器中，
其中，beanName默认为全限定类名。

2. 而@Bean注入时，为@Bean修改的方法的方法名称。详细可以参考《如何对数据库密码进行加密.md》中的步骤。

## ImportSelector使用
1. ImportSelector 接口，可以选择需要加载到IOC容器中的Bean类，在使用时候，实现selectImports方法，  
里面有String[]数组返回类的全限定名称相对路径。
2. 使用 @Import 注解引入到Config，从而注入到IOC容器中。


