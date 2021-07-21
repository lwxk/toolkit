alter table T drop index k;
alter table T add index(k);


CREATE TABLE `geek` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  PRIMARY KEY (`a`,`b`),
  KEY `c` (`c`),
  KEY `ca` (`c`,`a`),
  KEY `cb` (`c`,`b`)
) ENGINE=InnoDB;

公司的同事告诉他说，由于历史原因，这个表需要 a、b 做联合主键，这个小吕理解了。
但是，学过本章内容的小吕又纳闷了，既然主键包含了 a、b 这两个字段，那意味着单独在字段 c 上创建一个索引，就已经包含了三个字段了呀，为什么要创建“ca”“cb”这两个索引？同事告诉他，是因为他们的业务里面有这样的两种语句：

select * from geek where c=N order by a limit 1;
select * from geek where c=N order by b limit 1;

为了这两个查询模式，这两个索引是否都是必须的？为什么呢？
公司的同事告诉他说，由于历史原因，这个表需要 a、b 做联合主键，这个小吕理解了。
但是，学过本章内容的小吕又纳闷了，既然主键包含了 a、b 这两个字段，那意味着单独在字段 c 上创建一个索引，就已经包含了三个字段了呀，为什么要创建“ca”“cb”这两个索引？同事告诉他，是因为他们的业务里面有这样的两种语句：

select * from geek where c=N order by a limit 1;
select * from geek where c=N order by b limit 1;

为了这两个查询模式，这两个索引是否都是必须的？为什么呢？

