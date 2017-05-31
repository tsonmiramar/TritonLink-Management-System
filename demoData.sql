USE [TritonLink]
GO
/****** Object:  Table [dbo].[ATTENDANCE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATTENDANCE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[quarter_id] [int] NOT NULL,
 CONSTRAINT [PK_ATTENDANCE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOOK]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NOT NULL,
	[author] [text] NOT NULL,
 CONSTRAINT [PK_BOOK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOOK_AVAILABILITY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_AVAILABILITY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NOT NULL,
	[condition_id] [int] NOT NULL,
	[status] [text] NOT NULL,
 CONSTRAINT [PK_BOOK_AVAILABILITY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOOK_CONDITION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_CONDITION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [text] NOT NULL,
	[isRental] [int] NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_BOOK_CONDITION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BSMS_STUDENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BSMS_STUDENT](
	[id] [int] NOT NULL,
	[major_id] [int] NOT NULL,
	[minor_id] [int] NOT NULL,
	[college_id] [int] NOT NULL,
 CONSTRAINT [PK_BSMS_STUDENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLASS]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
	[quarter_id] [int] NOT NULL,
 CONSTRAINT [PK_CLASS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COLLEGE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLLEGE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
 CONSTRAINT [PK_COLLEGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMMITTEE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMITTEE](
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_COMMITTEE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMMITTEE_FACULTY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMITTEE_FACULTY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[committee_id] [int] NOT NULL,
	[faculty_id] [int] NOT NULL,
 CONSTRAINT [PK_COMMITTEE_FACULTY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMMITTEE_GRAD]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMITTEE_GRAD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[committee_id] [int] NOT NULL,
	[grad_id] [int] NOT NULL,
 CONSTRAINT [PK_COMMITTEE_GRAD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMMITTEE_PHD]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMITTEE_PHD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[committee_id] [int] NOT NULL,
	[phd_candidate_id] [int] NOT NULL,
 CONSTRAINT [PK_COMMITTEE_PHD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject_id] [int] NOT NULL,
	[prevNum] [text] NULL,
	[currNum] [text] NOT NULL,
	[unitFrom] [int] NOT NULL,
	[unitTo] [int] NOT NULL,
	[letter_option] [bit] NOT NULL,
	[SU_option] [bit] NOT NULL,
	[labwork] [bit] NOT NULL,
	[instructor_consent] [bit] NOT NULL,
 CONSTRAINT [PK_COURSE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE_CATEGORY_REQUIREMENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE_CATEGORY_REQUIREMENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_id] [int] NOT NULL,
	[min_gpa] [float] NULL,
	[min_unit] [int] NOT NULL,
 CONSTRAINT [PK_COURSE_CATEGORY_REQUIREMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE_SUBJECT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE_SUBJECT](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[symbol] [text] NOT NULL,
	[dept_id] [int] NOT NULL,
 CONSTRAINT [PK_COURSE_SUBJECT] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE_TYPE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE_TYPE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_COURSE_TYPE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE_TYPE_CATEGORY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE_TYPE_CATEGORY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [PK_COURSE_TYPE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEGREE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEGREE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[type_id] [int] NOT NULL,
	[institution] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DEGREE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEGREE_TYPE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEGREE_TYPE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DEGREE_TYPE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DISCUSSION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISCUSSION](
	[id] [int] NOT NULL,
	[required] [int] NOT NULL,
 CONSTRAINT [PK_DISCUSSION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ENROLLMENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENROLLMENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[section_id] [int] NOT NULL,
	[letter_option] [bit] NOT NULL,
	[su_option] [bit] NOT NULL,
	[grade] [varchar](50) NULL,
	[unit] [int] NOT NULL,
 CONSTRAINT [PK_ENROLLMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FACULTY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
	[title] [text] NOT NULL,
	[dept_id] [int] NOT NULL,
 CONSTRAINT [PK_FACULTY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GRAD]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRAD](
	[id] [int] NOT NULL,
	[dept_id] [int] NOT NULL,
 CONSTRAINT [PK_GRAD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GRADE_CONVERSION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRADE_CONVERSION](
	[letter_grade] [varchar](2) NOT NULL,
	[number_grade] [decimal](2, 1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MASTER]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASTER](
	[id] [int] NOT NULL,
 CONSTRAINT [PK_MASTER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MEETING]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEETING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_time] [time](7) NOT NULL,
	[end_time] [time](7) NOT NULL,
	[room] [int] NOT NULL,
	[building] [text] NOT NULL,
	[section_id] [int] NOT NULL,
 CONSTRAINT [PK_MEETING] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_CONCENTRATION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_CONCENTRATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[degree_id] [int] NOT NULL,
 CONSTRAINT [PK_MS_CONCENTRATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_CONCENTRATION_COURSE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_CONCENTRATION_COURSE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[concentration_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK_MS_CONCENTRATION_COURSE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MS_CONCENTRATION_REQUIREMENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MS_CONCENTRATION_REQUIREMENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[concentration_id] [int] NOT NULL,
	[course_category_id] [int] NOT NULL,
 CONSTRAINT [PK_MS_CONCENTRATION_REQUIREMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NON_DISCUSSION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NON_DISCUSSION](
	[id] [int] NOT NULL,
	[type] [text] NOT NULL,
 CONSTRAINT [PK_NON_DISCUSSION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHD]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHD](
	[id] [int] NOT NULL,
 CONSTRAINT [PK_PHD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHD_CANDIDATE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHD_CANDIDATE](
	[id] [int] NOT NULL,
	[advisor_id] [int] NOT NULL,
 CONSTRAINT [PK_PHD_CANDIDATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHD_PRECANDIDATE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHD_PRECANDIDATE](
	[id] [int] NOT NULL,
 CONSTRAINT [PK_PHD_PRECANDIDATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PREREQUISITE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PREREQUISITE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[prereq_id] [int] NOT NULL,
 CONSTRAINT [PK_PREREQUISITE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROBATION_PERIOD]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROBATION_PERIOD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[quarter_id] [int] NOT NULL,
	[reason] [text] NOT NULL,
 CONSTRAINT [PK_PROBATION_PERIOD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUARTER]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTER](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_id] [int] NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_QUARTER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUARTER_NAME]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUARTER_NAME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QUARTER_NAME] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RESIDENT_STATUS]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESIDENT_STATUS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [text] NOT NULL,
 CONSTRAINT [PK_RESIDENT_STATUS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[REVIEW_SESSION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVIEW_SESSION](
	[id] [int] NOT NULL,
	[month] [text] NOT NULL,
	[day] [int] NOT NULL,
	[weekday] [text] NOT NULL,
 CONSTRAINT [PK_REVIEW_SESSION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[REVIEW_SESSION_AVAILABLE_TIME]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVIEW_SESSION_AVAILABLE_TIME](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_time] [time](7) NOT NULL,
	[end_time] [time](7) NOT NULL,
 CONSTRAINT [PK_REVIEW_SESSION_AVAILABLE_TIME] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SECTION]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECTION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_id] [int] NOT NULL,
	[faculty_id] [int] NOT NULL,
	[enroll_limit] [int] NOT NULL,
 CONSTRAINT [PK_SECTION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SECTION_BOOKLIST]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECTION_BOOKLIST](
	[id] [int] NOT NULL,
	[section_id] [int] NOT NULL,
	[book_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SECTION_BOOKLIST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[firstname] [text] NOT NULL,
	[middlename] [text] NULL,
	[lastname] [text] NOT NULL,
	[ssn] [int] NOT NULL,
	[resident_status] [int] NOT NULL,
 CONSTRAINT [PK_STUDENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT_DEGREE]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_DEGREE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[degree_id] [int] NOT NULL,
 CONSTRAINT [PK_STUDENT_DEGREE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UNDERGRAD]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNDERGRAD](
	[id] [int] NOT NULL,
	[major_id] [int] NOT NULL,
	[minor_id] [int] NOT NULL,
	[college_id] [int] NOT NULL,
 CONSTRAINT [PK_UNDERGRAD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UNIT_CATEGORY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIT_CATEGORY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totalunit] [int] NOT NULL,
 CONSTRAINT [PK_UNIT_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UNIT_COURSE_CATEGORY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIT_COURSE_CATEGORY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unit_category_id] [int] NOT NULL,
	[course_category_id] [int] NOT NULL,
 CONSTRAINT [PK_UNIT_COURSE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UNIT_REQUIREMENT]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIT_REQUIREMENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department_id] [int] NOT NULL,
	[degree_id] [int] NOT NULL,
	[totalunit_id] [int] NOT NULL,
 CONSTRAINT [PK_UNIT_REQUIREMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WAITLIST]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAITLIST](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[section_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
 CONSTRAINT [PK_WAITLIST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WEEKDAY]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WEEKDAY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WEEKDAY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WEEKLY_MEETING]    Script Date: 5/28/2017 11:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WEEKLY_MEETING](
	[id] [int] NOT NULL,
	[weekday] [text] NOT NULL,
 CONSTRAINT [PK_WEEKLY_MEETING] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ATTENDANCE] ON 

INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (13, 10, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (14, 10, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (15, 10, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (16, 10, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (17, 10, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (18, 10, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (19, 10, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (20, 10, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (21, 10, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (22, 10, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (23, 10, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (24, 10, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (25, 10, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (26, 11, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (27, 11, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (28, 11, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (29, 11, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (30, 11, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (31, 11, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (32, 11, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (33, 11, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (34, 11, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (35, 11, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (36, 11, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (37, 11, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (38, 11, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (39, 12, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (40, 12, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (41, 12, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (42, 12, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (43, 12, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (44, 12, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (45, 12, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (46, 12, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (47, 12, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (48, 12, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (49, 12, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (50, 12, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (51, 12, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (52, 13, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (53, 13, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (54, 13, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (55, 13, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (56, 13, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (57, 13, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (58, 13, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (59, 13, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (60, 13, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (61, 13, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (62, 13, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (63, 13, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (64, 13, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (65, 14, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (66, 14, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (67, 14, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (68, 14, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (69, 14, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (70, 14, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (71, 14, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (72, 14, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (73, 14, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (74, 14, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (75, 14, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (76, 14, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (77, 14, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (78, 15, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (79, 15, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (80, 15, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (81, 15, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (82, 15, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (83, 15, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (84, 15, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (85, 15, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (86, 15, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (87, 15, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (88, 15, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (89, 15, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (90, 15, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (91, 16, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (92, 16, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (93, 16, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (94, 16, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (95, 16, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (96, 16, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (97, 16, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (98, 16, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (99, 16, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (100, 16, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (101, 16, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (102, 16, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (103, 16, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (104, 17, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (105, 17, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (106, 17, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (107, 17, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (108, 17, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (109, 17, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (110, 17, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (111, 17, 2)
GO
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (112, 17, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (113, 17, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (114, 17, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (115, 17, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (116, 17, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (117, 18, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (118, 18, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (119, 18, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (120, 18, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (121, 18, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (122, 18, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (123, 18, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (124, 18, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (125, 18, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (126, 18, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (127, 18, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (128, 18, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (129, 18, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (130, 19, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (131, 19, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (132, 19, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (133, 19, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (134, 19, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (135, 19, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (136, 19, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (137, 19, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (138, 19, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (139, 19, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (140, 19, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (141, 19, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (142, 19, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (143, 20, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (144, 20, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (145, 20, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (146, 20, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (147, 20, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (148, 20, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (149, 20, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (150, 20, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (151, 20, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (152, 20, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (153, 20, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (154, 20, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (155, 20, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (156, 21, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (157, 21, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (158, 21, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (159, 21, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (160, 21, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (161, 21, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (162, 21, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (163, 21, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (164, 21, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (165, 21, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (166, 21, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (167, 21, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (168, 21, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (169, 22, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (170, 22, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (171, 22, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (172, 22, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (173, 22, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (174, 22, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (175, 22, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (176, 22, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (177, 22, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (178, 22, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (179, 22, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (180, 22, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (181, 22, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (182, 23, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (183, 23, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (184, 23, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (185, 23, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (186, 23, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (187, 23, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (188, 23, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (189, 23, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (190, 23, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (191, 23, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (192, 23, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (193, 23, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (194, 23, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (195, 24, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (196, 24, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (197, 24, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (198, 24, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (199, 24, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (200, 24, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (201, 24, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (202, 24, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (203, 24, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (204, 24, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (205, 24, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (206, 24, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (207, 24, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1013, 1007, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1014, 1007, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1015, 1007, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1016, 1007, 51)
GO
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1017, 1007, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1018, 1007, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1019, 1007, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1020, 1007, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1021, 1007, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1022, 1007, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1023, 1007, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1024, 1007, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1025, 1007, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1026, 1008, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1027, 1008, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1028, 1008, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1029, 1008, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1030, 1008, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1031, 1008, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1032, 1008, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1033, 1008, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1034, 1008, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1035, 1008, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1036, 1008, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1037, 1008, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1038, 1008, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1039, 1010, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1040, 1010, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1041, 1010, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1042, 1010, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1043, 1010, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1044, 1010, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1045, 1010, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1046, 1010, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1047, 1010, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1048, 1010, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1049, 1010, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1050, 1010, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1051, 1010, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1052, 1011, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1053, 1011, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1054, 1011, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1055, 1011, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1056, 1011, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1057, 1011, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1058, 1011, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1059, 1011, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1060, 1011, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1061, 1011, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1062, 1011, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1063, 1011, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1064, 1011, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1065, 1012, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1066, 1012, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1067, 1012, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1068, 1012, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1069, 1012, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1070, 1012, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1071, 1012, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1072, 1012, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1073, 1012, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1074, 1012, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1075, 1012, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1076, 1012, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1077, 1012, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1078, 1013, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1079, 1013, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1080, 1013, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1081, 1013, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1082, 1013, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1083, 1013, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1084, 1013, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1085, 1013, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1086, 1013, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1087, 1013, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1088, 1013, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1089, 1013, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1090, 1013, 57)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1091, 1014, 48)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1092, 1014, 49)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1093, 1014, 50)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1094, 1014, 51)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1095, 1014, 52)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1096, 1014, 53)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1097, 1014, 1)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1098, 1014, 2)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1099, 1014, 3)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1100, 1014, 54)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1101, 1014, 55)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1102, 1014, 56)
INSERT [dbo].[ATTENDANCE] ([id], [student_id], [quarter_id]) VALUES (1103, 1014, 57)
SET IDENTITY_INSERT [dbo].[ATTENDANCE] OFF
SET IDENTITY_INSERT [dbo].[CLASS] ON 

INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (1, 16, N'Probability and Statistics', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (2, 13, N'Operating Systems', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (3, 11, N'Data Mining and Predictive Analytics', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (4, 18, N'Scientific Reasoning', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (5, 7, N'Intro to Theory', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (6, 19, N'Freedom, Equality, and the Law', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (7, 6, N'Introduction to Computer Science: Java', 3)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (8, 6, N'Introduction to Computer Science: Java', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (9, 19, N'Freedom, Equality, and the Law', 53)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (10, 6, N'Introduction to Computer Science: Java', 1)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (11, 7, N'Intro to Theory', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (12, 6, N'Introduction to Computer Science: Java', 2)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (13, 9, N'Probabilistic Reasoning', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (14, 17, N'Intro to Logic', 1)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (15, 10, N'Machine Learning', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (16, 12, N'Databases', 1)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (17, 19, N'Freedom, Equality, and the Law', 1)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (18, 15, N'Computational Methods', 53)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (19, 16, N'Probability and Statistics', 2)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (20, 9, N'Probabilistic Reasoning', 1)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (21, 6, N'Introduction to Computer Science: Java', 48)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (22, 6, N'Introduction to Computer Science: Java', 50)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (23, 6, N'Introduction to Computer Science: Java', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (24, 6, N'Introduction to Computer Science: Java', 56)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (25, 7, N'Intro to Theory', 49)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (26, 7, N'Intro to Theory', 54)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (27, 9, N'Probabilistic Reasoning', 48)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (29, 9, N'Probabilistic Reasoning', 49)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (30, 9, N'Probabilistic Reasoning', 56)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (31, 10, N'Machine Learning', 57)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (32, 10, N'Machine Learning', 49)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (33, 10, N'Machine Learning', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (34, 11, N'Data Mining and Predictive Analytics', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (35, 11, N'Data Mining and Predictive Analytics', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (36, 11, N'Data Mining and Predictive Analytics', 55)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (37, 12, N'Data Mining and Predictive Analytics', 56)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (38, 12, N'Data Mining and Predictive Analytics', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (39, 13, N'Operating Systems', 50)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (40, 13, N'Operating Systems', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (41, 13, N'Operating Systems', 54)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (42, 15, N'Computational Methods', 50)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (43, 15, N'Computational Methods', 56)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (44, 16, N'Probability and Statistics', 48)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (45, 16, N'Probability and Statistics', 49)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (46, 16, N'Probability and Statistics', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (47, 16, N'Probability and Statistics', 57)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (48, 17, N'Intro to Logic', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (49, 17, N'Intro to Logic', 55)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (50, 18, N'Scientific Reasoning', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (51, 18, N'Scientific Reasoning', 56)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (52, 19, N'Freedom, Equality, and the Law', 50)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (53, 19, N'Freedom, Equality, and the Law', 51)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (54, 19, N'Freedom, Equality, and the Law', 52)
INSERT [dbo].[CLASS] ([id], [course_id], [title], [quarter_id]) VALUES (55, 19, N'Freedom, Equality, and the Law', 56)
SET IDENTITY_INSERT [dbo].[CLASS] OFF
SET IDENTITY_INSERT [dbo].[COLLEGE] ON 

INSERT [dbo].[COLLEGE] ([id], [name]) VALUES (1, N'Thurgood Marshal')
INSERT [dbo].[COLLEGE] ([id], [name]) VALUES (2, N'John Muir')
INSERT [dbo].[COLLEGE] ([id], [name]) VALUES (3, N'Revelle')
INSERT [dbo].[COLLEGE] ([id], [name]) VALUES (4, N'Earl Warren')
INSERT [dbo].[COLLEGE] ([id], [name]) VALUES (5, N'Eleanor Roosevelt')
INSERT [dbo].[COLLEGE] ([id], [name]) VALUES (6, N'Sixth')
SET IDENTITY_INSERT [dbo].[COLLEGE] OFF
SET IDENTITY_INSERT [dbo].[COURSE] ON 

INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (6, 19, NULL, N'8A', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (7, 19, NULL, N'105', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (8, 19, NULL, N'123', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (9, 19, NULL, N'250A', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (10, 19, NULL, N'250B', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (11, 19, NULL, N'255', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (12, 19, NULL, N'232A', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (13, 19, NULL, N'221', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (14, 61, NULL, N'3', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (15, 61, NULL, N'107', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (16, 61, NULL, N'108', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (17, 69, NULL, N'10', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (18, 69, NULL, N'12', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (19, 69, NULL, N'165', 2, 4, 1, 1, 0, 0)
INSERT [dbo].[COURSE] ([id], [subject_id], [prevNum], [currNum], [unitFrom], [unitTo], [letter_option], [SU_option], [labwork], [instructor_consent]) VALUES (20, 69, NULL, N'167', 2, 4, 1, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[COURSE] OFF
SET IDENTITY_INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ON 

INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (1, 1, NULL, 10)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (2, 2, NULL, 15)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (3, 4, NULL, 15)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (4, 1, NULL, 15)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (5, 2, NULL, 20)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (6, 1, NULL, 20)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (7, 2, NULL, 20)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (8, 4, NULL, 10)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (9, 1, NULL, 0)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (10, 2, NULL, 0)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (11, 3, NULL, 0)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (12, 4, NULL, 0)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (13, 3, NULL, 45)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (14, 5, 3, 4)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (15, 5, 3.1, 8)
INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id], [type_id], [min_gpa], [min_unit]) VALUES (16, 5, 3.3, 4)
SET IDENTITY_INSERT [dbo].[COURSE_CATEGORY_REQUIREMENT] OFF
SET IDENTITY_INSERT [dbo].[COURSE_SUBJECT] ON 

INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (1, N'AIP', 1)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (2, N'AAF', 64)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (3, N'ANES', 2)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (4, N'ANBI', 3)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (5, N'ANAR', 3)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (6, N'ANTH', 3)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (7, N'ANCS', 3)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (8, N'AESE', 10)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (9, N'BIEB', 5)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (10, N'BIPN', 5)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (11, N'BIBC', 5)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (12, N'BILD', 5)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (13, N'BIMM', 5)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (14, N'CENG', 37)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (15, N'CHEM', 6)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (16, N'CLRE', 7)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (17, N'COGS', 8)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (18, N'COMM', 9)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (19, N'CSE', 10)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (20, N'CONT', 11)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (21, N'CGS', 12)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (22, N'CAT', 13)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (23, N'TDMV', 55)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (24, N'DOC', 14)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (25, N'ECON', 15)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (26, N'EAP', 57)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (27, N'EDS', 16)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (28, N'ECE', 17)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (29, N'EMED', 18)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (30, N'ENG', 50)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (31, N'ELWR', 4)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (32, N'ENVR', 19)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (33, N'ETHN', 20)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (34, N'FPM', 21)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (35, N'HLAW', 22)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (36, N'HITO', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (37, N'HIEA', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (38, N'HIEU', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (39, N'HILA', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (40, N'HINE', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (41, N'HIUS', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (42, N'HILD', 23)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (43, N'HDP', 24)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (44, N'HUM', 25)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (45, N'INTL', 26)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (46, N'LATI', 27)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (47, N'LAWS', 28)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (48, N'LHCO', 29)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (49, N'LIFR', 30)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (50, N'LIGN', 30)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (51, N'LIGM', 30)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (52, N'LISP', 30)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (53, N'LTAM', 62)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (54, N'LTCS', 62)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (55, N'LTFR', 62)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (56, N'LTSP', 62)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (57, N'LTEN', 62)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (58, N'LTWL', 62)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (59, N'MMW', 31)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (60, N'MATH', 32)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (61, N'MAE', 33)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (62, N'MED', 34)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (63, N'MCWP', 35)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (64, N'MUS', 36)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (65, N'NANO', 37)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (66, N'OPTH', 38)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (67, N'PATH', 39)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (68, N'PEDS', 40)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (69, N'PHIL', 41)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (70, N'PHYS', 42)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (71, N'POLI', 43)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (72, N'PSYC', 44)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (73, N'RAD', 46)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (74, N'MGTF', 47)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (75, N'RELI', 48)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (76, N'RMED', 63)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (77, N'SOMI', 49)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (78, N'SIOC', 51)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (79, N'SIO', 51)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (80, N'SOCI', 52)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (81, N'SE', 53)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (82, N'SURG', 54)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (83, N'TDAC', 55)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (84, N'TDDE', 55)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (85, N'TDGE', 55)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (86, N'TDHT', 55)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (87, N'TDPW', 55)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (88, N'TWS', 56)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (89, N'USP', 58)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (90, N'VIS', 59)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (91, N'WCWP', 60)
INSERT [dbo].[COURSE_SUBJECT] ([subject_id], [symbol], [dept_id]) VALUES (92, N'WES', 61)
SET IDENTITY_INSERT [dbo].[COURSE_SUBJECT] OFF
SET IDENTITY_INSERT [dbo].[COURSE_TYPE] ON 

INSERT [dbo].[COURSE_TYPE] ([id], [name]) VALUES (1, N'Lower Division')
INSERT [dbo].[COURSE_TYPE] ([id], [name]) VALUES (2, N'Upper Division')
INSERT [dbo].[COURSE_TYPE] ([id], [name]) VALUES (3, N'Graduate')
INSERT [dbo].[COURSE_TYPE] ([id], [name]) VALUES (4, N'Tech Elective')
INSERT [dbo].[COURSE_TYPE] ([id], [name]) VALUES (5, N'Concentration')
SET IDENTITY_INSERT [dbo].[COURSE_TYPE] OFF
SET IDENTITY_INSERT [dbo].[COURSE_TYPE_CATEGORY] ON 

INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (1, 6, 1)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (2, 7, 2)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (4, 7, 4)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (3, 8, 2)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (5, 9, 3)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (6, 9, 4)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (7, 10, 3)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (8, 11, 3)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (9, 12, 3)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (10, 13, 3)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (11, 13, 4)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (12, 14, 1)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (13, 14, 4)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (14, 15, 2)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (15, 15, 4)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (16, 16, 2)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (17, 17, 1)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (18, 18, 1)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (19, 19, 2)
INSERT [dbo].[COURSE_TYPE_CATEGORY] ([id], [course_id], [type_id]) VALUES (20, 20, 2)
SET IDENTITY_INSERT [dbo].[COURSE_TYPE_CATEGORY] OFF
SET IDENTITY_INSERT [dbo].[DEGREE] ON 

INSERT [dbo].[DEGREE] ([id], [name], [type_id], [institution]) VALUES (3, N'B.S in Computer Science', 1, N'UCSD')
INSERT [dbo].[DEGREE] ([id], [name], [type_id], [institution]) VALUES (4, N'B.A in Philosophy', 1, N'UCSD')
INSERT [dbo].[DEGREE] ([id], [name], [type_id], [institution]) VALUES (5, N'B.S in Mechanical Engineering', 1, N'UCSD')
INSERT [dbo].[DEGREE] ([id], [name], [type_id], [institution]) VALUES (6, N'M.S in Computer Science', 2, N'UCSD')
SET IDENTITY_INSERT [dbo].[DEGREE] OFF
SET IDENTITY_INSERT [dbo].[DEGREE_TYPE] ON 

INSERT [dbo].[DEGREE_TYPE] ([id], [name]) VALUES (1, N'Bachelors')
INSERT [dbo].[DEGREE_TYPE] ([id], [name]) VALUES (2, N'Master')
INSERT [dbo].[DEGREE_TYPE] ([id], [name]) VALUES (3, N'PhD')
SET IDENTITY_INSERT [dbo].[DEGREE_TYPE] OFF
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON 

INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (1, N'Academic Internship Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (2, N'Anesthesiology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (3, N'Anthropology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (4, N'Arts and Humanities')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (5, N'Biology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (6, N'Chemistry and Biochemistry')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (7, N'Clinical Research Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (8, N'Cognitive Science')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (9, N'Communication')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (10, N'Computer Science & Engineering')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (11, N'Contemporary Issues Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (12, N'Critical Gender Studies Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (13, N'Cultuture, Art & Technology Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (14, N'Dimensions of Culture Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (15, N'Economics')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (16, N'Education Studies')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (17, N'Electrical & Computer Engineering')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (18, N'Emergency Medicine')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (19, N'Environmental Studies Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (20, N'Ethnic Studies')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (21, N'Family and Preventive Medicine')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (22, N'Health Law Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (23, N'History')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (24, N'Human Development Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (25, N'Humanities Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (26, N'International Studies Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (27, N'Latin American Studies Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (28, N'Law and Society Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (29, N'Leadership/Health Care Organization')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (30, N'Linguistics')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (31, N'Making of the Modern World')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (32, N'Mathematics')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (33, N'Mechanical & Aerospace Engineering')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (34, N'Medicine')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (35, N'Muir College Writing Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (36, N'Music')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (37, N'NanoEngineering')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (38, N'Ophthalmology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (39, N'Pathology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (40, N'Pediatrics')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (41, N'Phillosophy')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (42, N'Physics')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (43, N'Political Science')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (44, N'Psychiatry')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (45, N'Psychology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (46, N'Radiology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (47, N'Rady School of Management')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (48, N'Religion, Program for the Study of Reproductive Medicine')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (49, N'Sch of Med Interdisciplinary Crses')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (50, N'School of Engineering')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (51, N'Scripps Institution of Oceanography')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (52, N'Sociology')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (53, N'Structural Engineering')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (54, N'Surgery')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (55, N'Theatre and Dance')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (56, N'Third World Studies Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (57, N'Unaffiliated')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (58, N'Urban Studies & Planning Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (59, N'Visual Arts')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (60, N'Warren College Writing Program')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (61, N'Wireless Embedded Systems')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (62, N'Literature')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (63, N'Reproductive Medicine')
INSERT [dbo].[DEPARTMENT] ([id], [name]) VALUES (64, N'African American Studies')
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
INSERT [dbo].[DISCUSSION] ([id], [required]) VALUES (16, 0)
INSERT [dbo].[DISCUSSION] ([id], [required]) VALUES (25, 0)
SET IDENTITY_INSERT [dbo].[ENROLLMENT] ON 

INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (35, 10, 24, 1, 0, N'A-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (36, 12, 24, 1, 0, N'B+', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (37, 11, 25, 1, 0, N'C-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (38, 13, 11, 1, 0, N'A-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (39, 14, 11, 1, 0, N'B', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (40, 10, 27, 1, 0, N'A-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (41, 14, 27, 1, 0, N'B+', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (42, 13, 27, 1, 0, N'C', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (43, 19, 34, 1, 0, N'B+', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (44, 17, 35, 1, 0, N'B-', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (45, 16, 35, 1, 0, N'A-', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (46, 15, 36, 1, 0, N'B', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (47, 19, 36, 1, 0, N'B+', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (48, 20, 37, 1, 0, N'A', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (49, 21, 37, 1, 0, N'A', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (50, 22, 37, 1, 0, N'C-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (51, 23, 37, 1, 0, N'C+', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (52, 24, 38, 1, 0, N'F', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (53, 21, 38, 1, 0, N'D', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (54, 20, 39, 1, 0, N'A-', 2)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (55, 10, 10, 0, 1, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (56, 14, 10, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (57, 12, 10, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (58, 17, 1, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (59, 18, 8, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (60, 13, 6, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (61, 21, 4, 0, 1, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (62, 22, 7, 0, 1, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (63, 23, 4, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (64, 24, 7, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (65, 16, 1, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (66, 1007, 28, 1, 0, N'C', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (67, 1014, 16, 1, 0, N'B+', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (68, 1010, 16, 1, 0, N'D', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (69, 1011, 16, 1, 0, N'F', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (70, 1008, 29, 1, 0, N'A', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (71, 1011, 29, 1, 0, N'A', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (72, 1012, 31, 1, 0, N'B-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (73, 1013, 31, 1, 0, N'B', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (74, 1013, 31, 1, 0, N'F', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (75, 1008, 32, 1, 0, N'A-', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (76, 1014, 33, 1, 0, N'A', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (77, 1012, 33, 1, 0, N'A', 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (78, 12, 2, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (79, 1008, 9, 0, 1, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (80, 1010, 5, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (81, 1011, 2, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (82, 1012, 9, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (83, 1013, 5, 0, 1, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (84, 1014, 3, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (85, 1007, 3, 1, 0, NULL, 4)
INSERT [dbo].[ENROLLMENT] ([id], [student_id], [section_id], [letter_option], [su_option], [grade], [unit]) VALUES (86, 1008, 3, 1, 0, NULL, 4)
SET IDENTITY_INSERT [dbo].[ENROLLMENT] OFF
SET IDENTITY_INSERT [dbo].[FACULTY] ON 

INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (4, N'Justin Bieber', N'Associate Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (5, N'Flo Rida', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (6, N'Selena Gomez', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (7, N'Adele', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (8, N'Taylor Swift', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (9, N'Kelly Clarkson', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (10, N'Adam Levine', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (11, N'Bjork', N'Professor', 10)
INSERT [dbo].[FACULTY] ([id], [name], [title], [dept_id]) VALUES (12, N'nobody', N'Professor', 10)
SET IDENTITY_INSERT [dbo].[FACULTY] OFF
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1007, 10)
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1008, 10)
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1010, 10)
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1011, 10)
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1012, 10)
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1013, 10)
INSERT [dbo].[GRAD] ([id], [dept_id]) VALUES (1014, 10)
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'A+', CAST(4.0 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'A', CAST(4.0 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'A-', CAST(3.7 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'B+', CAST(3.3 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'B', CAST(3.0 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'B-', CAST(2.7 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'C+', CAST(2.3 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'C', CAST(2.0 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'C-', CAST(1.7 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'D', CAST(1.0 AS Decimal(2, 1)))
INSERT [dbo].[GRADE_CONVERSION] ([letter_grade], [number_grade]) VALUES (N'F', CAST(0.0 AS Decimal(2, 1)))
INSERT [dbo].[MASTER] ([id]) VALUES (1007)
INSERT [dbo].[MASTER] ([id]) VALUES (1008)
INSERT [dbo].[MASTER] ([id]) VALUES (1010)
INSERT [dbo].[MASTER] ([id]) VALUES (1011)
INSERT [dbo].[MASTER] ([id]) VALUES (1012)
INSERT [dbo].[MASTER] ([id]) VALUES (1013)
INSERT [dbo].[MASTER] ([id]) VALUES (1014)
SET IDENTITY_INSERT [dbo].[MEETING] ON 

INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (1, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 2001, N'WLH', 1)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (2, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 2001, N'WLH', 1)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (3, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 2001, N'WLH', 1)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (4, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 2001, N'WLH', 2)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (5, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 2001, N'WLH', 2)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (6, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), 2001, N'WLH', 2)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (7, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 3)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (8, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 3)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (9, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 3)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (10, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 4)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (11, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 4)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (12, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 4)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (13, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 5)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (14, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 5)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (15, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time), 2001, N'WLH', 5)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (16, CAST(N'18:00:00' AS Time), CAST(N'19:00:00' AS Time), 2001, N'WLH', 6)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (17, CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time), 2001, N'WLH', 6)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (18, CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time), 2001, N'WLH', 6)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (19, CAST(N'15:00:00' AS Time), CAST(N'16:58:00' AS Time), 2001, N'WLH', 7)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (20, CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), 2001, N'WLH', 7)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (21, CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), 2001, N'WLH', 8)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (22, CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time), 2001, N'WLH', 8)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (23, CAST(N'17:00:00' AS Time), CAST(N'18:00:00' AS Time), 2001, N'WLH', 9)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (24, CAST(N'17:00:00' AS Time), CAST(N'18:00:00' AS Time), 2001, N'WLH', 9)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (25, CAST(N'19:00:00' AS Time), CAST(N'20:00:00' AS Time), 2001, N'WLH', 10)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (26, CAST(N'17:00:00' AS Time), CAST(N'18:00:00' AS Time), 2001, N'WLH', 10)
INSERT [dbo].[MEETING] ([id], [start_time], [end_time], [room], [building], [section_id]) VALUES (27, CAST(N'17:00:00' AS Time), CAST(N'18:00:00' AS Time), 2001, N'WLH', 10)
SET IDENTITY_INSERT [dbo].[MEETING] OFF
SET IDENTITY_INSERT [dbo].[MS_CONCENTRATION] ON 

INSERT [dbo].[MS_CONCENTRATION] ([id], [name], [degree_id]) VALUES (1, N'Databases', 6)
INSERT [dbo].[MS_CONCENTRATION] ([id], [name], [degree_id]) VALUES (2, N'AI', 6)
INSERT [dbo].[MS_CONCENTRATION] ([id], [name], [degree_id]) VALUES (3, N'Systems', 6)
SET IDENTITY_INSERT [dbo].[MS_CONCENTRATION] OFF
SET IDENTITY_INSERT [dbo].[MS_CONCENTRATION_COURSE] ON 

INSERT [dbo].[MS_CONCENTRATION_COURSE] ([id], [concentration_id], [course_id]) VALUES (1, 1, 12)
INSERT [dbo].[MS_CONCENTRATION_COURSE] ([id], [concentration_id], [course_id]) VALUES (2, 2, 11)
INSERT [dbo].[MS_CONCENTRATION_COURSE] ([id], [concentration_id], [course_id]) VALUES (3, 2, 9)
INSERT [dbo].[MS_CONCENTRATION_COURSE] ([id], [concentration_id], [course_id]) VALUES (4, 3, 13)
SET IDENTITY_INSERT [dbo].[MS_CONCENTRATION_COURSE] OFF
SET IDENTITY_INSERT [dbo].[MS_CONCENTRATION_REQUIREMENT] ON 

INSERT [dbo].[MS_CONCENTRATION_REQUIREMENT] ([id], [concentration_id], [course_category_id]) VALUES (1, 1, 14)
INSERT [dbo].[MS_CONCENTRATION_REQUIREMENT] ([id], [concentration_id], [course_category_id]) VALUES (2, 2, 15)
INSERT [dbo].[MS_CONCENTRATION_REQUIREMENT] ([id], [concentration_id], [course_category_id]) VALUES (3, 3, 16)
SET IDENTITY_INSERT [dbo].[MS_CONCENTRATION_REQUIREMENT] OFF
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (1, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (2, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (3, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (4, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (5, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (6, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (7, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (8, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (9, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (10, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (11, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (12, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (13, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (14, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (15, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (17, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (18, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (19, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (20, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (21, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (22, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (23, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (24, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (26, N'LE')
INSERT [dbo].[NON_DISCUSSION] ([id], [type]) VALUES (27, N'LE')
SET IDENTITY_INSERT [dbo].[QUARTER] ON 

INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (48, 1, 2014)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (51, 1, 2015)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (1, 1, 2016)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (54, 1, 2017)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (57, 1, 2018)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (49, 2, 2015)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (52, 2, 2016)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (2, 2, 2017)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (55, 2, 2018)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (50, 3, 2015)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (53, 3, 2016)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (3, 3, 2017)
INSERT [dbo].[QUARTER] ([id], [name_id], [year]) VALUES (56, 3, 2018)
SET IDENTITY_INSERT [dbo].[QUARTER] OFF
SET IDENTITY_INSERT [dbo].[QUARTER_NAME] ON 

INSERT [dbo].[QUARTER_NAME] ([id], [name]) VALUES (1, N'FALL')
INSERT [dbo].[QUARTER_NAME] ([id], [name]) VALUES (2, N'WINTER')
INSERT [dbo].[QUARTER_NAME] ([id], [name]) VALUES (3, N'SPRING')
SET IDENTITY_INSERT [dbo].[QUARTER_NAME] OFF
SET IDENTITY_INSERT [dbo].[RESIDENT_STATUS] ON 

INSERT [dbo].[RESIDENT_STATUS] ([id], [type]) VALUES (1, N'CA')
INSERT [dbo].[RESIDENT_STATUS] ([id], [type]) VALUES (2, N'NON-CA')
INSERT [dbo].[RESIDENT_STATUS] ([id], [type]) VALUES (3, N'FOREIGN')
SET IDENTITY_INSERT [dbo].[RESIDENT_STATUS] OFF
SET IDENTITY_INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ON 

INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (1, CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (2, CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (3, CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (4, CAST(N'11:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (5, CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (6, CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (7, CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (8, CAST(N'15:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (9, CAST(N'16:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (10, CAST(N'17:00:00' AS Time), CAST(N'18:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (11, CAST(N'18:00:00' AS Time), CAST(N'19:00:00' AS Time))
INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] ([id], [start_time], [end_time]) VALUES (12, CAST(N'19:00:00' AS Time), CAST(N'20:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[REVIEW_SESSION_AVAILABLE_TIME] OFF
SET IDENTITY_INSERT [dbo].[SECTION] ON 

INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (1, 1, 7, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (2, 2, 9, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (3, 3, 5, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (4, 4, 10, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (5, 2, 9, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (6, 5, 8, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (7, 6, 8, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (8, 1, 6, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (9, 2, 4, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (10, 7, 7, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (11, 8, 4, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (12, 9, 5, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (13, 10, 6, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (14, 11, 8, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (15, 12, 9, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (16, 13, 11, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (17, 14, 11, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (18, 15, 4, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (19, 16, 9, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (20, 17, 10, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (21, 18, 11, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (22, 19, 6, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (23, 20, 11, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (24, 21, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (25, 22, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (26, 23, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (27, 25, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (28, 27, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (29, 32, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (30, 33, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (31, 34, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (32, 38, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (33, 39, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (34, 42, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (35, 44, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (36, 45, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (37, 48, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (38, 52, 12, 50)
INSERT [dbo].[SECTION] ([id], [class_id], [faculty_id], [enroll_limit]) VALUES (39, 53, 12, 50)
SET IDENTITY_INSERT [dbo].[SECTION] OFF
SET IDENTITY_INSERT [dbo].[STUDENT] ON 

INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (10, 1, N'Benjamin', N'', N'B', 1, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (11, 2, N'Kristen', N'', N'W', 2, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (12, 3, N'Daniel', N'', N'F', 3, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (13, 4, N'Claire', N'', N'J', 4, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (14, 5, N'Julie', N'', N'C', 5, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (15, 6, N'Kevin', N'', N'L', 6, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (16, 7, N'Michael', N'', N'B', 7, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (17, 8, N'Joseph', N'', N'J', 8, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (18, 9, N'Devin', N'', N'P', 9, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (19, 10, N'Logan', N'', N'F', 10, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (20, 11, N'Vikram', N'', N'N', 11, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (21, 12, N'Rachel', N'', N'Z', 12, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (22, 13, N'Zach', N'', N'M', 13, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (23, 14, N'Justin', N'', N'H', 14, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (24, 15, N'Rahul', N'', N'R', 15, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1007, 16, N'Dave', N'', N'C', 16, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1008, 17, N'Nelson', N'', N'H', 17, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1010, 18, N'Andrew', N'', N'P', 18, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1011, 19, N'Nathan', N'', N'S', 19, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1012, 20, N'John', N'', N'H', 20, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1013, 21, N'Anwell', N'', N'W', 21, 1)
INSERT [dbo].[STUDENT] ([id], [pid], [firstname], [middlename], [lastname], [ssn], [resident_status]) VALUES (1014, 22, N'Tim', N'', N'K', 22, 1)
SET IDENTITY_INSERT [dbo].[STUDENT] OFF
SET IDENTITY_INSERT [dbo].[STUDENT_DEGREE] ON 

INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (4, 10, 3)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (5, 11, 3)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (6, 12, 3)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (7, 13, 3)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (8, 14, 3)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (9, 15, 5)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (10, 16, 5)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (11, 17, 5)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (12, 18, 5)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (13, 19, 5)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (14, 20, 4)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (15, 21, 4)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (16, 22, 4)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (17, 23, 4)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (18, 24, 4)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1004, 1007, 6)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1005, 1008, 6)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1006, 1010, 6)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1007, 1011, 6)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1008, 1012, 6)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1009, 1013, 6)
INSERT [dbo].[STUDENT_DEGREE] ([id], [student_id], [degree_id]) VALUES (1010, 1014, 6)
SET IDENTITY_INSERT [dbo].[STUDENT_DEGREE] OFF
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (10, 10, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (11, 10, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (12, 10, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (13, 10, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (14, 10, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (15, 10, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (16, 33, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (17, 33, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (18, 33, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (19, 33, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (20, 41, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (21, 41, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (22, 41, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (23, 41, 8, 1)
INSERT [dbo].[UNDERGRAD] ([id], [major_id], [minor_id], [college_id]) VALUES (24, 41, 8, 1)
SET IDENTITY_INSERT [dbo].[UNIT_CATEGORY] ON 

INSERT [dbo].[UNIT_CATEGORY] ([id], [totalunit]) VALUES (2, 40)
INSERT [dbo].[UNIT_CATEGORY] ([id], [totalunit]) VALUES (3, 35)
INSERT [dbo].[UNIT_CATEGORY] ([id], [totalunit]) VALUES (4, 50)
INSERT [dbo].[UNIT_CATEGORY] ([id], [totalunit]) VALUES (5, 45)
SET IDENTITY_INSERT [dbo].[UNIT_CATEGORY] OFF
SET IDENTITY_INSERT [dbo].[UNIT_COURSE_CATEGORY] ON 

INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1, 2, 1)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (2, 2, 2)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (3, 2, 3)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (4, 3, 4)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (5, 3, 5)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (6, 4, 6)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (7, 4, 7)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (8, 4, 8)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1002, 2, 11)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1003, 3, 11)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1004, 3, 12)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1005, 4, 11)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1006, 5, 13)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1007, 5, 9)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1008, 5, 10)
INSERT [dbo].[UNIT_COURSE_CATEGORY] ([id], [unit_category_id], [course_category_id]) VALUES (1009, 5, 12)
SET IDENTITY_INSERT [dbo].[UNIT_COURSE_CATEGORY] OFF
SET IDENTITY_INSERT [dbo].[UNIT_REQUIREMENT] ON 

INSERT [dbo].[UNIT_REQUIREMENT] ([id], [department_id], [degree_id], [totalunit_id]) VALUES (1, 10, 3, 2)
INSERT [dbo].[UNIT_REQUIREMENT] ([id], [department_id], [degree_id], [totalunit_id]) VALUES (2, 41, 4, 3)
INSERT [dbo].[UNIT_REQUIREMENT] ([id], [department_id], [degree_id], [totalunit_id]) VALUES (3, 33, 5, 4)
INSERT [dbo].[UNIT_REQUIREMENT] ([id], [department_id], [degree_id], [totalunit_id]) VALUES (4, 10, 6, 5)
SET IDENTITY_INSERT [dbo].[UNIT_REQUIREMENT] OFF
SET IDENTITY_INSERT [dbo].[WEEKDAY] ON 

INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (1, N'Monday')
INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (2, N'Tuesday')
INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (3, N'Wednesday')
INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (4, N'Thursday')
INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (5, N'Friday')
INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (6, N'Saturday')
INSERT [dbo].[WEEKDAY] ([id], [day]) VALUES (7, N'Sunday')
SET IDENTITY_INSERT [dbo].[WEEKDAY] OFF
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (1, N'Monday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (2, N'Wednesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (3, N'Friday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (4, N'Monday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (5, N'Wednesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (6, N'Friday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (7, N'Monday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (8, N'Wednesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (9, N'Friday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (10, N'Monday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (11, N'Wednesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (12, N'Friday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (13, N'Monday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (14, N'Wednesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (15, N'Friday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (16, N'Friday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (17, N'Tuesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (18, N'Thursday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (19, N'Tuesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (20, N'Thursday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (21, N'Tuesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (22, N'Thursday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (23, N'Tuesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (24, N'Thursday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (25, N'Wednesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (26, N'Tuesday')
INSERT [dbo].[WEEKLY_MEETING] ([id], [weekday]) VALUES (27, N'Thursday')
/****** Object:  Index [IX_CLASS]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[CLASS] ADD  CONSTRAINT [IX_CLASS] UNIQUE NONCLUSTERED 
(
	[course_id] ASC,
	[quarter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_COMMITTEE_FACULTY]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[COMMITTEE_FACULTY] ADD  CONSTRAINT [IX_COMMITTEE_FACULTY] UNIQUE NONCLUSTERED 
(
	[committee_id] ASC,
	[faculty_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_COURSE_TYPE_CATEGORY]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[COURSE_TYPE_CATEGORY] ADD  CONSTRAINT [IX_COURSE_TYPE_CATEGORY] UNIQUE NONCLUSTERED 
(
	[course_id] ASC,
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MS_CONCENTRATION_REQUIREMENT]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[MS_CONCENTRATION_REQUIREMENT] ADD  CONSTRAINT [IX_MS_CONCENTRATION_REQUIREMENT] UNIQUE NONCLUSTERED 
(
	[concentration_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PROBATION_PERIOD]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[PROBATION_PERIOD] ADD  CONSTRAINT [IX_PROBATION_PERIOD] UNIQUE NONCLUSTERED 
(
	[quarter_id] ASC,
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QUARTER]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[QUARTER] ADD  CONSTRAINT [IX_QUARTER] UNIQUE NONCLUSTERED 
(
	[name_id] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_STUDENT]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[STUDENT] ADD  CONSTRAINT [IX_STUDENT] UNIQUE NONCLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_STUDENT_1]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[STUDENT] ADD  CONSTRAINT [IX_STUDENT_1] UNIQUE NONCLUSTERED 
(
	[ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_STUDENT_DEGREE]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[STUDENT_DEGREE] ADD  CONSTRAINT [IX_STUDENT_DEGREE] UNIQUE NONCLUSTERED 
(
	[student_id] ASC,
	[degree_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UNIT_REQUIREMENT]    Script Date: 5/28/2017 11:36:41 AM ******/
ALTER TABLE [dbo].[UNIT_REQUIREMENT] ADD  CONSTRAINT [IX_UNIT_REQUIREMENT] UNIQUE NONCLUSTERED 
(
	[degree_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ATTENDANCE]  WITH CHECK ADD  CONSTRAINT [FK_ATTENDANCE_QUARTER] FOREIGN KEY([quarter_id])
REFERENCES [dbo].[QUARTER] ([id])
GO
ALTER TABLE [dbo].[ATTENDANCE] CHECK CONSTRAINT [FK_ATTENDANCE_QUARTER]
GO
ALTER TABLE [dbo].[ATTENDANCE]  WITH CHECK ADD  CONSTRAINT [FK_ATTENDANCE_STUDENT] FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[ATTENDANCE] CHECK CONSTRAINT [FK_ATTENDANCE_STUDENT]
GO
ALTER TABLE [dbo].[BOOK_AVAILABILITY]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_AVAILABILITY_BOOK] FOREIGN KEY([book_id])
REFERENCES [dbo].[BOOK] ([id])
GO
ALTER TABLE [dbo].[BOOK_AVAILABILITY] CHECK CONSTRAINT [FK_BOOK_AVAILABILITY_BOOK]
GO
ALTER TABLE [dbo].[BOOK_AVAILABILITY]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_AVAILABILITY_BOOK_CONDITION] FOREIGN KEY([condition_id])
REFERENCES [dbo].[BOOK_CONDITION] ([id])
GO
ALTER TABLE [dbo].[BOOK_AVAILABILITY] CHECK CONSTRAINT [FK_BOOK_AVAILABILITY_BOOK_CONDITION]
GO
ALTER TABLE [dbo].[BSMS_STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_BSMS_STUDENT_COLLEGE] FOREIGN KEY([college_id])
REFERENCES [dbo].[COLLEGE] ([id])
GO
ALTER TABLE [dbo].[BSMS_STUDENT] CHECK CONSTRAINT [FK_BSMS_STUDENT_COLLEGE]
GO
ALTER TABLE [dbo].[BSMS_STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_BSMS_STUDENT_DEPARTMENT] FOREIGN KEY([major_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[BSMS_STUDENT] CHECK CONSTRAINT [FK_BSMS_STUDENT_DEPARTMENT]
GO
ALTER TABLE [dbo].[BSMS_STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_BSMS_STUDENT_DEPARTMENT1] FOREIGN KEY([minor_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[BSMS_STUDENT] CHECK CONSTRAINT [FK_BSMS_STUDENT_DEPARTMENT1]
GO
ALTER TABLE [dbo].[BSMS_STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_BSMS_STUDENT_MASTER] FOREIGN KEY([id])
REFERENCES [dbo].[MASTER] ([id])
GO
ALTER TABLE [dbo].[BSMS_STUDENT] CHECK CONSTRAINT [FK_BSMS_STUDENT_MASTER]
GO
ALTER TABLE [dbo].[CLASS]  WITH CHECK ADD  CONSTRAINT [FK_CLASS_COURSE] FOREIGN KEY([course_id])
REFERENCES [dbo].[COURSE] ([id])
GO
ALTER TABLE [dbo].[CLASS] CHECK CONSTRAINT [FK_CLASS_COURSE]
GO
ALTER TABLE [dbo].[CLASS]  WITH CHECK ADD  CONSTRAINT [FK_CLASS_QUARTER] FOREIGN KEY([quarter_id])
REFERENCES [dbo].[QUARTER] ([id])
GO
ALTER TABLE [dbo].[CLASS] CHECK CONSTRAINT [FK_CLASS_QUARTER]
GO
ALTER TABLE [dbo].[COMMITTEE_FACULTY]  WITH CHECK ADD  CONSTRAINT [FK_COMMITTEE_FACULTY_COMMITTEE] FOREIGN KEY([committee_id])
REFERENCES [dbo].[COMMITTEE] ([id])
GO
ALTER TABLE [dbo].[COMMITTEE_FACULTY] CHECK CONSTRAINT [FK_COMMITTEE_FACULTY_COMMITTEE]
GO
ALTER TABLE [dbo].[COMMITTEE_FACULTY]  WITH CHECK ADD  CONSTRAINT [FK_COMMITTEE_FACULTY_FACULTY] FOREIGN KEY([faculty_id])
REFERENCES [dbo].[FACULTY] ([id])
GO
ALTER TABLE [dbo].[COMMITTEE_FACULTY] CHECK CONSTRAINT [FK_COMMITTEE_FACULTY_FACULTY]
GO
ALTER TABLE [dbo].[COMMITTEE_GRAD]  WITH CHECK ADD  CONSTRAINT [FK_COMMITTEE_GRAD_COMMITTEE] FOREIGN KEY([committee_id])
REFERENCES [dbo].[COMMITTEE] ([id])
GO
ALTER TABLE [dbo].[COMMITTEE_GRAD] CHECK CONSTRAINT [FK_COMMITTEE_GRAD_COMMITTEE]
GO
ALTER TABLE [dbo].[COMMITTEE_GRAD]  WITH CHECK ADD  CONSTRAINT [FK_COMMITTEE_GRAD_GRAD] FOREIGN KEY([grad_id])
REFERENCES [dbo].[GRAD] ([id])
GO
ALTER TABLE [dbo].[COMMITTEE_GRAD] CHECK CONSTRAINT [FK_COMMITTEE_GRAD_GRAD]
GO
ALTER TABLE [dbo].[COMMITTEE_PHD]  WITH CHECK ADD  CONSTRAINT [FK_COMMITTEE_PHD_COMMITTEE] FOREIGN KEY([committee_id])
REFERENCES [dbo].[COMMITTEE] ([id])
GO
ALTER TABLE [dbo].[COMMITTEE_PHD] CHECK CONSTRAINT [FK_COMMITTEE_PHD_COMMITTEE]
GO
ALTER TABLE [dbo].[COMMITTEE_PHD]  WITH CHECK ADD  CONSTRAINT [FK_COMMITTEE_PHD_PHD_CANDIDATE] FOREIGN KEY([phd_candidate_id])
REFERENCES [dbo].[PHD_CANDIDATE] ([id])
GO
ALTER TABLE [dbo].[COMMITTEE_PHD] CHECK CONSTRAINT [FK_COMMITTEE_PHD_PHD_CANDIDATE]
GO
ALTER TABLE [dbo].[COURSE]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_COURSE_SUBJECT] FOREIGN KEY([subject_id])
REFERENCES [dbo].[COURSE_SUBJECT] ([subject_id])
GO
ALTER TABLE [dbo].[COURSE] CHECK CONSTRAINT [FK_COURSE_COURSE_SUBJECT]
GO
ALTER TABLE [dbo].[COURSE_CATEGORY_REQUIREMENT]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_CATEGORY_REQUIREMENT_COURSE_TYPE] FOREIGN KEY([type_id])
REFERENCES [dbo].[COURSE_TYPE] ([id])
GO
ALTER TABLE [dbo].[COURSE_CATEGORY_REQUIREMENT] CHECK CONSTRAINT [FK_COURSE_CATEGORY_REQUIREMENT_COURSE_TYPE]
GO
ALTER TABLE [dbo].[COURSE_SUBJECT]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_SUBJECT_DEPARTMENT] FOREIGN KEY([dept_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[COURSE_SUBJECT] CHECK CONSTRAINT [FK_COURSE_SUBJECT_DEPARTMENT]
GO
ALTER TABLE [dbo].[COURSE_TYPE_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_TYPE_CATEGORY_COURSE] FOREIGN KEY([course_id])
REFERENCES [dbo].[COURSE] ([id])
GO
ALTER TABLE [dbo].[COURSE_TYPE_CATEGORY] CHECK CONSTRAINT [FK_COURSE_TYPE_CATEGORY_COURSE]
GO
ALTER TABLE [dbo].[COURSE_TYPE_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_TYPE_CATEGORY_COURSE_TYPE] FOREIGN KEY([type_id])
REFERENCES [dbo].[COURSE_TYPE] ([id])
GO
ALTER TABLE [dbo].[COURSE_TYPE_CATEGORY] CHECK CONSTRAINT [FK_COURSE_TYPE_CATEGORY_COURSE_TYPE]
GO
ALTER TABLE [dbo].[DEGREE]  WITH CHECK ADD  CONSTRAINT [FK_DEGREE_DEGREE_TYPE] FOREIGN KEY([type_id])
REFERENCES [dbo].[DEGREE_TYPE] ([id])
GO
ALTER TABLE [dbo].[DEGREE] CHECK CONSTRAINT [FK_DEGREE_DEGREE_TYPE]
GO
ALTER TABLE [dbo].[DISCUSSION]  WITH CHECK ADD  CONSTRAINT [FK_DISCUSSION_WEEKLY_MEETING] FOREIGN KEY([id])
REFERENCES [dbo].[WEEKLY_MEETING] ([id])
GO
ALTER TABLE [dbo].[DISCUSSION] CHECK CONSTRAINT [FK_DISCUSSION_WEEKLY_MEETING]
GO
ALTER TABLE [dbo].[ENROLLMENT]  WITH CHECK ADD  CONSTRAINT [FK_ENROLLMENT_SECTION] FOREIGN KEY([section_id])
REFERENCES [dbo].[SECTION] ([id])
GO
ALTER TABLE [dbo].[ENROLLMENT] CHECK CONSTRAINT [FK_ENROLLMENT_SECTION]
GO
ALTER TABLE [dbo].[ENROLLMENT]  WITH CHECK ADD  CONSTRAINT [FK_ENROLLMENT_STUDENT] FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[ENROLLMENT] CHECK CONSTRAINT [FK_ENROLLMENT_STUDENT]
GO
ALTER TABLE [dbo].[FACULTY]  WITH CHECK ADD  CONSTRAINT [FK_FACULTY_DEPARTMENT] FOREIGN KEY([dept_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[FACULTY] CHECK CONSTRAINT [FK_FACULTY_DEPARTMENT]
GO
ALTER TABLE [dbo].[GRAD]  WITH CHECK ADD  CONSTRAINT [FK_GRAD_DEPARTMENT] FOREIGN KEY([dept_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[GRAD] CHECK CONSTRAINT [FK_GRAD_DEPARTMENT]
GO
ALTER TABLE [dbo].[GRAD]  WITH CHECK ADD  CONSTRAINT [FK_GRAD_STUDENT] FOREIGN KEY([id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[GRAD] CHECK CONSTRAINT [FK_GRAD_STUDENT]
GO
ALTER TABLE [dbo].[MASTER]  WITH CHECK ADD  CONSTRAINT [FK_MASTER_GRAD] FOREIGN KEY([id])
REFERENCES [dbo].[GRAD] ([id])
GO
ALTER TABLE [dbo].[MASTER] CHECK CONSTRAINT [FK_MASTER_GRAD]
GO
ALTER TABLE [dbo].[MEETING]  WITH CHECK ADD  CONSTRAINT [FK_MEETING_SECTION] FOREIGN KEY([section_id])
REFERENCES [dbo].[SECTION] ([id])
GO
ALTER TABLE [dbo].[MEETING] CHECK CONSTRAINT [FK_MEETING_SECTION]
GO
ALTER TABLE [dbo].[MS_CONCENTRATION]  WITH CHECK ADD  CONSTRAINT [FK_MS_CONCENTRATION_DEGREE] FOREIGN KEY([degree_id])
REFERENCES [dbo].[DEGREE] ([id])
GO
ALTER TABLE [dbo].[MS_CONCENTRATION] CHECK CONSTRAINT [FK_MS_CONCENTRATION_DEGREE]
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_COURSE]  WITH CHECK ADD  CONSTRAINT [FK_MS_CONCENTRATION_COURSE_COURSE] FOREIGN KEY([course_id])
REFERENCES [dbo].[COURSE] ([id])
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_COURSE] CHECK CONSTRAINT [FK_MS_CONCENTRATION_COURSE_COURSE]
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_COURSE]  WITH CHECK ADD  CONSTRAINT [FK_MS_CONCENTRATION_COURSE_MS_CONCENTRATION] FOREIGN KEY([concentration_id])
REFERENCES [dbo].[MS_CONCENTRATION] ([id])
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_COURSE] CHECK CONSTRAINT [FK_MS_CONCENTRATION_COURSE_MS_CONCENTRATION]
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_REQUIREMENT]  WITH CHECK ADD  CONSTRAINT [FK_MS_CONCENTRATION_REQUIREMENT_COURSE_CATEGORY_REQUIREMENT] FOREIGN KEY([course_category_id])
REFERENCES [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id])
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_REQUIREMENT] CHECK CONSTRAINT [FK_MS_CONCENTRATION_REQUIREMENT_COURSE_CATEGORY_REQUIREMENT]
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_REQUIREMENT]  WITH CHECK ADD  CONSTRAINT [FK_MS_CONCENTRATION_REQUIREMENT_MS_CONCENTRATION] FOREIGN KEY([concentration_id])
REFERENCES [dbo].[MS_CONCENTRATION] ([id])
GO
ALTER TABLE [dbo].[MS_CONCENTRATION_REQUIREMENT] CHECK CONSTRAINT [FK_MS_CONCENTRATION_REQUIREMENT_MS_CONCENTRATION]
GO
ALTER TABLE [dbo].[NON_DISCUSSION]  WITH CHECK ADD  CONSTRAINT [FK_NON_DISCUSSION_WEEKLY_MEETING] FOREIGN KEY([id])
REFERENCES [dbo].[WEEKLY_MEETING] ([id])
GO
ALTER TABLE [dbo].[NON_DISCUSSION] CHECK CONSTRAINT [FK_NON_DISCUSSION_WEEKLY_MEETING]
GO
ALTER TABLE [dbo].[PHD]  WITH CHECK ADD  CONSTRAINT [FK_PHD_GRAD] FOREIGN KEY([id])
REFERENCES [dbo].[GRAD] ([id])
GO
ALTER TABLE [dbo].[PHD] CHECK CONSTRAINT [FK_PHD_GRAD]
GO
ALTER TABLE [dbo].[PHD_CANDIDATE]  WITH CHECK ADD  CONSTRAINT [FK_PHD_CANDIDATE_FACULTY] FOREIGN KEY([advisor_id])
REFERENCES [dbo].[FACULTY] ([id])
GO
ALTER TABLE [dbo].[PHD_CANDIDATE] CHECK CONSTRAINT [FK_PHD_CANDIDATE_FACULTY]
GO
ALTER TABLE [dbo].[PHD_CANDIDATE]  WITH CHECK ADD  CONSTRAINT [FK_PHD_CANDIDATE_PHD] FOREIGN KEY([id])
REFERENCES [dbo].[PHD] ([id])
GO
ALTER TABLE [dbo].[PHD_CANDIDATE] CHECK CONSTRAINT [FK_PHD_CANDIDATE_PHD]
GO
ALTER TABLE [dbo].[PHD_PRECANDIDATE]  WITH CHECK ADD  CONSTRAINT [FK_PHD_PRECANDIDATE_PHD] FOREIGN KEY([id])
REFERENCES [dbo].[PHD] ([id])
GO
ALTER TABLE [dbo].[PHD_PRECANDIDATE] CHECK CONSTRAINT [FK_PHD_PRECANDIDATE_PHD]
GO
ALTER TABLE [dbo].[PREREQUISITE]  WITH CHECK ADD  CONSTRAINT [FK_PREREQUISITE_COURSE] FOREIGN KEY([course_id])
REFERENCES [dbo].[COURSE] ([id])
GO
ALTER TABLE [dbo].[PREREQUISITE] CHECK CONSTRAINT [FK_PREREQUISITE_COURSE]
GO
ALTER TABLE [dbo].[PREREQUISITE]  WITH CHECK ADD  CONSTRAINT [FK_PREREQUISITE_COURSE1] FOREIGN KEY([prereq_id])
REFERENCES [dbo].[COURSE] ([id])
GO
ALTER TABLE [dbo].[PREREQUISITE] CHECK CONSTRAINT [FK_PREREQUISITE_COURSE1]
GO
ALTER TABLE [dbo].[PROBATION_PERIOD]  WITH CHECK ADD  CONSTRAINT [FK_PROBATION_PERIOD_QUARTER] FOREIGN KEY([quarter_id])
REFERENCES [dbo].[QUARTER] ([id])
GO
ALTER TABLE [dbo].[PROBATION_PERIOD] CHECK CONSTRAINT [FK_PROBATION_PERIOD_QUARTER]
GO
ALTER TABLE [dbo].[PROBATION_PERIOD]  WITH CHECK ADD  CONSTRAINT [FK_PROBATION_PERIOD_STUDENT] FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[PROBATION_PERIOD] CHECK CONSTRAINT [FK_PROBATION_PERIOD_STUDENT]
GO
ALTER TABLE [dbo].[QUARTER]  WITH CHECK ADD  CONSTRAINT [FK_QUARTER_QUARTER_NAME] FOREIGN KEY([name_id])
REFERENCES [dbo].[QUARTER_NAME] ([id])
GO
ALTER TABLE [dbo].[QUARTER] CHECK CONSTRAINT [FK_QUARTER_QUARTER_NAME]
GO
ALTER TABLE [dbo].[REVIEW_SESSION]  WITH CHECK ADD  CONSTRAINT [FK_REVIEW_SESSION_MEETING] FOREIGN KEY([id])
REFERENCES [dbo].[MEETING] ([id])
GO
ALTER TABLE [dbo].[REVIEW_SESSION] CHECK CONSTRAINT [FK_REVIEW_SESSION_MEETING]
GO
ALTER TABLE [dbo].[SECTION]  WITH CHECK ADD  CONSTRAINT [FK_SECTION_CLASS] FOREIGN KEY([class_id])
REFERENCES [dbo].[CLASS] ([id])
GO
ALTER TABLE [dbo].[SECTION] CHECK CONSTRAINT [FK_SECTION_CLASS]
GO
ALTER TABLE [dbo].[SECTION]  WITH CHECK ADD  CONSTRAINT [FK_SECTION_FACULTY] FOREIGN KEY([faculty_id])
REFERENCES [dbo].[FACULTY] ([id])
GO
ALTER TABLE [dbo].[SECTION] CHECK CONSTRAINT [FK_SECTION_FACULTY]
GO
ALTER TABLE [dbo].[SECTION_BOOKLIST]  WITH CHECK ADD  CONSTRAINT [FK_SECTION_BOOKLIST_BOOK] FOREIGN KEY([book_id])
REFERENCES [dbo].[BOOK] ([id])
GO
ALTER TABLE [dbo].[SECTION_BOOKLIST] CHECK CONSTRAINT [FK_SECTION_BOOKLIST_BOOK]
GO
ALTER TABLE [dbo].[SECTION_BOOKLIST]  WITH CHECK ADD  CONSTRAINT [FK_SECTION_BOOKLIST_SECTION] FOREIGN KEY([section_id])
REFERENCES [dbo].[SECTION] ([id])
GO
ALTER TABLE [dbo].[SECTION_BOOKLIST] CHECK CONSTRAINT [FK_SECTION_BOOKLIST_SECTION]
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_RESIDENT_STATUS] FOREIGN KEY([resident_status])
REFERENCES [dbo].[RESIDENT_STATUS] ([id])
GO
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_RESIDENT_STATUS]
GO
ALTER TABLE [dbo].[STUDENT_DEGREE]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_DEGREE_DEGREE] FOREIGN KEY([degree_id])
REFERENCES [dbo].[DEGREE] ([id])
GO
ALTER TABLE [dbo].[STUDENT_DEGREE] CHECK CONSTRAINT [FK_STUDENT_DEGREE_DEGREE]
GO
ALTER TABLE [dbo].[STUDENT_DEGREE]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_DEGREE_STUDENT] FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[STUDENT_DEGREE] CHECK CONSTRAINT [FK_STUDENT_DEGREE_STUDENT]
GO
ALTER TABLE [dbo].[UNDERGRAD]  WITH CHECK ADD  CONSTRAINT [FK_UNDERGRAD_COLLEGE] FOREIGN KEY([college_id])
REFERENCES [dbo].[COLLEGE] ([id])
GO
ALTER TABLE [dbo].[UNDERGRAD] CHECK CONSTRAINT [FK_UNDERGRAD_COLLEGE]
GO
ALTER TABLE [dbo].[UNDERGRAD]  WITH CHECK ADD  CONSTRAINT [FK_UNDERGRAD_DEPARTMENT] FOREIGN KEY([minor_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[UNDERGRAD] CHECK CONSTRAINT [FK_UNDERGRAD_DEPARTMENT]
GO
ALTER TABLE [dbo].[UNDERGRAD]  WITH CHECK ADD  CONSTRAINT [FK_UNDERGRAD_DEPARTMENT1] FOREIGN KEY([major_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[UNDERGRAD] CHECK CONSTRAINT [FK_UNDERGRAD_DEPARTMENT1]
GO
ALTER TABLE [dbo].[UNDERGRAD]  WITH CHECK ADD  CONSTRAINT [FK_UNDERGRAD_STUDENT] FOREIGN KEY([id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[UNDERGRAD] CHECK CONSTRAINT [FK_UNDERGRAD_STUDENT]
GO
ALTER TABLE [dbo].[UNIT_COURSE_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_UNIT_COURSE_CATEGORY_COURSE_CATEGORY_REQUIREMENT] FOREIGN KEY([course_category_id])
REFERENCES [dbo].[COURSE_CATEGORY_REQUIREMENT] ([id])
GO
ALTER TABLE [dbo].[UNIT_COURSE_CATEGORY] CHECK CONSTRAINT [FK_UNIT_COURSE_CATEGORY_COURSE_CATEGORY_REQUIREMENT]
GO
ALTER TABLE [dbo].[UNIT_COURSE_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_UNIT_COURSE_CATEGORY_UNIT_CATEGORY] FOREIGN KEY([unit_category_id])
REFERENCES [dbo].[UNIT_CATEGORY] ([id])
GO
ALTER TABLE [dbo].[UNIT_COURSE_CATEGORY] CHECK CONSTRAINT [FK_UNIT_COURSE_CATEGORY_UNIT_CATEGORY]
GO
ALTER TABLE [dbo].[UNIT_REQUIREMENT]  WITH CHECK ADD  CONSTRAINT [FK_UNIT_REQUIREMENT_DEGREE] FOREIGN KEY([degree_id])
REFERENCES [dbo].[DEGREE] ([id])
GO
ALTER TABLE [dbo].[UNIT_REQUIREMENT] CHECK CONSTRAINT [FK_UNIT_REQUIREMENT_DEGREE]
GO
ALTER TABLE [dbo].[UNIT_REQUIREMENT]  WITH CHECK ADD  CONSTRAINT [FK_UNIT_REQUIREMENT_DEPARTMENT] FOREIGN KEY([department_id])
REFERENCES [dbo].[DEPARTMENT] ([id])
GO
ALTER TABLE [dbo].[UNIT_REQUIREMENT] CHECK CONSTRAINT [FK_UNIT_REQUIREMENT_DEPARTMENT]
GO
ALTER TABLE [dbo].[UNIT_REQUIREMENT]  WITH CHECK ADD  CONSTRAINT [FK_UNIT_REQUIREMENT_UNIT_CATEGORY] FOREIGN KEY([totalunit_id])
REFERENCES [dbo].[UNIT_CATEGORY] ([id])
GO
ALTER TABLE [dbo].[UNIT_REQUIREMENT] CHECK CONSTRAINT [FK_UNIT_REQUIREMENT_UNIT_CATEGORY]
GO
ALTER TABLE [dbo].[WAITLIST]  WITH CHECK ADD  CONSTRAINT [FK_WAITLIST_SECTION] FOREIGN KEY([section_id])
REFERENCES [dbo].[SECTION] ([id])
GO
ALTER TABLE [dbo].[WAITLIST] CHECK CONSTRAINT [FK_WAITLIST_SECTION]
GO
ALTER TABLE [dbo].[WAITLIST]  WITH CHECK ADD  CONSTRAINT [FK_WAITLIST_STUDENT] FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENT] ([id])
GO
ALTER TABLE [dbo].[WAITLIST] CHECK CONSTRAINT [FK_WAITLIST_STUDENT]
GO
ALTER TABLE [dbo].[WEEKLY_MEETING]  WITH CHECK ADD  CONSTRAINT [FK_WEEKLY_MEETING_MEETING] FOREIGN KEY([id])
REFERENCES [dbo].[MEETING] ([id])
GO
ALTER TABLE [dbo].[WEEKLY_MEETING] CHECK CONSTRAINT [FK_WEEKLY_MEETING_MEETING]
GO
ALTER TABLE [dbo].[UNDERGRAD]  WITH CHECK ADD  CONSTRAINT [CK_UNDERGRAD] CHECK  (([major_id]<>[minor_id]))
GO
ALTER TABLE [dbo].[UNDERGRAD] CHECK CONSTRAINT [CK_UNDERGRAD]
GO
