

1. 松散索引扫描（Loose Index Scan）
处理 GROUP BY 最有效的方法是使用索引直接检索分组列。（如：GROUP BY A1,A2，那就直接检索就行）,
通过这种访问方法，MySQL 使用了某些索引类型的键有序的属性（例如 BTREE）,无需要考虑到所有的WHERE条件中的检索列。

2. 紧凑索引扫描（Tigh Index Scan）
