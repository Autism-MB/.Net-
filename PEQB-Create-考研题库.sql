USE [master]
GO
/****** Object:  Database [itcast]    Script Date: 2017/3/16 12:02:14 ******/
CREATE DATABASE [kaoyan]
 ON  PRIMARY 
( NAME = N'db_PEQB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kaoyan.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_PEQB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\kaoyan_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO


USE [kaoyan]
GO
/****** 科目 ******/
CREATE TABLE [dbo].[tb_subject](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[sname] [nvarchar](32) NOT NULL
 CONSTRAINT [PK_tb_subject] PRIMARY KEY([SID])
 )ON [PRIMARY]
GO


INSERT INTO tb_subject(sname)
          values('数一'),('英语一'),('政治'),('计算机学科专业基础'),('数学二'),('英语二'),('C语言'),('数据库'),('数据结构')
		  
GO

/****** Object: 试卷信息******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Paper](
	[paperID] [int] IDENTITY(1,1) NOT NULL,
	[papername] [nvarchar](50) NOT NULL,
	[SID] [int] NOT NULL,
	[schoolname] [nvarchar](32) NOT NULL,
	[testyear]  [varchar](4) NOT NULL
 CONSTRAINT [PK_tb_Paper] PRIMARY KEY CLUSTERED 
(
	[paperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

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
		  ('2017年全国硕士研究生入学统一考试政治',3,'全国硕士研究生招生考试联考','2017')
GO

/****** Object: 学员信息******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_student](
	[stuID][int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](16) NOT NULL,
	[pwd] [varchar](16) NOT NULL,
	[stuName] [nvarchar](50) NOT NULL,
	[shoolName] [nvarchar](32) NULL,	
	[birthday] [DateTime] NULL,
	[createdate] [DateTime] NULL,
	[Tel] [nchar](20) NULL,
	[email] [nchar](50) NULL,
	[Sex] [nvarchar](4) NULL
 CONSTRAINT [PK_tb_student] PRIMARY KEY CLUSTERED 
(
	[stuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO tb_student(userName,stuName,pwd,sex,birthday,shoolName,tel,email,createDate)
          values('KY0001','LiuWei','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		  ('KY10002','WenYong','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10003','YeHong','0','男','1999-01-01','东莞理工学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10004','XuKai','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10005','PengWei','0','男','1999-01-01','广东科技学院','13423456789','liuhongwei@qq.com','2022-09-01')
GO

/****** Object: 考点信息******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ExamCenter](
	[ECID] [int] IDENTITY(1,1) NOT NULL,
	[analysis] [nvarchar](128) NULL,
	[RefBook] [nvarchar](32) NULL,
	[page] [int] NULL
 CONSTRAINT [PK_tb_library] PRIMARY KEY CLUSTERED 
(
	[ECID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object: 试题信息******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_questions](
	[QID] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](128) NOT NULL,
	[type] [tinyint] NOT NULL,
	[options] [nvarchar](128) NULL,
	[paperID] [int] NOT NULL,	
	[score] [int] NOT NULL,
	[ECID] [int] NULL,
	[answer] [nvarchar](128) NULL
 CONSTRAINT [PK_bookinfo] PRIMARY KEY CLUSTERED 
(
	[QID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO tb_questions(content,paperID,score,type,options,answer)
          values('设 n 是描述问题规模的非负整数，下列程序段的时间复杂度是：x=0;\r while(n>=(x+1)*（x+1)) \r x=x+1;',1,2,1,'A. O(log n) B. O(n1/2) C. O(n) D. O(n2)','B')
GO


/****** Object:考试记录******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_testRecord](
    [stuID] [int] NOT NULL,
	[QID] [int]  NOT NULL,
	[myAnswer] [nvarchar](128) NULL,	
	[myScore] [int] NULL,	
	[testTime] [DateTime] NOT NULL,	
	[IsCorrect] [bit] NOT NULL default 0
 )ON [PRIMARY]
GO


select * from tb_student
 
