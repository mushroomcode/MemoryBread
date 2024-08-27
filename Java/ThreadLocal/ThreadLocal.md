ThreadLocal ：本地线程对象
为线程公共资源提供线程隔离，每个线程存储一份副本，仅能被当前现程所读取，使得变量在线程中是线程安全的，
典型的应用为 requestSession 。

每个ThreadLocal内部都有静态class内部类ThreadLocalMap，
ThreadLocalMap在每个Thread中存在有且仅有一个实例。用于维护该线程的ThreadLocal变量。


1.为什么ThreadLocalMap中对于ThreadLocal对象的引用为弱引用：
解析：ThreadLocal 对象实例被两个地方有引用：
（1）应用代码中 ThreadLocal 对象引用 A1（如 ThreadLocal t1 = xxx）；
（2）ThreadLocalMap 中key值的引用 A2 。ThreadLocalMap 的key为ThreadLocal；
假如 ThreadLocalMap 中对于 ThreadLocal为强引用，则当用户将 ThreadLocal t1 = null 时候，
ThreadLocalMap中的引用 A2 还是会存一个强引用，此时，通过 t1 引用无法找到实例内存地址，
造成内存泄露。因此，使用弱引用时可以防止 ThreadLocal 对象内存泄漏。

2.为什么使用ThreadLocal在清理对象时候要使用 remove()：
由于ThreadLocalMap 中，key 为ThreadLocal对象，value为线程隔离对象本身，因此，当Key为空时，
无法找到 value 对象本身，因此在清理ThreadLocal对象时，value需要提前被清理，使用remove() 
或set 为null均可以避免内存泄漏。




