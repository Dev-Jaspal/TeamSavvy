-- Author Name: Jaspal Singh
-- Database Name: TeamSavvy
-- Created On:  10/18/2022
-- Script Version 1.0


USE [master]
GO

CREATE DATABASE [TeamSavvy]
GO

USE [TeamSavvy]
GO

/****** Object:  Table [dbo].[Address]    Script Date: 10/18/2022 10:47:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Address_ID] [int] IDENTITY(1,1) NOT NULL,
	[APARTMENT] [varchar](20) NOT NULL,
	[CITY_ID] [int] NOT NULL,
	[POSTCODE] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[City]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CITY_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROVINCE_ID] [int] NOT NULL,
	[CITY_NAME] [varchar](max) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[COUNTRY_ID] [int] IDENTITY(1,1) NOT NULL,
	[COUNTRY_NAME] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dashboard]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dashboard](
	[DASHBOARD_ID] [int] NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[CREATED_BY] [nchar](10) NOT NULL,
	[CREATED_ON] [date] NOT NULL,
	[IS_DELETED] [tinyint] NOT NULL,
	[CREATED_BY_ID] [int] NOT NULL,
 CONSTRAINT [PK_Dashboard] PRIMARY KEY CLUSTERED 
(
	[DASHBOARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DEPARTMENT_ID] [int] NOT NULL,
	[DEPARTMENT_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DEPARTMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EMPLOYEE_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_FIRSTNAME] [nchar](20) NOT NULL,
	[EMPLOYEE_LASTNAME] [nchar](20) NOT NULL,
	[DATEOFBIRTH] [date] NOT NULL,
	[HIREDATE] [date] NULL,
	[PHONE] [varchar](15) NOT NULL,
	[EMAIL] [varchar](max) NOT NULL,
	[ADDRESS_ID] [int] NOT NULL,
	[EXTENSION] [int] NOT NULL,
	[DEPARTMENT_ID] [int] NOT NULL,
	[ROLE_ID] [int] NOT NULL,
	[STATUS_ID] [int] NOT NULL,
	[BANKACCOUNT] [varchar](50) NULL,
	[JOB_LOCATION_ID] [int] NOT NULL,
	[EMPLOYEE_IMAGE] [varbinary](max) NULL,
	[PASSWORD] [varchar](max) NULL,
 CONSTRAINT [PK_Employee_1] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Leave]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Leave](
	[EMPLOYEE_LEAVE_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[LEAVE_TYPE_ID] [int] NOT NULL,
	[LEAVE_START] [date] NOT NULL,
	[LEAVE_ENDS] [date] NOT NULL,
	[LEAVE_DAYS] [int] NULL,
	[IS_APPROVED] [bit] NOT NULL,
	[LEAVE_APPROVAL_DATE] [date] NULL,
	[LEAVE_APPROVAL_BY] [varchar](max) NULL,
	[LEAVE_STATUS] [varchar](50) NULL,
 CONSTRAINT [PK_Employee_Leave] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_LEAVE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Project]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Project](
	[EMPLOYEE_PROJECT_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[STATUS] [bit] NOT NULL,
 CONSTRAINT [PK_Employee_Project] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_PROJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Skill]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Skill](
	[EMPLOYEE_SKILL_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[SKILL_ID] [int] NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
 CONSTRAINT [PK_Employee_Skill] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_SKILL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JOB_ID] [int] IDENTITY(1,1) NOT NULL,
	[JOB_CATEGORY_ID] [int] NOT NULL,
	[JOB_LOCATION_ID] [int] NOT NULL,
	[DEPARTMENT_ID] [int] NOT NULL,
	[JOB_POSITION] [varchar](50) NOT NULL,
	[JOB_SALARY] [int] NOT NULL,
	[JOB_DESC] [varchar](max) NOT NULL,
	[QUALIFICATION] [varchar](max) NOT NULL,
	[CREATED_ON] [date] NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JOB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_Applied]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Applied](
	[JOB_APPLIED_ID] [int] NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[JOB_ID] [int] NOT NULL,
	[APPLIED_ON] [date] NOT NULL,
 CONSTRAINT [PK_JOB_APPLIED] PRIMARY KEY CLUSTERED 
(
	[JOB_APPLIED_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_Category]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Category](
	[JOB_CATEGORY_ID] [int] IDENTITY(1,1) NOT NULL,
	[JOB_CATEGORY_NAME] [varchar](50) NOT NULL,
	[JOB_CATEGORY_VALUE] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Job_Category] PRIMARY KEY CLUSTERED 
(
	[JOB_CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_Location]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Location](
	[JOB_LOCATION_ID] [int] IDENTITY(1,1) NOT NULL,
	[LOCATION] [varchar](max) NOT NULL,
	[POSTCODE] [varchar](50) NOT NULL,
	[CITY_ID] [int] NOT NULL,
 CONSTRAINT [PK_Job_Location] PRIMARY KEY CLUSTERED 
(
	[JOB_LOCATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave](
	[LEAVE_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[LEAVE_TYPE] [varchar](50) NULL,
 CONSTRAINT [PK_Leave] PRIMARY KEY CLUSTERED 
(
	[LEAVE_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll](
	[PAYROLL_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[SALARY_ID] [int] NOT NULL,
	[PAY_DATE] [date] NOT NULL,
	[PAY_TYPE] [varchar](20) NULL,
	[TOTAL_HOURS] [int] NULL,
	[EARNING] [varchar](50) NULL,
	[NETPAY] [varchar](50) NULL,
	[PAY_YTD] [varchar](50) NULL,
	[PAY_VACATION] [varchar](50) NULL,
	[PAY_SICK] [varchar](50) NULL,
	[DEDUCTION] [varchar](50) NULL,
 CONSTRAINT [PK_Payroll] PRIMARY KEY CLUSTERED 
(
	[PAYROLL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNQ_Payroll] UNIQUE NONCLUSTERED 
(
	[PAY_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[PROJECT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_NAME] [varchar](max) NOT NULL,
	[PROJECT_START_DATE] [date] NOT NULL,
	[PROJECT_END_DATE] [date] NULL,
	[PROJECT_BUDGET] [varchar](max) NULL,
	[PROJECT_DESC] [varchar](max) NULL,
	[TOTAL_TASK_COUNT] [int] NULL,
	[TOTAL_COMPLETED_COUNT] [int] NULL,
	[PROJECT_MANAGER_ID] [int] NOT NULL,
	[PROJECT_MANAGER_NAME] [varchar](max) NOT NULL,
	[PROJECT_CLIENT] [varchar](max) NOT NULL,
	[PROJECT_LEAD] [varchar](max) NULL,
	[PROJECT_TOTAL_EMPLOYEES] [int] NULL,
 CONSTRAINT [PK_Project_1] PRIMARY KEY CLUSTERED 
(
	[PROJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[PROVINCE_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROVINCE_NAME] [varchar](max) NOT NULL,
	[PROVINCE_ABBR] [varchar](30) NOT NULL,
	[COUNTRY_ID] [int] NOT NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[PROVINCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ROLE_ID] [int] IDENTITY(1,1) NOT NULL,
	[ROLE_TYPE] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Potition] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[SALARY_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEESALARY] [varchar](50) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[SALARY_INCREMENT_DATE] [varchar](20) NOT NULL,
	[SALARY_TYPE] [varchar](50) NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[SALARY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNQ_Salary] UNIQUE NONCLUSTERED 
(
	[SALARY_INCREMENT_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SKILL_ID] [int] IDENTITY(1,1) NOT NULL,
	[SKILL_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[SKILL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[STATUS_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS_TYPE] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[STATUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[TASK_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[TASK_NAME] [varchar](max) NOT NULL,
	[TASK_DESC] [varchar](max) NULL,
	[TASK_START_DATE] [date] NULL,
	[TAST_END_DATE] [date] NULL,
	[TASK_TOTAL_HOURS] [varchar](50) NULL,
	[ASSIGNED_BY] [varchar](50) NULL,
	[ASSIGNED_TO] [varchar](50) NULL,
	[ASSIGNED_DATE] [date] NOT NULL,
	[TASK_STATUS] [varchar](50) NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[TIMESHEET_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMPLOYEE_ID] [int] NOT NULL,
	[CLOCK_DATE] [varchar](20) NULL,
	[CLOCK_TIME] [varchar](20) NULL,
	[CLOCK_TYPE] [varchar](20) NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[TIMESHEET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Widget]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Widget](
	[WIDGET_ID] [int] NOT NULL,
	[Dashboard_ID] [int] NOT NULL,
	[WIDGET_NAME] [nchar](10) NOT NULL,
	[WIDGET_TYPE_ID] [int] NOT NULL,
	[X_AXIS] [nchar](10) NOT NULL,
	[Y_AXIS] [nchar](10) NOT NULL,
	[HEIGHT] [int] NOT NULL,
	[LENGTH] [int] NOT NULL,
	[CREATED_BY] [nchar](10) NOT NULL,
	[CREATED_ON] [date] NOT NULL,
 CONSTRAINT [PK_Widget] PRIMARY KEY CLUSTERED 
(
	[WIDGET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Widget_type]    Script Date: 10/18/2022 10:47:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Widget_type](
	[WIDGET_TYPE_ID] [int] NOT NULL,
	[WIDGET_TYPE] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Widget_type] PRIMARY KEY CLUSTERED 
(
	[WIDGET_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee_Leave] ADD  CONSTRAINT [DF_Employee_Leave_IS_APPROVED]  DEFAULT ((0)) FOR [IS_APPROVED]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([CITY_ID])
REFERENCES [dbo].[City] ([CITY_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Province] FOREIGN KEY([PROVINCE_ID])
REFERENCES [dbo].[Province] ([PROVINCE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Province]
GO
ALTER TABLE [dbo].[Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_Dashboard_Employee] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dashboard] CHECK CONSTRAINT [FK_Dashboard_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Job_location] FOREIGN KEY([JOB_LOCATION_ID])
REFERENCES [dbo].[Job_Location] ([JOB_LOCATION_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Job_location]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Potition] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[Role] ([ROLE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Potition]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Status] FOREIGN KEY([STATUS_ID])
REFERENCES [dbo].[Status] ([STATUS_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Status]
GO
ALTER TABLE [dbo].[Employee_Project]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Project_Employee_ID] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee_Project] CHECK CONSTRAINT [FK_Employee_Project_Employee_ID]
GO
ALTER TABLE [dbo].[Employee_Project]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Project_ID] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[Project] ([PROJECT_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee_Project] CHECK CONSTRAINT [FK_Employee_Project_ID]
GO
ALTER TABLE [dbo].[Employee_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Skill_ID] FOREIGN KEY([SKILL_ID])
REFERENCES [dbo].[Skill] ([SKILL_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee_Skill] CHECK CONSTRAINT [FK_Employee_Skill_ID]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Job_Category] FOREIGN KEY([JOB_CATEGORY_ID])
REFERENCES [dbo].[Job_Category] ([JOB_CATEGORY_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Job_Category]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Job_Location] FOREIGN KEY([JOB_LOCATION_ID])
REFERENCES [dbo].[Job_Location] ([JOB_LOCATION_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Job_Location]
GO
ALTER TABLE [dbo].[Job_Applied]  WITH CHECK ADD  CONSTRAINT [FK_Job_Applied_Employee] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[Job_Applied] CHECK CONSTRAINT [FK_Job_Applied_Employee]
GO
ALTER TABLE [dbo].[Job_Applied]  WITH CHECK ADD  CONSTRAINT [FK_Job_Applied_Job_ID] FOREIGN KEY([JOB_ID])
REFERENCES [dbo].[Job] ([JOB_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job_Applied] CHECK CONSTRAINT [FK_Job_Applied_Job_ID]
GO
ALTER TABLE [dbo].[Job_Location]  WITH CHECK ADD  CONSTRAINT [FK_Job_Location_City] FOREIGN KEY([CITY_ID])
REFERENCES [dbo].[City] ([CITY_ID])
GO
ALTER TABLE [dbo].[Job_Location] CHECK CONSTRAINT [FK_Job_Location_City]
GO
ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Employee] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_Employee]
GO
ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_Salary] FOREIGN KEY([SALARY_ID])
REFERENCES [dbo].[Salary] ([SALARY_ID])
GO
ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_Salary]
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD  CONSTRAINT [FK_Province_Country] FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[Country] ([COUNTRY_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Province] CHECK CONSTRAINT [FK_Province_Country]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Employee_ID] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Employee_ID]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Employee] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Employee]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Project] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[Project] ([PROJECT_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Project]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Employee_ID] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[Employee] ([EMPLOYEE_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Employee_ID]
GO
ALTER TABLE [dbo].[Widget]  WITH CHECK ADD  CONSTRAINT [FK_Widget_Widget_type] FOREIGN KEY([Dashboard_ID])
REFERENCES [dbo].[Dashboard] ([DASHBOARD_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Widget] CHECK CONSTRAINT [FK_Widget_Widget_type]
GO
USE [master]
GO
ALTER DATABASE [TeamSavvy] SET  READ_WRITE 
GO
