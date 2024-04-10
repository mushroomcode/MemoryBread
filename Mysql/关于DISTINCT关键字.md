## DISTINCT关键字

作用：用于对显示列进行去重操作。  
原理：
基于5.7.22的解析:
DISTINCT 会对MYSQL返回的结果集进行去重操作，执行计划中会显示，使用到临时表（Using temporary），
DISTINCT 会使用临时表进行去重操作。

若使用到 Using temporary，则有以下几种情况：
1. 数据库 internal_tmp_disk_storage_engine定义了临时表存储引擎，  
当引擎为 MEMORY 时，则会直接使用内存创建临时表，若表大小大于 
tmp_table_size 或者 max_heap_table_size 中较小的值时，会直接存到磁盘中，

2. 当引擎为 Innodb或MyISAM 时，则会直接存储到磁盘空间中。

