## 1. Synchronized 

实现线程同步, 多个线程排队获得某个资源，保证数据不会出错。

1. 修饰方法：  
（1）静态方法：锁定的是类本身（.class实例本身）。  
（2）非静态方法：调用者对象本身，对象本身是资源。

2. 修饰代码块：
（1）synchronized(this)：锁定的当前对象本身。
（2）synchronized(Obj.class)：锁定类.class的本身。
（3）synchronized(object)：锁定对象的实例。


