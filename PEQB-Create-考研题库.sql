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
/****** ��Ŀ ******/
CREATE TABLE [dbo].[tb_subject](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[sname] [nvarchar](32) NOT NULL
 CONSTRAINT [PK_tb_subject] PRIMARY KEY([SID])
 )ON [PRIMARY]
GO


INSERT INTO tb_subject(sname)
          values('��һ'),('Ӣ��һ'),('����'),('�����ѧ��רҵ����'),('��ѧ��'),('Ӣ���'),('C����'),('���ݿ�'),('���ݽṹ')
		  
GO

/****** Object: �Ծ���Ϣ******/
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
          values('2019������ѧ��רҵ�����ۺ�����',4,'ȫ��˶ʿ�о���������������','2019'),
		  ('2018������ѧ��רҵ�����ۺ�����',4,'ȫ��˶ʿ�о���������������','2018'),
		  ('2017������ѧ��רҵ�����ۺ�����',4,'ȫ��˶ʿ�о���������������','2017'),
		  ('2016������ѧ��רҵ�����ۺ�����',4,'ȫ��˶ʿ�о���������������','2016'),
		  ('2022��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2022'),
		  ('2021��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2021'),
		  ('2020��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2020'),
		  ('2019��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2019'),
		  ('2017��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2017'),
		  ('2016��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2016'),
		  ('2015��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2015'),
		  ('2014��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2014'),
		  ('2013��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2013'),
		  ('2012��ȫ��˶ʿ�о�����ѧͳһ������һ',1,'ȫ��˶ʿ�о���������������','2012'),
		  ('2022��ȫ��˶ʿ�о�����ѧͳһ����Ӣ��һ',2,'ȫ��˶ʿ�о���������������','2022'),
		  ('2021��ȫ��˶ʿ�о�����ѧͳһ����Ӣ��һ',2,'ȫ��˶ʿ�о���������������','2021'),
		  ('2020��ȫ��˶ʿ�о�����ѧͳһ����Ӣ��һ',2,'ȫ��˶ʿ�о���������������','2020'),
		  ('2019��ȫ��˶ʿ�о�����ѧͳһ����Ӣ��һ',2,'ȫ��˶ʿ�о���������������','2019'),
		  ('2018��ȫ��˶ʿ�о�����ѧͳһ����Ӣ��һ',2,'ȫ��˶ʿ�о���������������','2018'),
		  ('2017��ȫ��˶ʿ�о�����ѧͳһ����Ӣ��һ',2,'ȫ��˶ʿ�о���������������','2017'),
		  ('2022��ȫ��˶ʿ�о�����ѧͳһ��������',3,'ȫ��˶ʿ�о���������������','2022'),
		  ('2021��ȫ��˶ʿ�о�����ѧͳһ��������',3,'ȫ��˶ʿ�о���������������','2021'),
		  ('2020��ȫ��˶ʿ�о�����ѧͳһ��������',3,'ȫ��˶ʿ�о���������������','2020'),
		  ('2019��ȫ��˶ʿ�о�����ѧͳһ��������',3,'ȫ��˶ʿ�о���������������','2019'),
		  ('2018��ȫ��˶ʿ�о�����ѧͳһ��������',3,'ȫ��˶ʿ�о���������������','2018'),
		  ('2017��ȫ��˶ʿ�о�����ѧͳһ��������',3,'ȫ��˶ʿ�о���������������','2017')
GO

/****** Object: ѧԱ��Ϣ******/
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
          values('KY0001','LiuWei','0','��','1999-01-01','�㶫�Ƽ�ѧԺ','13423456789','liuhongwei@qq.com','2022-09-01'),
		  ('KY10002','WenYong','0','��','1999-01-01','�㶫�Ƽ�ѧԺ','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10003','YeHong','0','��','1999-01-01','��ݸ��ѧԺ','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10004','XuKai','0','��','1999-01-01','�㶫�Ƽ�ѧԺ','13423456789','liuhongwei@qq.com','2022-09-01'),
		   ('KY10005','PengWei','0','��','1999-01-01','�㶫�Ƽ�ѧԺ','13423456789','liuhongwei@qq.com','2022-09-01')
GO

/****** Object: ������Ϣ******/
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


/****** Object: ������Ϣ******/
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
          values('�� n �����������ģ�ķǸ����������г���ε�ʱ�临�Ӷ��ǣ�x=0;\r while(n>=(x+1)*��x+1)) \r x=x+1;',1,2,1,'A. O(log n) B. O(n1/2) C. O(n) D. O(n2)','B')
GO


/****** Object:���Լ�¼******/
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
 
