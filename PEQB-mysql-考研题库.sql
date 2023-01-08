create database db_PEQB DEFAULT CHARACTER SET gb2312 DEFAULT COLLATE gb2312_chinese_ci;
##CHARACTER SET是指字符集,而COLLATE是指校对集(可以理解为排序规则)
USE  db_PEQB;
/****** 科目 ******/
CREATE TABLE tb_subject(
	SID int auto_increment NOT NULL,
	sname nvarchar(32) NOT NULL,
 CONSTRAINT  PK_tb_subject  PRIMARY KEY(SID)
 );

INSERT INTO tb_subject(sname)
          values('数一'),('英语一'),('政治'),('计算机学科专业基础'),('数学二'),('英语二'),('C语言'),('数据库'),('数据结构');

/****** Object: 试卷信息******/
CREATE TABLE tb_Paper(
	paperID int auto_increment NOT NULL,
	papername nvarchar(50) NOT NULL,
	SID int NOT NULL,
	schoolname nvarchar(32) NOT NULL,
	testyear  varchar(4) NOT NULL,
 CONSTRAINT PK_tb_Paper PRIMARY KEY(paperID)
 );

INSERT INTO tb_Paper(papername,SID,schoolname,testyear)
          values('2019年计算机学科专业基础综合试题',4,'全国硕士研究生招生考试联考','2019'),
		  ('2018年计算机学科专业基础综合试题',4,'全国硕士研究生招生考试联考','2018'),
		  ('2017年计算机学科专业基础综合试题',4,'全国硕士研究生招生考试联考','2017'),
		  ('2016年计算机学科专业基础综合试题',4,'全国硕士研究生招生考试联考','2016'),
		  ('2022年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2022'),
		  ('2021年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2021'),
		  ('2020年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2020'),
		  ('2019年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2019'),
		  ('2017年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2017'),
		  ('2016年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2016'),
		  ('2015年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2015'),
		  ('2014年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2014'),
		  ('2013年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2013'),
		  ('2012年全国硕士研究生入学统一考试数一',1,'全国硕士研究生招生考试联考','2012'),
		  ('2022年全国硕士研究生入学统一考试英语一',2,'全国硕士研究生招生考试联考','2022'),
		  ('2021年全国硕士研究生入学统一考试英语一',2,'全国硕士研究生招生考试联考','2021'),
		  ('2020年全国硕士研究生入学统一考试英语一',2,'全国硕士研究生招生考试联考','2020'),
		  ('2019年全国硕士研究生入学统一考试英语一',2,'全国硕士研究生招生考试联考','2019'),
		  ('2018年全国硕士研究生入学统一考试英语一',2,'全国硕士研究生招生考试联考','2018'),
		  ('2017年全国硕士研究生入学统一考试英语一',2,'全国硕士研究生招生考试联考','2017'),
		  ('2022年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2022'),
		  ('2021年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2021'),
		  ('2020年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2020'),
		  ('2019年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2019'),
		  ('2018年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2018'),
		  ('2017年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2017');

/****** Object: 学员信息******/
CREATE TABLE  tb_student(
	stuID int auto_increment NOT NULL,
	userName varchar(16) NOT NULL,
	pwd varchar(16) NOT NULL,
	stuName nvarchar(50) NOT NULL,
	shoolName nvarchar(32) NULL,	
	birthday DateTime NULL,
	createdate DateTime NULL,
	Tel nchar(20) NULL,
	email nchar(50) NULL,
	Sex nvarchar(4) NULL,
 CONSTRAINT PK_tb_student PRIMARY KEY(stuID)
 );

INSERT INTO tb_student(userName,stuName,pwd,sex,birthday,shoolName,tel,email,createDate)
          values('KY0001','LiuWei','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		  ('KY10002','WenYong','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10003','YeHong','0','男','1999-01-01','东莞理工学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10004','XuKai','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10005','PengWei','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01');

/****** Object: 考点信息******/
CREATE TABLE tb_ExamCenter(
	ECID int auto_increment NOT NULL,
	analysis varchar(128) NULL,
	RefBook varchar(32) NULL,
	page int NULL,
 CONSTRAINT PK_tb_library PRIMARY KEY(ECID));


/****** Object: 试题信息******/
CREATE TABLE tb_questions(
	QID int auto_increment NOT NULL,
	content varchar(128) NOT NULL,
	qtype tinyint NOT NULL,
	qoptions varchar(128) NULL,
	paperID int NOT NULL,	
	score int NOT NULL,
	ECID int NULL,
	answer varchar(128) NULL,
 CONSTRAINT PK_bookinfo PRIMARY KEY(QID)
 );

INSERT INTO tb_questions(content,paperID,score,qtype,qoptions,answer)
          values('设 n 是描述问题规模的非负整数，下列程序段的时间复杂度是：x=0;\r while(n>=(x+1)*（x+1)) \r x=x+1;',1,2,1,'A. O(log n) B. O(n1/2) C. O(n) D. O(n2)','B');

/****** Object:考试记录******/
CREATE TABLE  tb_testRecord(
    stuID int NOT NULL,
	QID int  NOT NULL,
	myAnswer varchar(128) NULL,	
	myScore int NULL,	
	testTime DateTime NOT NULL,	
	IsCorrect bit NOT NULL default 0
 );

alter table tb_Paper
add constraint f_paper_sid foreign key(SID) references tb_subject(SID);

alter table tb_questions
add constraint f_questions_paperID foreign key(paperID) references tb_Paper(paperID);

alter table tb_questions
add constraint f_questions_ECID foreign key(ECID) references tb_ExamCenter(ECID);


alter table tb_testRecord
add constraint f_testRecord_QID foreign key(QID) references tb_questions(QID);

alter table tb_testRecord
add constraint f_testRecord_StuID foreign key(stuID) references tb_student(stuID);

select * from tb_student;
select * from tb_questions;


 
