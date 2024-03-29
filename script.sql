USE [master]
GO
/****** Object:  Database [Company]    Script Date: 9/24/2019 10:16:15 PM ******/
CREATE DATABASE [Company]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Company', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SHUU\MSSQL\DATA\Company.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Company_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SHUU\MSSQL\DATA\Company_log.ldf' , SIZE = 2560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Company] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Company].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Company] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Company] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Company] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Company] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Company] SET ARITHABORT OFF 
GO
ALTER DATABASE [Company] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Company] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Company] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Company] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Company] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Company] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Company] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Company] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Company] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Company] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Company] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Company] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Company] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Company] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Company] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Company] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Company] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Company] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Company] SET  MULTI_USER 
GO
ALTER DATABASE [Company] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Company] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Company] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Company] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Company] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Company]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_About]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C_About](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[ContentAbout] [nvarchar](max) NULL,
	[Picture] [varchar](100) NULL,
	[SubContent01] [nvarchar](100) NULL,
	[SubContent02] [nvarchar](100) NULL,
 CONSTRAINT [PK_C_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[C_Contact]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
 CONSTRAINT [PK_C_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_Homepage]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Homepage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title01] [nvarchar](100) NULL,
	[Content01] [nvarchar](500) NULL,
	[Title02] [nvarchar](100) NULL,
	[Content02] [nvarchar](500) NULL,
	[Title03] [nvarchar](100) NULL,
	[Content03] [nvarchar](500) NULL,
	[Picture01] [nvarchar](100) NULL,
	[Title04] [nvarchar](100) NULL,
	[SubTitle01] [nvarchar](max) NULL,
	[TextTitle01] [nvarchar](50) NULL,
	[Text01] [nvarchar](100) NULL,
	[TextTitle02] [nvarchar](50) NULL,
	[Text02] [nvarchar](100) NULL,
	[TextTitle03] [nvarchar](50) NULL,
	[Text03] [nvarchar](100) NULL,
	[TextTitle04] [nvarchar](50) NULL,
	[Text04] [nvarchar](100) NULL,
	[TextTitle05] [nvarchar](50) NULL,
	[Text05] [nvarchar](100) NULL,
	[TextTitle06] [nvarchar](50) NULL,
	[Text06] [nvarchar](100) NULL,
	[Title05] [nvarchar](100) NULL,
	[SubTitle02] [nvarchar](max) NULL,
	[Title06] [nvarchar](100) NULL,
	[SubTitle03] [nvarchar](max) NULL,
	[Picture02] [nvarchar](100) NULL,
	[Picture03] [nvarchar](100) NULL,
	[Picture04] [nvarchar](100) NULL,
 CONSTRAINT [PK_C_Homepage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_Mission]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Mission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[SubTitle] [nvarchar](max) NULL,
	[SubContentTitle01] [nvarchar](100) NULL,
	[SubContent01] [nvarchar](max) NULL,
	[SubContentTitle02] [nvarchar](100) NULL,
	[SubContent02] [nvarchar](max) NULL,
	[SubContentTitle03] [nvarchar](100) NULL,
	[SubContent03] [nvarchar](max) NULL,
 CONSTRAINT [PK_C_Mission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_News]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C_News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Avatar] [varchar](100) NULL,
	[ContentNews] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Author] [nvarchar](50) NULL,
 CONSTRAINT [PK_C_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[C_Policy]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Policy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[ContentPolicy] [nvarchar](max) NULL,
 CONSTRAINT [PK_C_Policy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_Product]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CareerTitle] [nvarchar](200) NULL,
	[CareerContent] [nvarchar](max) NULL,
	[BusinessTitle] [nvarchar](200) NULL,
	[BusinessContent] [nvarchar](max) NULL,
 CONSTRAINT [PK_C_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_Project]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C_Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Avatar] [varchar](100) NULL,
	[ContentProject] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Author] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_C_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[C_Recruitment]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Recruitment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[ContentRecruit] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Position] [nvarchar](50) NULL,
	[Picture] [nvarchar](100) NULL,
 CONSTRAINT [PK_C_Recruitment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[C_Slider]    Script Date: 9/24/2019 10:16:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[SubTitle] [nvarchar](500) NULL,
 CONSTRAINT [PK_C_Slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201908080007010_InitialCreate', N'AL_s_Project.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E5FA0FF41D053BB48AD5C7606B3813D85EB24DDA0B9619C19EC5B404BB4A38E44A912952628FACBFAD09FB47F610F25EAC68B2EB6623B458122160F3F1E1E7E240F0F0FE77F7FFE35FEE1D9F78C271CC56E4026E6D1E8D03430B103C725AB8999D0E5F71FCC1F3E7EF38FF1B9E33F1B5F72B913260735493C311F290D4F2D2BB61FB18FE291EFDA5110074B3AB203DF424E601D1F1EFEDB3A3AB2304098806518E34F09A1AE8FD31FF07316101B873441DE75E0602FE6DFA1649EA21A37C8C771886C3C31A7570FF1C35D14FC826D3ACAC44D63EAB9085499636F691A889080220A8A9E7E8EF19C460159CD43F880BCFB971083DC127931E61D382DC5BBF6E5F098F5C52A2BE6507612D3C0EF097874C28D6389D5D732B159180FCC770E66A62FACD7A90927E6A583D34F9F020F0C2036783AF322263C31AF8B26A6717883E928AF38CA202F2280FB2D88BE8EAA880746E77A0705998E4787ECBF036396783489F084E08446C83B30EE9285E7DA3FE397FBE02B269393A3C5F2E4C3BBF7C83979FF2F7CF2AEDA53E82BC8D53EC027A0498823D00D2F8BFE9B8655AF6789158B6A953A9955804B302F4CE31A3D5F61B2A28F30638E3F98C685FB8C9DFC0B27D767E2C234824A344AE0E74DE27968E1E1A2DC6A6C93FDBFA1D5E377EF0769F5063DB9AB74E885F661E24430AF3E612F2D8D1FDD309B5EB5F17EE0621751E0B3DF757E65A50FF320896CD699402B728FA215A675EDC65649DE4E946650C3D33A47DD7F6A334D657A2B455987D699097913DB9E0DB9BEAFDB6E67C64DC310062FA516B34813E114BBD548A87E604CAF0C2E5252E7A82B750874E9EFBC129EFBC8F506580A3BB4026EC8D28D7C5CF4F2C7008887486F9DEF501CC34AE0FC07C58F0DAAC39F03A83EC776120141E714F9E1ABB776F718107C93F80BC6FBEDB535D8D0DCFF165C209B06D13961B536C6BB0AECAF4142CF89738628FE4CED1C90FDBC77FDEE0083A833B56D1CC7174066ECCC02F0B273C04B424F8E7BC3B1F569D7AEC8CC43AEAFF6458495F421172DFD11B584E49368C4547E4993AA57C1CA25DD54CD45F5AA6612ADAA72B1BEAA32B06E9A7249BDA2A940AB9E99D4609E5E3A42C3BB7A29ECFEFB7A9B6DDEBAB5A062C639AC90F8274C7004CB98738728C5112947A0CBBAB10B67211D3ED6E8ABEF4D694B5F90970CDDD45AB3215D04869F0D29ECFECF86544DF8FCE43ACC2BE97000CA8501BE93BCFA6CD53EE704CDB63D1D6ADDDC76E3DB590374D3651AC781EDA6B34011FAE2818BBAFEE0C319ED518CAC376224043A064477D996075FA06FA648AA5B72863D4CB131B5B3D0E00CC53672643342879C1E8AE53BAA42B132225257EE9F529BC0741CB14A881D826298A92EA1F2B47089ED86C86BB59250B3E316C6FA5EB421969CE11013D660AB25BA34AE0E8030058A76844169B3D0D8AA30AE99881AAF5537E66D2E6C39EE525C622B9C6CF19D35BCE4FEDBAB10B3D9625B2067B349BA28A00DE6ED82A0FCACD29500E2C165DF082A9C983404E52ED556085AB7D80E085A37C99B23687644ED3AFEC27975DFE8593F286F7F5B6F34D70EB859B3C79E5133F33DA10E851A3892E979B66085F8992A0E67A0273F9FC5DCD51529C2C0E798D64336A5BFABF443AD661091444D8025D15A40F935A004244DA81ECAE5B1BC46EDB817D103368FBB35C2F2B55F80AD7040C6AE5E875604F597A622393B9D3E8A9E156C9048DEE9B050C15110425CBCEA1DEF60145D5C56364C175FB88F375CE9181F8C0603B578AE1A23E59D19DC4A3935DBADA472C8FAB8641B5949709F3456CA3B33B8953847DB8DA4700A7AB8051B99A8BE850F34D9F24847B1DB1465632B4B93E21FC696269F6A7C8DC2D025AB4A7E15FF62CCB3E4AAD9F7F3FE49477E8661D9B122F7A8D0B6688906115A61A1149A064D2FDC28A66788A20562719E99E34B62CABD55B3FCE74D56B74F7910F37D2097667F73EA292EEF6B9BADEC8D70900BE8A2CF5C9A348EAE2080BABAC112DE90872245E87E1678894FF41E96BE76768157AD9F7D9111C696A0BFE44149E692FCDCBAED3B8D8C3C2B861AA5C283597FA4F4103A7BE7FE67D5E23A9F548F9287A8AA28BAB0D5CE464EE7CAF41B2DD14DEC3F58AD08AF33B3786E4A15807FEA8951496F90C02A65DD51EB192855CC7A49774421CDA40A2914F5D0B29A4C5253B25AB0169EC6A26A89EE2DC8E9235574B9B43BB22291A40AAD285E035BA1B358D61D55916B5205561477C72E134FC455748FF72EEDE165FDCD2B3BE06EB67B69305E67491C66F3ABDCE357812A9F7B62F19B7A098C7FDF4B3A694F79EBD3290B6C6C46270D867EEDA95D81D7979EC67B7B3D66ED5EBBB6BC37DDEBEBF1FA91F655A9219DF24491A2F5E2B4279CEAC6FC84D5FE94463A726522A6919B11B6F69798627FC40446F35FBD99E762B690E702D788B84B1CD32C97C33C3E3C3A161EE3ECCFC3182B8E1D4F7142D5BD8EA98FD916D2B2C8138AEC4714C949121B3C1E2941A5F8F32571F0F3C4FC3DAD759A8632D85FE9E703E332FE4CDC5F1328B88F126CFC21277D0E934CDFE1F946A1E81F6FE25D4477935FFEF721AB7A60DC46309D4E8D43C1D0EB0C7FFDB5442F6DB2AA1B68B3F61B8AB73BDB6A0F1494A8C26C59FF3DC2C2A583BC45C8B5FCD647CFDFF5554DF9DE602344C59B82A1F00631A1EECDC03A58DAF7020EFCA4E97B817E9D55BF1F584735EDDB0197F407135F0E745F86F29A3BDC871427A66D2C49A99D5B33AF374AC3DCF5DE2425686F34D1E524EC1E7083265A6FE6A2BCB104E6C1B64E457EF260D8BBE4FDAB2725EF4B1E72E9B4EF36FD789B19C70D774A7FAB44E33D488D53A4FAEC3E9D78DB5CD38580F73C27B35FD2F09E918D6FF3BB4F0DDE36D97401E23D275BAF04E03DE3DAAEF6CF1D33ADF316BAF3745E3933497395A38A22B7A5EB66217738FE2F022041E65166AF2CD5F9614DB9AD2D0D9622FA46F5896962C3D2C491DA95249A9BEDD757BEE1377696CB3437AB49E76C6A9BAFFF8D6D7399E6B6354992BB483456A629AA92BF5BD6B1A60CAAB794585CEB494B1E7B9BCFDA782FFF96F28807314A6DF6686E97DF4EDAF020261972EAF44813962F8A61EFACFCCB8CB07FC7EEAA8460FF4E23C1766DD72C642EC932C8376F41A35C4488D05C638A1CD852A7117597C8A650CC02D0E933F134A8C7AE4116D8B924B7090D130A5DC6FEC2AB05BC9813D0D47E9A0B5DD7797C1BB25FF1105D00355D16B8BF253F26AEE7147A5F2862421A08E65DF0702F1B4BCAC2BEAB9702E926201D81B8F90AA7E81EFBA10760F12D99A327BC8E6E40BF2BBC42F64B1901D481B40F44DDECE33317AD22E4C71CA3AC0F3F81C38EFFFCF1FF00BEF80BA0540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e8d4775-f03b-40bb-97d5-0bc6e10bb5ce', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3e8d4775-f03b-40bb-97d5-0bc6e10bb5ce', N'admin@gmail.com', 0, N'AFCGPzc6j2Mb4f8r4l2aBZzuDcA6oDGO1kIvFp2Ifkfk9WlEo5ZOx6qKzsTYBQkvhw==', N'f838a3f4-acc4-4a3e-b15e-3d53c28f5eb5', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[C_About] ON 

INSERT [dbo].[C_About] ([Id], [Title], [ContentAbout], [Picture], [SubContent01], [SubContent02]) VALUES (1, N'Về chúng tôi', N'<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&ocirc;ng ty TNHH Thiết bị &amp; C&ocirc;ng nghệ Phần mềm An Ph&aacute;t với mục ti&ecirc;u lu&ocirc;n nỗ lực ph&aacute;t triển bền vững. Ch&uacute;ng t&ocirc;i đ&atilde;, đang v&agrave; sẽ kh&ocirc;ng ngừng cung cấp những giải ph&aacute;p c&ocirc;ng nghệ hiện đại, bảo mật v&agrave; hiệu quả nhằm mang đến sự h&agrave;i l&ograve;ng cao nhất cho kh&aacute;ch h&agrave;ng.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hiểu biết s&acirc;u sắc nghiệp vụ: Kh&ocirc;ng chỉ nắm vững chuy&ecirc;n m&ocirc;n trong lĩnh vực CNTT, c&aacute;c th&agrave;nh vi&ecirc;n của An Ph&aacute;t c&ograve;n lu&ocirc;n sẵn s&agrave;ng t&igrave;m hiểu y&ecirc;u cầu của kh&aacute;ch h&agrave;ng, c&aacute;c quy tr&igrave;nh quản l&yacute;, thống k&ecirc;, b&aacute;o c&aacute;o..vv. Do vậy, An Ph&aacute;t c&oacute; thể hiểu r&otilde; những mong muốn v&agrave; kh&oacute; khăn của kh&aacute;ch h&agrave;ng để từ đ&oacute; mang lại những giải ph&aacute;p tối ưu nhất..</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Năng động, s&aacute;ng tạo : L&agrave; những người trẻ v&agrave; t&agrave;i năng, c&aacute;c th&agrave;nh vi&ecirc;n của An Ph&aacute;t c&oacute; phong c&aacute;ch l&agrave;m việc chuy&ecirc;n nghiệp, năng động v&agrave; v&ocirc; c&ugrave;ng s&aacute;ng tạo trong việc đưa ra những giải ph&aacute;p tới kh&aacute;ch h&agrave;ng.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Lu&ocirc;n lu&ocirc;n đổi mới : An Ph&aacute;t lu&ocirc;n cập nhật c&aacute;c c&ocirc;ng nghệ mới theo kịp với tr&igrave;nh độ khoa học kỹ thuật hiện đại, đảm bảo cung cấp cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến nhất.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif">&nbsp;</span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Lĩnh vực hoạt động:</span></span></span></span></p>

<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph&aacute;t triển phần mềm đ&oacute;ng g&oacute;i v&agrave; cung cấp c&aacute;c dịch vụ theo sản phẩm đ&oacute;ng g&oacute;i</span></span></span></span></p>

<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cung cấp giải ph&aacute;p v&agrave; dịch vụ phần mềm cho c&aacute;c đơn vị h&agrave;nh ch&iacute;nh sự nghiệp v&agrave; doanh nghiệp</span></span></span></span></p>

<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cung cấp c&aacute;c thiết bị, phần mềm đặc th&ugrave; v&agrave; chuy&ecirc;n dụng</span></span></span></span></p>
', N'about.png', N'307 Nguyễn Duy Trinh Quận 2', N'SĐT: 0938453897')
SET IDENTITY_INSERT [dbo].[C_About] OFF
SET IDENTITY_INSERT [dbo].[C_Contact] ON 

INSERT [dbo].[C_Contact] ([Id], [Address], [Email], [Phone]) VALUES (1, N'307 Nguyễn Duy Trinh Quận 2', N'xxxxxxxxx@gmail.com', N'0938453xxxx')
SET IDENTITY_INSERT [dbo].[C_Contact] OFF
SET IDENTITY_INSERT [dbo].[C_Homepage] ON 

INSERT [dbo].[C_Homepage] ([Id], [Title01], [Content01], [Title02], [Content02], [Title03], [Content03], [Picture01], [Title04], [SubTitle01], [TextTitle01], [Text01], [TextTitle02], [Text02], [TextTitle03], [Text03], [TextTitle04], [Text04], [TextTitle05], [Text05], [TextTitle06], [Text06], [Title05], [SubTitle02], [Title06], [SubTitle03], [Picture02], [Picture03], [Picture04]) VALUES (1, N'Free Support', N'Lorem Ipsum is simply dummy text the printing and typeseing industry Lorem Ipsum has been standard.', N'Quick Loading', N'Lorem Ipsum is simply dummy text the printing and typeseing industry Lorem Ipsum has been standard.', N'Awesome Design', N'Lorem Ipsum is simply dummy text the printing and typeseing industry Lorem Ipsum has been standard.', NULL, N'More Features', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting indus orem Ipsum has been the industry&#39;s standard dummy text ever since the when an own printer took a galley of type and scrambled it to make.</p>
', N'Application records', N'Lorem Ipsum is simply dummy text of the printing and typeseing', N'Best for business', N'Lorem Ipsum is simply dummy text of the printing and typeseing', N'Full free chat', N'Lorem Ipsum is simply dummy text of the printing and typeseing', N'Retina ready', N'Lorem Ipsum is simply dummy text of the printing and typeseing', N'Secure extra', N'Lorem Ipsum is simply dummy text of the printing and typeseing', N'Night vision', N'Lorem Ipsum is simply dummy text of the printing and typeseing', N'Beautiful, unique Vibrant & Modern Design', N'<p>Lorem Ipsum is simply dummy text of the printing and typeseing indury Lorem Ipsum has been the industry&#39;s standard dummy text ever since the when an Lorem Ipsum is simply dummy text of the dummy text of the printing anprinting&nbsp;<strong>Amazing Smart app landing page</strong>&nbsp;Lorem Ipsum has been the industry&#39;s standard dummy text ever since the when.Lorem Ipsum is simply text of the y Lorem Ipsum has been the indushe industry&#39;s stry&#39;s standard dummy text ever since the when an Lorem Ipsum.</p>
', N'Beautiful, unique Vibrant & Modern Design', N'<p>Lorem Ipsum is simply dummy text of the printing and typeseing indury Lorem Ipsum has been the industry&#39;s standard dummy text ever since the when an Lorem Ipsum is simply dummy text of the dummy text of the printing anprinting&nbsp;<strong>Amazing Smart app landing page</strong>&nbsp;Lorem Ipsum has been the industry&#39;s standard dummy text ever since the when.Lorem Ipsum is simply text of the y Lorem Ipsum has been the indushe industry&#39;s stry&#39;s standard dummy text ever since the when an Lorem Ipsum.</p>
', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[C_Homepage] OFF
SET IDENTITY_INSERT [dbo].[C_Mission] ON 

INSERT [dbo].[C_Mission] ([Id], [Title], [SubTitle], [SubContentTitle01], [SubContent01], [SubContentTitle02], [SubContent02], [SubContentTitle03], [SubContent03]) VALUES (1, N'Tầm nhìn - Sứ mệnh', N'<p style="text-align:justify"><strong><span style="font-size:16pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tầm nh&igrave;n:&nbsp;</span></span></span></span></strong><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Trở th&agrave;nh nh&agrave; cung ứng thiết bị v&agrave; giải ph&aacute;p c&ocirc;ng nghệ h&agrave;ng đầu cho c&aacute;c đơn vị h&agrave;nh ch&aacute;nh sự nghiệp v&agrave; c&aacute;c doanh nghiệp tr&ecirc;n to&agrave;n quốc.</span></span></span></span></p>

<p style="text-align:justify"><strong><span style="font-size:16pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Sứ mệnh:&nbsp;</span></span></span></span></strong><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Với phương ch&acirc;m Giải ph&aacute;p an to&agrave;n, an t&acirc;m ph&aacute;t triển, ch&uacute;ng t&ocirc;i mang đến c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đ&aacute;p ứng tối đa nhu cầu c&ocirc;ng nghệ h&oacute;a của kh&aacute;ch h&agrave;ng. C&aacute;c giải ph&aacute;p của ch&uacute;ng t&ocirc;i cung cấp cho kh&aacute;ch h&agrave;ng lu&ocirc;n đảm bảo những ti&ecirc;u ch&iacute; sau:</span></span></span></span></p>

<ul>
	<li style="text-align:left"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;C&ocirc;ng nghệ mới, ph&ugrave; hợp với xu hướng c&ocirc;ng nghệ to&agrave;n cầu</span></span></span></span></li>
	<li style="text-align:left"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Theo s&aacute;t quy tr&igrave;nh nghiệp vụ được quy định trong c&aacute;c th&ocirc;ng tư li&ecirc;n quan</span></span></span></span></li>
	<li style="text-align:left"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Đ&aacute;p ứng đầy đủ những y&ecirc;u cầu về bảo mật</span></span></span></span></li>
	<li style="text-align:left"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Hiệu quả cao, đ&aacute;p ứng triệt để nhu cầu của kh&aacute;ch h&agrave;ng</span></span></span></span></li>
	<li style="text-align:left"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Cung cấp giải ph&aacute;p một lần, hỗ trợ suốt thời gian sử dụng</span></span></span></span></li>
	<li style="text-align:left"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Lu&ocirc;n lu&ocirc;n cập nhật c&aacute;c t&iacute;nh năng mới đ&aacute;p ứng những nhu cầu ph&aacute;t sinh của kh&aacute;ch h&agrave;ng</span></span></span></span></li>
</ul>
', N'Trusted by 1000+ clients', N'<p>Lorem Ipsum is simply dummy text of the printing and typeseing industry Lorem Ipsum has been the industry&#39;s standard dummy text Lorem is simply dummy text of the printing and</p>
', N'Trusted by 1000+ clients', N'<p>Lorem Ipsum is simply dummy text of the printing and typeseing industry Lorem Ipsum has been the industry&#39;s standard dummy text Lorem is simply dummy text of the printing and</p>
', N'Trusted by 1000+ clients', N'<p>Lorem Ipsum is simply dummy text of the printing and typeseing industry Lorem Ipsum has been the industry&#39;s standard dummy text Lorem is simply dummy text of the printing and</p>
')
SET IDENTITY_INSERT [dbo].[C_Mission] OFF
SET IDENTITY_INSERT [dbo].[C_News] ON 

INSERT [dbo].[C_News] ([Id], [Title], [Avatar], [ContentNews], [Date], [Author]) VALUES (1, N'bbbbb', N'how-it-works-device.png', N'<p>bbbbbbb</p>
', CAST(N'2019-08-08 00:31:28.433' AS DateTime), N'bbbbbb')
SET IDENTITY_INSERT [dbo].[C_News] OFF
SET IDENTITY_INSERT [dbo].[C_Policy] ON 

INSERT [dbo].[C_Policy] ([Id], [Title], [ContentPolicy]) VALUES (1, N'Chính sách', N'<ul>
	<li style="text-align: justify;"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Sản phẩm được cấp bản quyền vĩnh viễn</span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Hỗ trợ kỹ thuật miễn ph&iacute; trong suốt qu&aacute; tr&igrave;nh sử dụng</span></span></span></span></li>
	<li><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c sản phẩm thuộc đơn vị h&agrave;nh ch&iacute;nh sự nghiệp sẽ được n&acirc;ng cấp miễn ph&iacute; khi c&oacute; sự thay đổi th&ocirc;ng tư, quy định của Nh&agrave; Nước</span></span></li>
</ul>
')
SET IDENTITY_INSERT [dbo].[C_Policy] OFF
SET IDENTITY_INSERT [dbo].[C_Product] ON 

INSERT [dbo].[C_Product] ([Id], [CareerTitle], [CareerContent], [BusinessTitle], [BusinessContent]) VALUES (1, N'Đơn vị hành chính sự nghiệp', N'<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">1/ Phần mềm quản l&yacute; hồ sơ lưu trữ</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">PM được x&acirc;y dựng với mục ti&ecirc;u quản l&yacute;, lưu trữ t&agrave;i liệu điện tử theo quy tr&igrave;nh lưu trữ hiện nay của c&aacute;c cơ quan h&agrave;nh ch&iacute;nh nh&agrave; nước. C&aacute;c t&agrave;i liệu cần lưu trữ được tổ chức, sắp xếp khoa học &amp; chuy&ecirc;n nghiệp, c&aacute;n bộ văn thư c&oacute; thể nhập mới c&aacute;c văn bản, t&agrave;i liệu v&agrave;o hệ thống hoặc đồng bộ để lấy trực tiếp t&agrave;i liệu số h&oacute;a từ c&aacute;c ứng dụng được t&iacute;ch hợp triển khai, sau đ&oacute; lập hồ sơ theo nguy&ecirc;n tắc lưu trữ tại đơn vị.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Ngo&agrave;i ra hệ thống c&ograve;n cho ph&eacute;p y&ecirc;u cầu mượn hồ sơ, t&agrave;i liệu trực tuyến v&agrave; đọc nội dung to&agrave;n văn đ&atilde; được số h&oacute;a.​</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm cho ph&eacute;p người quản l&yacute; ph&acirc;n loại t&agrave;i liệu theo từng chủ đề, lĩnh vực kh&aacute;c nhau. C&aacute;c t&agrave;i liệu văn bản được sắp xếp v&agrave; quản l&yacute; theo từng năm cụ thể để người d&ugrave;ng c&oacute; thể t&igrave;m kiếm dễ d&agrave;ng một t&agrave;i liệu t&agrave;i liệu bất k&igrave;</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">T&iacute;nh năng ch&iacute;nh</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; kho</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; kệ</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; hộp</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; hồ sơ</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; lưu trữ</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; mượn.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; điều chỉnh</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản trị hệ thống</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Đồng bộ</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">- Thống k&ecirc; &ndash; b&aacute;o c&aacute;o:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Ưu điểm của phần mềm quản l&yacute; hồ sơ, t&agrave;i liệu lưu trữ</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản l&yacute;, lưu trữ, t&igrave;m kiếm v&agrave; xử l&yacute; hồ sơ, t&agrave;i liệu sẽ trở n&ecirc;n đơn giản, khoa học v&agrave; dễ d&agrave;ng t&igrave;m kiếm, xử l&yacute;, tiết kiệm thời gian cho lưu trữ vi&ecirc;n. </span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">Tu&acirc;n thủ quy tr&igrave;nh quản l&yacute; v&agrave; khai th&aacute;c sử dụng t&agrave;i liệu lưu trữ do Cục văn thư lưu trữ ban h&agrave;nh.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">Ph&acirc;n quyền người d&ugrave;ng tới từng chức năng chương tr&igrave;nh, đến từng th&agrave;nh phần t&agrave;i liệu của hồ sơ lưu trữ. Người d&ugrave;ng sẽ được ph&acirc;n quyền theo cấp bậc, từ đ&oacute; phần mềm cho ph&eacute;p người d&ugrave;ng tiếp cận hồ sơ, t&agrave;i liệu theo từng cấp bậc nhằm kiểm so&aacute;t việc tiếp cận c&aacute;c hồ sơ, t&agrave;i liệu theo độ mật kh&aacute;c nhau.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm được thiết th&acirc;n thiện, ng&ocirc;n ngữ tiếng Việt, dễ sử dụng n&ecirc;n ph&ugrave; hợp với tr&igrave;nh độ tin học cơ bản của nh&acirc;n vi&ecirc;n lưu trữ tại c&aacute;c cơ quan, đơn vị.</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">2/ Phần mềm quản l&yacute; c&aacute;n bộ c&ocirc;ng chức</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm quản l&yacute; c&aacute;n bộ c&ocirc;ng chức, vi&ecirc;n chức l&agrave; giải ph&aacute;p tổng thể được thiết kế v&agrave; x&acirc;y dựng &aacute;p dụng cho khối cơ quan Nh&agrave; nước. Qua đ&oacute; gi&uacute;p cho c&aacute;c cơ quan Nh&agrave; nước theo d&otilde;i qu&aacute; tr&igrave;nh biến đổi th&ocirc;ng tin của mỗi c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức trong qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c từ khi bắt đầu v&agrave;o cơ quan cho đến nghỉ hưu. Hệ thống gi&uacute;p c&aacute;c đơn vị c&oacute; thẩm quyền quản l&yacute; c&aacute;n bộ c&ocirc;ng chức, vi&ecirc;n chức quản l&yacute; hồ sơ nh&acirc;n sự hiệu quả, giảm chi ph&iacute;, thời gian, c&ocirc;ng sức, thuận tiện trong việc tra cứu t&igrave;m kiếm hồ sơ c&aacute;n bộ c&ocirc;ng chức, vi&ecirc;n chức. Hệ thống phần mềm c&oacute; c&aacute;c chức năng ph&acirc;n quyền đến từng ph&ograve;ng, ban, CBCC đảm bảo t&iacute;nh bảo mật của hồ sơ.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c nh&oacute;m chức năng ch&iacute;nh</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">a. Ph&acirc;n hệ quản l&yacute; hồ sơ c&aacute;n bộ c&ocirc;ng chức</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; tổ chức</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; hồ sơ CBCC</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; qu&aacute; tr&igrave;nh đ&agrave;o tạo, bồi dưỡng</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; qu&aacute; tr&igrave;nh lương, phụ cấp</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; qu&aacute; tr&igrave;nh khen thưởng, kỷ luật</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c Đảng</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; bổ nhiệm/ bổ nhiệm lại</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; qu&aacute; tr&igrave;nh bảo hiểm</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; n&acirc;ng lương thường xuy&ecirc;n/ trước hạn</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; điều động/ thuy&ecirc;n chuyển</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tra cứu, t&igrave;m kiếm hồ sơ CBCC</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B&aacute;o c&aacute;o thống k&ecirc;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">b. Ph&acirc;n hệ đ&aacute;nh gi&aacute; kết quả l&agrave;m việc của CBCC</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; t&agrave;i khoản</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; đợt đ&aacute;nh gi&aacute;, nhiệm vụ, ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; cho CBCC v&agrave; bộ tham chiếu c&ocirc;ng việc phục vụ đ&aacute;nh gi&aacute;</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đ&aacute;nh gi&aacute; kết quả l&agrave;m việc</span></span></span></span></p>

<p style="margin-left:49px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổng kết đ&aacute;nh gi&aacute;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">3/ Phần mềm văn ph&ograve;ng điện tử</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave; một hệ thống tin học h&oacute;a to&agrave;n bộ quy tr&igrave;nh điều h&agrave;nh, quản l&yacute; văn bản đến đi v&agrave; hồ sơ c&ocirc;ng việc trực tuyến đ&aacute;p ứng&nbsp; nhu cầu của c&aacute;c Cơ quan, Doanh nghiệp.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Lợi &iacute;ch của sản phẩm:</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Điện tử h&oacute;a to&agrave;n bộ quy tr&igrave;nh văn bản đi đến, hồ sơ c&ocirc;ng việc của cơ quan h&agrave;nh ch&iacute;nh, doanh nghiệp.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tiết kiệm thời gian, chi ph&iacute; v&agrave; tăng hiệu quả c&ocirc;ng việc.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Điều h&agrave;nh, quản trị &ldquo;Mọi l&uacute;c, mọi nơi tr&ecirc;n mọi thiết bị th&ocirc;ng minh&rdquo; khi c&oacute; kết nối Internet.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Một k&ecirc;nh kết nối đồng bộ, gửi nhận dữ liệu giữa c&aacute;c cấp, tu&acirc;n chỉ m&ocirc; h&igrave;nh tổ chức h&agrave;nh ch&iacute;nh của ch&iacute;nh đơn vị.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng một m&ocirc;i trường l&agrave;m việc cộng t&aacute;c, li&ecirc;n kết v&agrave; chia sẻ.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H&igrave;nh th&agrave;nh một kho dữ liệu d&ugrave;ng chung, được lưu trữ v&agrave; tổ chức th&ocirc;ng tin khoa học, bảo mật cao, tr&aacute;nh rủi ro mất m&aacute;t th&ocirc;ng tin.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&agrave; một giải ph&aacute;p tổng thể v&agrave; to&agrave;n diện, mang lại lợi &iacute;ch rất r&otilde; rệt như tiết kiệm thời gian xử l&yacute; c&ocirc;ng việc, giảm chi ph&iacute; in ấn giấy tờ, điện thoại, chi ph&iacute; đi lại, tăng hiệu quả c&ocirc;ng việc</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">4/ Hệ thống quản l&yacute; gi&aacute;o dục trực tuyến</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave; c&ocirc;ng cụ quản l&yacute;, chuyển kết quả học tập, r&egrave;n luyện của học sinh tới phụ huynh. Hệ thống cho ph&eacute;p tương t&aacute;c hai chiều trực tuyến giữa gi&aacute;o vi&ecirc;n với phụ huynh học sinh hoặc giữa c&aacute;n bộ quản l&yacute; với phụ huynh học sinh</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Lợi &iacute;ch mang lại khi ứng dụng hệ thống</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đối với Nh&agrave; trường v&agrave; Gi&aacute;o vi&ecirc;n</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&acirc;ng cao chất lượng c&ocirc;ng t&aacute;c quản l&yacute; học sinh, gi&aacute;o vi&ecirc;n</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T&igrave;m kiếm tra cứu th&ocirc;ng tin học sinh dễ d&agrave;ng, thuận tiện, theo nhiều ti&ecirc;u ch&iacute; kh&aacute;c nhau</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cập nhật điểm số, t&igrave;nh h&igrave;nh r&egrave;n luyện, đ&aacute;nh gi&aacute;, nhận x&eacute;t thi đua học sinh học sinh thuận tiện, nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thống k&ecirc;, kết xuất bảng điểm, kết quả học tập của học sinh nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c, theo nhiều ti&ecirc;u ch&iacute; kh&aacute;c nhau</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tra cứu lịch ph&acirc;n c&ocirc;ng giảng dạy của gi&aacute;o vi&ecirc;n, thời kh&oacute;a biểu của c&aacute;c khối lớp dễ d&agrave;ng</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trao đổi th&ocirc;ng tin với phụ huynh thuận tiện, dễ d&agrave;ng, đầy đủ.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đối với Phụ huynh</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dễ d&agrave;ng tra cứu thời kho&aacute; biểu, kết quả học tập, r&egrave;n luyện của con em m&igrave;nh.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhận th&ocirc;ng b&aacute;o t&igrave;nh h&igrave;nh đi học, kết quả học tập của con em m&igrave;nh kịp thời, đầy đủ, xuy&ecirc;n suốt qu&aacute; t&igrave;nh học tập tại trường.</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhận được đầy đủ c&aacute;c th&ocirc;ng b&aacute;o của nh&agrave; trường về con em m&igrave;nh</span></span></span></span></p>

<p style="margin-left:55px; text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hỗ trợ tương t&aacute;c giữa nh&agrave; trường &amp; phụ huynh</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">5/ Phần mềm quản l&yacute; khiếu nại, tố c&aacute;o</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave; phần mềm hỗ trợ việc tiếp nhận, giải quyết đơn thư khiếu nại, tố c&aacute;o v&agrave; c&aacute;c loại đơn thư kh&aacute;c được gửi đến cơ quan quản l&yacute; h&agrave;nh ch&iacute;nh nh&agrave; nước.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm được thiết kế với c&aacute;c t&iacute;nh năng phục vụ cho việc tiếp nhận, theo d&otilde;i t&igrave;nh h&igrave;nh giải quyết đơn thư khiếu nại, tố c&aacute;o của c&aacute;c cơ quan quản l&yacute; nh&agrave; nước.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c t&iacute;nh năng ch&iacute;nh của phần mềm</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; Tiếp nhận đơn thư</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; Xử l&yacute; đơn thư</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash;&nbsp; Theo d&otilde;i v&agrave; xử l&yacute; đơn thư tr&ugrave;ng lặp</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash;&nbsp; Ph&ecirc; duyệt nội dung giải quyết đơn thư</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash;&nbsp; Quản l&yacute; hồ sơ vụ việc.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash;&nbsp; Tra cứu kết quả giải quyết đơn thư</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash;&nbsp; Quản trị hệ thống danh mục v&agrave; người sử dụng.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Lợi &iacute;ch khi sử dụng phần mềm</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; C&ocirc;ng khai, minh bạch c&ocirc;ng t&aacute;c tiếp nhận v&agrave; giải quyết đơn thư khiếu nại tố c&aacute;o cho C&ocirc;ng d&acirc;n, Tổ chức v&agrave; c&aacute;c Đơn vị</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; Cung cấp th&ocirc;ng tin kịp thời cho L&atilde;nh đạo chỉ đạo, điều h&agrave;nh trong lĩnh vực khiếu nại, tố c&aacute;o tr&ecirc;n địa b&agrave;n, gi&uacute;p l&atilde;nh đạo gi&aacute;m s&aacute;t c&ocirc;ng t&aacute;c giải quyết đơn thư khiếu nại, tố c&aacute;o tr&ecirc;n địa b&agrave;n.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; N&acirc;ng cao năng lực quản l&yacute;, điều h&agrave;nh của c&aacute;c cơ quan Nh&agrave; nước trong lĩnh vực giải quyết khiếu nại, tố c&aacute;o.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; Cung cấp th&ocirc;ng tin nhanh tại chỗ trong qu&aacute; tr&igrave;nh tiếp d&acirc;n.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&ndash; Gi&aacute;m s&aacute;t việc xử l&yacute; hồ sơ khiếu nại tố c&aacute;o theo quy tr&igrave;nh</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">6/ Phần mềm quản l&yacute; đối tượng bảo trợ x&atilde; hội <span style="color:red">của </span></span></span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave; một sự t&iacute;ch hợp tổng thể nhất cho c&ocirc;ng t&aacute;c quản l&yacute; c&aacute;c nh&oacute;m đối tượng thuộc diện bảo trợ x&atilde; hội của c&aacute;c đơn vị h&agrave;nh ch&iacute;nh Nh&agrave; nước, đặt l&ecirc;n đời sống ti&ecirc;u chuẩn cao cho cộng đồng thời đại số.</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c chức năng ch&iacute;nh:</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản trị hệ thống</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; danh mục</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; dữ liệu</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- Quản l&yacute; v&agrave; cập nhật th&ocirc;ng tin đối tượng</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- T&igrave;m kiếm &amp; truy vấn th&ocirc;ng tin c&aacute; nh&acirc;n</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- Kết xuất c&aacute;c loại danh s&aacute;ch theo y&ecirc;u cầu quản l&yacute;</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif">- B&aacute;o c&aacute;o tổng hợp</span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">7/ Phần mềm quản l&yacute; tổng thể bệnh viện</span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">L&agrave; hệ thống phần mềm quản l&yacute; tổng thể bệnh viện bao gồm nhiều ph&acirc;n hệ lớn với đầy đủ c&aacute;c chức năng quản l&yacute; bệnh viện. Đ&acirc;y l&agrave; giải ph&aacute;p quản l&yacute; ho&agrave;n hảo cho c&aacute;c bệnh viện, ph&ugrave; hợp với nhiều loại h&igrave;nh bệnh viện kh&aacute;c nhau như: bệnh viện đa khoa, chuy&ecirc;n khoa, bệnh viện khối Qu&acirc;n Y, bệnh viện tuyến huyện, bệnh viện quy m&ocirc; lớn,..</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm quản l&yacute; bệnh viện phục vụ tốt nhất cho việc ph&acirc;n t&iacute;ch điều h&agrave;nh tại bệnh viện, l&agrave; hệ thống mở, thuận tiện cho việc mở rộng hệ thống, dễ d&agrave;ng n&acirc;ng cấp khi c&oacute; phi&ecirc;n bản mới. Kết nối, trao đổi th&ocirc;ng tin với c&aacute;c bệnh viện kh&aacute;c trong khu vực, gửi b&aacute;o c&aacute;o l&ecirc;n c&aacute;c Sở y tế..</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Một số ph&acirc;n hệ ch&iacute;nh của phần mềm</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">1. Ph&acirc;n hệ xếp số tự động:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">2. Quản l&yacute; tiếp nhận bệnh nh&acirc;n:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">3. Quản l&yacute; kh&aacute;m bệnh:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">4. Quản l&yacute; khoa/ ph&ograve;ng x&eacute;t nghiệm:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">5. Quản l&yacute; chẩn đo&aacute;n h&igrave;nh ảnh/ thăm d&ograve; chức năng:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">6. Quản l&yacute; nội tr&uacute;:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">7. Quản l&yacute; ph&ograve;ng mổ:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">8. Quản l&yacute; viện ph&iacute; v&agrave; bảo hiểm y tế:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">9. Quản l&yacute; dược &ndash; vật tư:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">10. Hệ thống kết xuất v&agrave; ph&acirc;n t&iacute;ch b&aacute;o c&aacute;o thống k&ecirc;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">11. Ph&acirc;n hệ quản l&yacute; chỉ đạo tuyến:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">12. Ph&acirc;n hệ quản l&yacute; trang thiết bị y tế:</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">13. T&iacute;ch hợp m&atilde; số, m&atilde; vạch, hệ thống thẻ bệnh nh&acirc;n th&ocirc;ng minh</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">14. V&agrave; c&aacute;c ph&acirc;n hệ kh&aacute;c...</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">8. Phần mềm quản l&yacute; điều h&agrave;nh v&agrave; ph&acirc;n c&ocirc;ng c&ocirc;ng việc</span></span></strong></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">L&agrave; hệ thống gi&uacute;p nh&agrave; quản l&yacute; c&oacute; thể điều h&agrave;nh hầu hết c&aacute;c c&ocirc;ng việc của cơ quan th&ocirc;ng qua mạng Internet hoặc mạng nội bộ. Người d&ugrave;ng chỉ cần sử dụng tr&igrave;nh duyệt internet (IE hoặc Firefox) l&agrave; c&oacute; thể sử dụng phần mềm ngay m&agrave; kh&ocirc;ng cần phải c&agrave;i đặt th&ecirc;m bất cứ ứng dụng n&agrave;o kh&aacute;c</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Chức năng chi tiết:</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">- Điều h&agrave;nh quản l&yacute;</span></span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Quản l&yacute; c&ocirc;ng việc: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">gi&uacute;p tham gia giải quyết tất cả c&aacute;c vấn đề li&ecirc;n quan tới c&aacute;c c&ocirc;ng việc m&agrave; cơ quan bạn đang phải tiến h&agrave;nh một c&aacute;ch hiệu quả nhất</span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Quản l&yacute; tin tức: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng tạo ra một tờ b&aacute;o nội bộ cho cơ quan với c&aacute;c chuy&ecirc;n mục do người d&ugrave;ng tự đặt sao cho ph&ugrave; hợp với văn h&oacute;a ri&ecirc;ng của cơ quan. Cho ph&eacute;p ph&acirc;n quyền để hiển thị c&aacute;c tin tức tới to&agrave;n thể cơ quan hoặc tới ri&ecirc;ng một ph&ograve;ng ban n&agrave;o đ&oacute;.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; văn thư: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">mọi c&ocirc;ng văn đến v&agrave; c&ocirc;ng văn đi đều được scan v&agrave; đưa v&agrave;o hệ thống. C&aacute;c th&agrave;nh vi&ecirc;n c&oacute; thể đọc c&aacute;c c&ocirc;ng văn n&agrave;y tr&ecirc;n phần mềm nếu như được ph&acirc;n quyền cho ph&eacute;p đọc. To&agrave;n bộ qu&aacute; tr&igrave;nh xử l&yacute; v&agrave; tr&igrave;nh duyệt văn thư cũng được thực hiện v&agrave; lưu trữ lại tr&ecirc;n hệ thống. Hạn chế việc nh&acirc;n vi&ecirc;n văn thư photo văn bản gốc th&agrave;nh nhiều bản để đưa tới c&aacute;c ph&ograve;ng ban l&agrave;m tốn thời gian v&agrave; giấy tờ.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ quản l&yacute; chức danh: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Thiết lập danh s&aacute;ch c&aacute;c chức danh m&agrave; c&ocirc;ng ty sử dụng như Chủ tịch HĐND, Ph&oacute; Chủ tịch HĐND, Chủ tịch UBND, Ph&oacute; Chủ tịch UBND, Trưởng ph&ograve;ng&hellip;</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; t&agrave;i liệu chung: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">cho ph&eacute;p người quản trị hệ thống thiết lập hệ thống thư mục t&agrave;i liệu v&agrave; ph&acirc;n quyền truy cập t&agrave;i liệu d&ugrave;ng chung của cơ quan.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Quản trị người d&ugrave;ng: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">hệ thống cho ph&eacute;p ph&acirc;n quyền sử dụng t&agrave;i nguy&ecirc;n cho từng người d&ugrave;ng. Cho ph&eacute;p tạo người d&ugrave;ng theo c&aacute;c vai tr&ograve; c&oacute; sẵn, sau đ&oacute; c&oacute; thể th&ecirc;m bớt từng quyền cho từng th&agrave;nh vi&ecirc;n theo đ&uacute;ng vị tr&iacute; v&agrave; chức danh m&agrave; th&agrave;nh vi&ecirc;n đ&oacute; đang c&oacute; trong cơ quan. </span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; th&ocirc;ng b&aacute;o: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">c&aacute;c th&ocirc;ng b&aacute;o c&oacute; thể điều chỉnh được trước khoảng thời gian hiển thị bao nhi&ecirc;u ng&agrave;y. Sau khoảng thời gian n&agrave;y th&ocirc;ng b&aacute;o sẽ tự động được ẩn xuống. Tr&aacute;nh t&igrave;nh trạng ban h&agrave;nh th&ocirc;ng b&aacute;o m&agrave; c&oacute; nh&acirc;n vi&ecirc;n li&ecirc;n quan chưa biết.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; nh&oacute;m ri&ecirc;ng: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Người d&ugrave;ng c&oacute; thể thiết lập ri&ecirc;ng cho m&igrave;nh một hoặc nhiều nh&oacute;m c&aacute;c người d&ugrave;ng kh&aacute;c để tiện lợi khi chọn danh s&aacute;ch c&aacute;c th&agrave;nh vi&ecirc;n tham gia c&ocirc;ng việc hoặc diễn đ&agrave;n ri&ecirc;ng.</span></span></span></span></span></span></li>
</ul>

<ul>
	<li><strong><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Trao đổi th&ocirc;ng tin</span></span></span></span></span></strong></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Chat nội bộ: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p người d&ugrave;ng chat để chia sẻ c&aacute;c th&ocirc;ng tin về c&ocirc;ng việc trong cơ quan. C&oacute; hỗ trợ chia sẻ file, địa chỉ Web v&agrave; lưu lại lịch sử c&aacute;c lần chat.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Diễn đ&agrave;n: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Đ&acirc;y l&agrave; nơi nơi tạo m&ocirc;i trường trao đổi thư gi&atilde;n giải tr&iacute; của ri&ecirc;ng cơ quan. Gi&uacute;p c&aacute;c nh&acirc;n vi&ecirc;n c&oacute; thể b&agrave;n luận s&ocirc;i động tr&ecirc;n diễn đ&agrave;n của cơ quan để tạo ra sự thư gi&atilde;n, gắn b&oacute; v&agrave; th&ocirc;ng hiểu nhau trong cơ quan. Mỗi chủ đề trong diễn đ&agrave;n c&oacute; thể được giới hạn theo nh&oacute;m hoặc theo ph&ograve;ng ban t&ugrave;y theo &yacute; người tạo.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Ph&acirc;n hệ Thư điện tử: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p gửi &amp; nhận thư trực tiếp trong hệ thống v&agrave;o email c&aacute; nh&acirc;n của người d&ugrave;ng m&agrave; kh&ocirc;ng phải đăng nhập nhiều chỗ kh&aacute;c nhau. Đặc biệt, c&oacute; sự phối hợp chặt chẽ giữa email v&agrave; c&ocirc;ng việc v&igrave; người d&ugrave;ng c&oacute; thể tự tạo th&ocirc;ng b&aacute;o hoặc c&ocirc;ng việc từ nội dung thư đang đọc</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ chia sẻ nhanh tập tin: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">trợ gi&uacute;p người d&ugrave;ng quản l&yacute; v&agrave; chia sẻ nhanh c&aacute;c file giữa c&aacute;c th&agrave;nh vi&ecirc;n với nhau m&agrave; kh&ocirc;ng cần phải Scan đưa v&agrave;o ph&acirc;n hệ T&agrave;i liệu</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ SMS: c</span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">ho ph&eacute;p gửi tin nhắn tới điện thoại di động c&aacute;c th&ocirc;ng tin về c&aacute;c cuộc họp hoặc diễn tiến mới của c&aacute;c c&ocirc;ng việc đang diễn ra.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">T&igrave;m kiếm th&ocirc;ng tin: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">cho<strong> </strong>ph&eacute;p nhập &lsquo;từ kho&aacute;&rdquo; để t&igrave;m kiếm th&ocirc;ng tin về c&ocirc;ng việc hoặc c&aacute;c đề t&agrave;i trao đổi tr&ecirc;n diễn đ&agrave;n.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">- Truyền th&ocirc;ng nội bộ: </span></span></span></strong></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Lịch tuần c&ocirc;ng ty: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">to&agrave;n bộ qu&aacute; tr&igrave;nh đăng k&yacute; lịch họp, x&eacute;t duyệt c&aacute;c cuộc họp đều được quản l&yacute; qua hệ thống một c&aacute;ch dễ d&agrave;ng tiện dụng. C&aacute;c cuộc họp được duyệt c&oacute; thể tuỳ th&agrave;nh phần được xem</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Lịch c&aacute; nh&acirc;n: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">giao diện của lịch l&agrave;m việc c&aacute; nh&acirc;n cho ph&eacute;p người d&ugrave;ng dễ d&agrave;ng t&igrave;m thấy c&aacute;c c&ocirc;ng việc m&igrave;nh phải l&agrave;m theo ng&agrave;y, theo tuần hoặc th&aacute;ng. Người d&ugrave;ng c&oacute; thể th&ecirc;m, theo d&otilde;i c&aacute;c c&ocirc;ng việc c&aacute; nh&acirc;n hoặc thực hiện chung với th&agrave;nh vi&ecirc;n kh&aacute;c một c&aacute;ch nhanh ch&oacute;ng &amp; hiệu quả.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Danh bạ cơ quan: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; danh s&aacute;ch nh&acirc;n vi&ecirc;n tham gia hệ thống theo từng ph&ograve;ng ban c&ugrave;ng số điện thoại, Email tương ứng.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Cơ cấu tổ chức: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p người quản trị thiết lập cơ cấu tổ chức c&aacute;c ph&ograve;ng ban, trung t&acirc;m theo m&ocirc; h&igrave;nh ri&ecirc;ng của cơ quan m&igrave;nh c&ugrave;ng c&aacute;c nh&acirc;n vi&ecirc;n thuộc c&aacute;c tổ chức n&agrave;y. Hệ thống sẽ tự động hiển thị ra c&acirc;y tổ chức của c&ocirc;ng ty.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ B&aacute;o c&aacute;o thống k&ecirc;: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gi&uacute;p l&atilde;nh đạo cơ quan h&agrave;nh ch&iacute;nh sự nghiệp c&oacute; ngay một c&aacute;i nh&igrave;n to&agrave;n cảnh về hiệu suất thực hiện c&aacute;c c&ocirc;ng việc trong cơ quan qua c&aacute;c b&aacute;o c&aacute;o thống k&ecirc; về tiến độ thực hiện của c&aacute;c c&ocirc;ng việc đang diễn ra, b&aacute;o c&aacute;o về kết quả của c&aacute;c c&ocirc;ng việc đ&atilde; thực hiện.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ &ldquo;Kế hoạch C&ocirc;ng việc&rdquo;: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gi&uacute;p người d&ugrave;ng lập v&agrave; quản l&yacute; tiến độ c&aacute;c kế hoạch c&ocirc;ng việc.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hiệu quả của việc trang bị hệ thống: </span></span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Tăng hiệu suất l&agrave;m việc:giảm t&igrave;nh trạng &quot;qu&ecirc;n việc&quot;; &quot;bị rối khi phải thực hiện nhiều việc&quot;, dễ d&agrave;ng kế thừa kinh nghiệm l&agrave;m việc.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Tr&aacute;nh t&igrave;nh trạng bị động khi thay đổi nh&acirc;n sự</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Giảm mạnh xung đột trong cơ quan do mọi th&ocirc;ng tin về c&ocirc;ng việc đều minh bạch.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gi&uacute;p cấp quản l&yacute; dễ d&agrave;ng điều h&agrave;nh, ph&acirc;n c&ocirc;ng &amp; nắm bắt tiến độ c&ocirc;ng việc của từng ph&ograve;ng ban</span></span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Tiết kiệm chi ph&iacute; về: cước viễn th&ocirc;ng, giảm chi ph&iacute; cho việc in giấy tờ, giảm mạnh việc đi lại nhiều giữa c&aacute;c ph&ograve;ng ban, giảm số cuộc họp v&agrave; thời gian họp h&agrave;nh.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">9/ Phần mềm quản l&yacute; thư viện trường học Online &amp; thư viện số:</span></span></span></strong></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phần mềm quản l&yacute; thư viện l&agrave; hệ thống phần mềm hỗ trợ đắc lực cho c&ocirc;ng t&aacute;c quản l&yacute; ấn phẩm, s&aacute;ch, t&agrave;i liệu c&oacute; tại thư viện trường học. &Aacute;p dụng c&ocirc;ng nghệ web hiện đại gi&uacute;p người d&ugrave;ng dễ d&agrave;ng truy cập v&agrave; sử dụng. B&ecirc;n cạnh đ&oacute; hệ thống phần mềm c&ograve;n cung cấp thư viện điện tử ebook để gi&uacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng chia sẻ t&agrave;i liệu đến mới mọi người.</span></span></span></span></span></p>

<div style="border-left:none windowtext 1.0pt; margin-left:67px; margin-right:-1px; padding:0in 0in 0in 11.0pt">
<p style="margin-left:28px"><span style="background-color:white"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp; Quyết định số 61/1998/QD &ndash; BGD&amp;ĐT ng&agrave;y 06/11/1998 của Bộ trưởng Bộ GD&amp;ĐT về ban h&agrave;nh quy chế tổ chức v&agrave; hoạt động thư viện.</span></span></span></span></span></span></p>
</div>

<div style="border-left:none windowtext 1.0pt; margin-left:67px; margin-right:-1px; padding:0in 0in 0in 11.0pt">
<p style="margin-left:28px"><span style="background-color:white"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp; Quyết định số 107/QĐ &ndash; BGD&amp;ĐT ng&agrave;y 04/01/2007 của Bộ trưởng Bộ GD&amp;ĐT về việc ban h&agrave;nh danh mục s&aacute;ch tham khảo d&ugrave;ng cho c&aacute;c thư viện trường học.</span></span></span></span></span></span></p>
</div>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">C&aacute;c t&iacute;nh năng chi tiết của phần mềm:</span></span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; th&ocirc;ng tin danh mục: Hỗ trợ người d&ugrave;ng tạo v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute;c danh mục d&ugrave;ng chung một c&aacute;ch đơn giản, b&ecirc;n cạnh đ&oacute; hệ thống cũng cung cấp sẵn những danh mục d&ugrave;ng chung như t&aacute;c giả, nh&agrave; xuất bản, khung ph&acirc;n loại&hellip;</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; bạn đọc: Chức năng quản l&yacute; bạn đọc cho ph&eacute;p thủ thư tạo v&agrave; quản l&yacute; danh s&aacute;ch bạn đọc c&oacute; tại thư viện. Đồng thời chức năng n&agrave;y cũng hỗ trợ cấp v&agrave; in thẻ mượn s&aacute;ch.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Bi&ecirc;n mục ấn phẩm: T&iacute;nh năng quan trọng nhất của hệ thống phần mềm quản l&yacute; thư viện cho ph&eacute;p người d&ugrave;ng nhập v&agrave;o thư viện c&aacute;c ấn phẩm từ nhiều nguồn kh&aacute;c nhau. Hỗ trợ người d&ugrave;ng bi&ecirc;n mục v&agrave; cấp số c&aacute; biết từng ấn phẩm đ&atilde; nhập kho. Thủ thư c&oacute; thể in ph&iacute;ch, nh&atilde;n phục vụ c&ocirc;ng t&aacute;c quản l&yacute; v&agrave; theo d&otilde;i ấn phẩm tại thư viện trường học. Một t&iacute;nh năng kh&ocirc;ng thể thiếu ở bi&ecirc;n mục đ&oacute; l&agrave; thanh l&yacute; v&agrave; kiểm k&ecirc; ấn phẩm hiện c&oacute; tại thư viện.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; lưu th&ocirc;ng: Cho ph&eacute;p quản l&yacute; thư viện thực hiện c&aacute;c thao t&aacute;c mượn trả s&aacute;ch đối với từng bạn đọc kh&aacute;c nhau, phần mềm hỗ trợ cơ chế mượn s&aacute;ch theo số lượng v&agrave; thời gian nhất định từ đ&oacute; sẽ gi&uacute;p người quản l&yacute; thư viện dễ d&agrave;ng kiểm so&aacute;t được t&igrave;nh trạng mượn s&aacute;ch của bạn đọc.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; ebook: T&iacute;nh năng mở hỗ trợ người d&ugrave;ng tạo v&agrave; chia sẻ ebook (t&agrave;i liệu điện tử) th&ocirc;ng qua việc chia sẻ, bạn đọc c&oacute; thể dễ d&agrave;ng truy cập v&agrave; t&igrave;m kiếm t&agrave;i liệu phục vụ cho c&ocirc;ng t&aacute;c học tập v&agrave; nghi&ecirc;n cứu của m&igrave;nh.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hệ thống b&aacute;o c&aacute;o: Cho ph&eacute;p người d&ugrave;ng tra cứu th&ocirc;ng tin ấn phẩm hiện c&oacute; tại thư viện. Hỗ trợ in c&aacute;c mẫu b&aacute;o c&aacute;o hiện h&agrave;nh theo y&ecirc;u cầu nghiệp vụ thư viện như sổ đăng k&yacute; tổng qu&aacute;t, sổ đăng k&yacute; c&aacute; biệt, sổ mượn s&aacute;ch, sổ đăng k&yacute; s&aacute;ch gi&aacute;o khoa&hellip;. v&agrave; c&aacute;c b&aacute;o c&aacute;o thống k&ecirc; t&igrave;nh h&igrave;nh hoạt động của thư viện.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">10/ Phần mềm kiểm định chất lượng gi&aacute;o dục</span></span></span></strong></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Phần mềm kiểm định chất lượng gi&aacute;o dục l&agrave; c&ocirc;ng cụ hỗ trợ c&aacute;c nh&agrave; trường trong c&ocirc;ng t&aacute;c tự đ&aacute;nh gi&aacute; thực trạng của nh&agrave; trường th&ocirc;ng qua c&aacute;c ti&ecirc;u chuẩn được c&ocirc;ng bố.L&agrave; cơ sở để cơ quan quản l&yacute; đ&aacute;nh gi&aacute; v&agrave; c&ocirc;ng nhận đạt chuẩn gi&aacute;o dục của c&aacute;c đơn vị.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">QUẢN L&Yacute; DANH MỤC</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; th&ocirc;ng tin danh mục d&ugrave;ng chung của đơn vị, t&ugrave;y theo quyền đăng nhập l&agrave; sở, ph&ograve;ng hay trường học sẽ c&oacute; những th&ocirc;ng tin thiết lập kh&aacute;c nhau.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hệ thống cung cấp sẵn tất cả c&aacute;c th&ocirc;ng tư về kiểm định chất lượng gi&aacute;o dục của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo ban h&agrave;nh, người d&ugrave;ng c&oacute; thể tải th&ocirc;ng tư về m&aacute;y t&iacute;nh c&aacute; nh&acirc;n để tham khảo. B&ecirc;n cạnh đ&oacute; danh mục văn bản cung cấp c&aacute;c t&agrave;i liệu tham khảo, hướng dẫn về c&ocirc;ng t&aacute;c đ&aacute;nh gi&aacute; chất lượng tại đơn vị.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hệ thống hỗ trợ chuyển dữ liệu sang năm l&agrave;m việc tiếp theo gi&uacute;p người d&ugrave;ng c&oacute; thể kế thừa m&agrave; kh&ocirc;ng tốn qu&aacute; nhiều thời gian để l&agrave;m lại b&aacute;o c&aacute;o đ&aacute;nh gi&aacute; cho năm học mới.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">CƠ SỞ DỮ LIỆU NH&Agrave; TRƯỜNG</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hỗ trợ khai b&aacute;o th&ocirc;ng tin cơ sở dữ liệu của nh&agrave; trường nhằm phục vụ c&ocirc;ng t&aacute;c tự đ&aacute;nh gi&aacute; tại đơn vị. Những th&ocirc;ng tin cần lưu trữ bao gồm:</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Th&ocirc;ng tin trường: Bao gồm tất cả th&ocirc;ng tin li&ecirc;n quan đến trường như t&ecirc;n trường, năm th&agrave;nh lập, cơ quan chủ quản, hiệu trưởng&hellip;.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Số lượng ph&ograve;ng học</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Số lượng c&aacute;n bộ</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Số lượng học sinh</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&bull;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Số lượng lớp học</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">KẾ HOẠCH TỰ Đ&Aacute;NH GI&Aacute;</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Phần mềm hỗ trợ khai b&aacute;o tất cả c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến kế hoạch tự đ&aacute;nh gi&aacute;, những nội dung khai b&aacute;o n&agrave;y sẽ hiển thị ở c&aacute;c mẫu b&aacute;o c&aacute;o tự đ&aacute;nh gi&aacute; của trường.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hỗ trợ hội đồng tự đ&aacute;nh gi&aacute; đưa ra kế hoạch, dự kiến thu thập c&aacute;c th&ocirc;ng tin cần đ&aacute;nh gi&aacute;, x&acirc;y dựng thời gian biểu l&agrave;m việc.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Dữ liệu c&oacute; thể sao ch&eacute;p sang c&aacute;c năm tiếp theo m&agrave; kh&ocirc;ng cần phải khai b&aacute;o lại.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">TỰ Đ&Aacute;NH GI&Aacute;</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hỗ trợ khai b&aacute;o th&ocirc;ng tin c&aacute;c th&agrave;nh vi&ecirc;n trong hội đồng tự đ&aacute;nh gi&aacute; bao gồm chức vụ v&agrave; nhiệm vụ của từng th&agrave;nh vi&ecirc;n trong hội đồng.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">X&acirc;y dựng c&aacute;c nh&oacute;m đ&aacute;nh gi&aacute; trong suốt qu&aacute; tr&igrave;nh đ&aacute;nh gi&aacute; c&aacute;c ti&ecirc;u chuẩn v&agrave; ti&ecirc;u ch&iacute;.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hỗ trợ khai b&aacute;o c&aacute;c th&ocirc;ng tin về mở đầu kết luận của b&aacute;o c&aacute;o tự đ&aacute;nh gi&aacute;, danh s&aacute;ch viết tắt v&agrave; mở đầu kết luận cho từng ti&ecirc;u chuẩn cần đ&aacute;nh gi&aacute;.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gợi &yacute; v&agrave; thu thập c&aacute;c minh chứng trong suốt qu&aacute; tr&igrave;nh tự đ&aacute;nh gi&aacute; của trường, minh chứng được lưu trữ v&agrave; m&atilde; h&oacute;a theo đ&uacute;ng quy định.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Dựa tr&ecirc;n những minh chứng đ&atilde; thu thập hệ thống cho ph&eacute;p c&aacute;c th&agrave;nh vi&ecirc;n trong hội đồng đ&aacute;nh gi&aacute; c&aacute;c ti&ecirc;u ch&iacute; đ&atilde; đạt hay kh&ocirc;ng v&agrave; đưa ra những minh chứng cụ thể cho từng ti&ecirc;u ch&iacute;.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Đ&Aacute;NH GI&Aacute; NGO&Agrave;I</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Chức năng đ&aacute;nh gi&aacute; ngo&agrave;i hỗ trợ c&ocirc;ng t&aacute;c đ&aacute;nh gi&aacute; của c&aacute;c đơn vị ngo&agrave;i trường như Ph&ograve;ng v&agrave; Sở Gi&aacute;o dục v&agrave; Đ&agrave;o tạo.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hệ thống cho ph&eacute;p x&acirc;y dựng kế hoạch cũng như c&aacute;c nh&oacute;m c&ocirc;ng t&aacute;c đ&aacute;nh gi&aacute; c&aacute;c đơn vị đăng k&yacute; kiểm định v&agrave; đ&aacute;nh gi&aacute; chất lượng gi&aacute;o dục tại cơ sở.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">C&aacute;c đơn vị cấp tr&ecirc;n c&oacute; thể xem được kế hoạch v&agrave; c&ocirc;ng t&aacute;c tự đ&aacute;nh gi&aacute; của c&aacute;c trường th&ocirc;ng qua t&agrave;i khoản cấp ph&ograve;ng v&agrave; cấp sở.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">B&Aacute;O C&Aacute;O TỰ Đ&Aacute;NH GI&Aacute;</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hỗ trợ kết xuất c&aacute;c mẫu b&aacute;o c&aacute;o li&ecirc;n quan đến c&ocirc;ng t&aacute;c kiểm định chất lượng tại trường học như b&aacute;o c&aacute;o tổng hợp kết quả tự đ&aacute;nh gi&aacute;, kế hoạch tự đ&aacute;nh gi&aacute;, tổng hợp kết quả, danh mục minh chứng.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">11/ Phần mềm Quản l&yacute; t&agrave;i sản</span></span></strong></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm quản l&yacute; t&agrave;i sản gi&uacute;p c&aacute;c đơn vị thực hiện c&aacute;c nghiệp vụ: Mua sắm tập trung, đề nghị trang bị t&agrave;i sản, cấp t&agrave;i sản,&nbsp; thay đổi th&ocirc;ng tin t&agrave;i sản, đ&aacute;nh gi&aacute; lại t&agrave;i sản, khấu hao t&agrave;i sản, điều chuyển, kiểm k&ecirc; v&agrave; bảo dưỡng t&agrave;i sản,&hellip;</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm quản l&yacute; t&agrave;i sản c&ograve;n gi&uacute;p đơn vị chủ quản, cơ quan t&agrave;i ch&iacute;nh tự động tổng hợp b&aacute;o c&aacute;o to&agrave;n ng&agrave;nh, to&agrave;n địa phương, tra cứu t&agrave;i sản của đơn vị trực thuộc trực tuyến qua internet.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Đ&aacute;p ứng Th&ocirc;ng tư số 45/2018/TT-BTC hướng dẫn chế độ quản l&yacute; v&agrave; t&iacute;nh hao m&ograve;n, khấu hao t&agrave;i sản cố định tại cơ quan, tổ chức, đơn vị v&agrave; t&agrave;i sản cố định do nh&agrave; nước giao cho doanh nghiệp quản l&yacute;</span></span></span></span></li>
</ul>

<p style="margin-left:48px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c t&iacute;nh năng của phần mềm:</span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản l&yacute; t&agrave;i sản :</span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản l&yacute; t&agrave;i sản theo từng loại t&agrave;i sản, theo ph&ograve;ng ban/bộ phận sử dụng. Cho ph&eacute;p điều chuyển t&agrave;i sản giữa c&aacute;c bộ phận. Theo d&otilde;i t&igrave;nh trạng của từng t&agrave;i sản v&agrave; c&aacute;c th&ocirc;ng tin chi tiết của t&agrave;i sản như năm sản xuất, năm bắt đầu sử dụng, xuất xứ sản phẩm, đặc t&iacute;nh của t&agrave;i sản, nguy&ecirc;n gi&aacute;, gi&aacute; trị hao m&ograve;n lũy kế, gi&aacute; trị c&ograve;n lại. Theo d&otilde;i t&agrave;i sản đang sử dụng, t&agrave;i sản đang cho thu&ecirc; hoặc đi thu&ecirc;. Theo d&otilde;i t&agrave;i sản đơn vị tự mua sắm, được biếu tặng, viện trợ t&agrave;i trợ. Theo d&otilde;i t&agrave;i sản theo từng nguồn kinh ph&iacute; h&igrave;nh th&agrave;nh t&agrave;i sản.</span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Theo d&otilde;i sử dụng t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p theo d&otilde;i chi tiết việc sử dụng t&agrave;i sản tại đơn vị.Đ&aacute;p ứng b&aacute;o c&aacute;o c&ocirc;ng khai về t&igrave;nh h&igrave;nh sử dụng t&agrave;i sản tại đơn vị. </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Đ&aacute;nh gi&aacute; lại t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p ghi nhận c&aacute;c thay đổi về nguy&ecirc;n gi&aacute;, gi&aacute; trị c&ograve;n lại, số năm sử dụng của t&agrave;i sản theo bi&ecirc;n bản đ&aacute;nh gi&aacute; lại hoặc quyết định của cơ quan c&oacute; thẩm quyền. </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Kiểm k&ecirc; t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p lập bi&ecirc;n bản kiểm k&ecirc; t&agrave;i sản theo quy định kiểm k&ecirc; của đơn vị.Theo d&otilde;i chi tiết qu&aacute; tr&igrave;nh thực hiện kiểm k&ecirc; t&agrave;i sản </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Bảo dưỡng t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p lập kế hoạch bảo dưỡng t&agrave;i sản.Theo d&otilde;i chi tiết c&aacute;c t&agrave;i sản được bảo dưỡng. </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Thống k&ecirc; b&aacute;o c&aacute;o: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p thống k&ecirc; v&agrave; xuất b&aacute;o c&aacute;o về t&iacute;nh h&igrave;nh sử dụng t&agrave;i sản, tăng giảm t&agrave;i sản, khấu hao t&agrave;i sản.</span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">12/ Phần mềm quản l&yacute; nh&acirc;n sự &amp; tiền lương</span></span></span></strong></span></span></p>

<p><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Phần mềm quản l&yacute; nh&acirc;n sự l&agrave; giải ph&aacute;p tổng thể được thiết kế v&agrave; x&acirc;y dựng &aacute;p dụng cho khối h&agrave;nh ch&iacute;nh sự nghiệp. Qua đ&oacute; gi&uacute;p cho c&aacute;c cơ quan Nh&agrave; nước theo d&otilde;i qu&aacute; tr&igrave;nh biến đổi th&ocirc;ng tin của mỗi c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức trong qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c từ khi bắt đầu v&agrave;o cơ quan cho đến nghỉ hưu. Hệ thống gi&uacute;p c&aacute;c đơn vị quản l&yacute; c&aacute;n bộ c&ocirc;ng chức, vi&ecirc;n chức quản l&yacute; hồ sơ nh&acirc;n sự hiệu quả, giảm chi ph&iacute;, thời gian, c&ocirc;ng sức, thuận tiện trong việc tra cứu t&igrave;m kiếm hồ sơ c&aacute;n bộ c&ocirc;ng chức, vi&ecirc;n chức. Hệ thống phần mềm c&oacute; c&aacute;c chức năng ph&acirc;n quyền đến từng ph&ograve;ng, ban, CBCC, CV được ph&eacute;p xem, sửa, x&oacute;a&hellip; đảm bảo t&iacute;nh bảo mật của hồ sơ. </span></span></span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#43484e">T&iacute;nh lương l&agrave; c&ocirc;ng việc tốn kh&aacute; nhiều thời gian v&agrave; c&ocirc;ng sức của người kế to&aacute;n. Với phần mềm Quản l&yacute; nh&acirc;n sự &amp; tiền lương, c&ocirc;ng việc sẽ trở n&ecirc;n v&ocirc; c&ugrave;ng đơn giản với chỉ v&agrave;i thao t&aacute;c click chuột m&agrave; vẫn đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c tuyệt đối.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">- Qu&aacute; tr&igrave;nh lương, phụ cấp, phần mềm tự động tổng hợp, t&iacute;nh to&aacute;n, thống k&ecirc; lương sau khi nhập c&aacute;c th&ocirc;ng tin về lương.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">- Hỗ trợ thống k&ecirc; theo từng đơn vị, ph&ograve;ng ban.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">- Hỗ trợ thống k&ecirc; phụ cấp, bảo hiểm,...</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">- C&aacute;c số liệu về thang, bậc lương, lương cơ sở,... được lấy từ những quy định mới nhất của Nh&agrave; nước v&agrave; c&oacute; hỗ trợ cập nhật lại khi c&oacute; sự thay đổi của Nh&agrave; nước.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Một số ph&acirc;n hệ ch&iacute;nh của phần mềm:</span></span></span></span></span></span></span></p>

<ul>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; đơn vị, ph&ograve;ng ban</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; hồ sơ nh&acirc;n vi&ecirc;n theo mẫu l&yacute; lịch 2C</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; th&ocirc;ng tin đ&agrave;o tạo</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; th&ocirc;ng tin đo&agrave;n thể</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Th&ocirc;ng tin khen thưởng, kỷ luật</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Lương, phụ cấp, lịch sử n&acirc;ng lương</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; th&ocirc;ng tin về hưu</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">B&aacute;o c&aacute;o thống k&ecirc;</span></span></span></span></span></span></span></li>
	<li style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Quản l&yacute; hệ thống</span></span></span></span></span></span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Lợi &iacute;ch của phần mềm:</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Phần mềm Quản l&yacute; Nh&acirc;n Sự &amp; tiền lương n&acirc;ng cao hiệu quả trong việc quản l&yacute; nh&acirc;n sự như chấm c&ocirc;ng, t&iacute;nh lương, quản l&yacute; th&ocirc;ng tin nh&acirc;n vi&ecirc;n&hellip;</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Tiết kiệm thời gian c&ocirc;ng sức cho kế to&aacute;n</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Dễ d&agrave;ng tra cứu hồ sơ l&yacute; lịch nh&acirc;n vi&ecirc;n</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">C&oacute; thể xem trước nh&acirc;n sự được tăng ngạch, tăng bậc lương, nh&acirc;n sự sắp về hưu.</span></span></span></span></span></span></span></p>
', N'Đơn vị doanh nghiệp', N'<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">1/</span></span></span></strong><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"> Phần mềm quản l&yacute; điều h&agrave;nh v&agrave; ph&acirc;n c&ocirc;ng c&ocirc;ng việc</span></span></strong></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">L&agrave; hệ thống gi&uacute;p nh&agrave; quản l&yacute; c&oacute; thể điều h&agrave;nh hầu hết c&aacute;c c&ocirc;ng việc của c&ocirc;ng ty th&ocirc;ng qua mạng Internet hoặc mạng nội bộ. Người d&ugrave;ng chỉ cần sử dụng tr&igrave;nh duyệt internet (IE hoặc Firefox) l&agrave; c&oacute; thể sử dụng phần mềm ngay m&agrave; kh&ocirc;ng cần phải c&agrave;i đặt th&ecirc;m bất cứ ứng dụng n&agrave;o kh&aacute;c</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Chức năng chi tiết:</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">- Điều h&agrave;nh quản l&yacute;</span></span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Quản l&yacute; c&ocirc;ng việc: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ quản l&yacute; c&ocirc;ng việc sẽ gi&uacute;p bạn trả lời v&agrave; tham gia giải quyết tất cả c&aacute;c vấn đề li&ecirc;n quan tới c&aacute;c c&ocirc;ng việc m&agrave; c&ocirc;ng ty bạn đang phải tiến h&agrave;nh một c&aacute;ch hiệu quả nhất</span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Quản l&yacute; tin tức: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng tạo ra một tờ b&aacute;o nội bộ cho c&ocirc;ng ty với c&aacute;c chuy&ecirc;n mục do người d&ugrave;ng tự đặt sao cho ph&ugrave; hợp với văn h&oacute;a ri&ecirc;ng của c&ocirc;ng ty. Cho ph&eacute;p ph&acirc;n quyền để hiển thị c&aacute;c tin tức tới to&agrave;n thể c&ocirc;ng ty hoặc tới ri&ecirc;ng một ph&ograve;ng ban n&agrave;o đ&oacute;.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; văn thư: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">mọi c&ocirc;ng văn đến v&agrave; c&ocirc;ng văn đi đều được scan v&agrave; đưa v&agrave;o hệ thống. C&aacute;c th&agrave;nh vi&ecirc;n c&oacute; thể đọc c&aacute;c c&ocirc;ng văn n&agrave;y tr&ecirc;n phần mềm nếu như được ph&acirc;n quyền cho ph&eacute;p đọc. To&agrave;n bộ qu&aacute; tr&igrave;nh xử l&yacute; v&agrave; tr&igrave;nh duyệt văn thư cũng được thực hiện v&agrave; lưu trữ lại tr&ecirc;n hệ thống. Hạn chế việc nh&acirc;n vi&ecirc;n văn thư photo văn bản gốc th&agrave;nh nhiều bản để đưa tới c&aacute;c ph&ograve;ng ban l&agrave;m tốn thời gian v&agrave; giấy tờ.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ quản l&yacute; chức danh: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Thiết lập danh s&aacute;ch c&aacute;c chức danh m&agrave; doanh nghiệp sử dụng như Chủ tịch HĐQT, Ph&oacute; Chủ tịch HĐQT, Gi&aacute;m đốc điều h&agrave;nh, Gi&aacute;m đốc nh&acirc;n sự, Trưởng ph&ograve;ng, nh&acirc;n vi&ecirc;n kinh doanh&hellip;</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; t&agrave;i liệu chung: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">cho ph&eacute;p người quản trị hệ thống thiết lập hệ thống thư mục t&agrave;i liệu v&agrave; ph&acirc;n quyền truy cập t&agrave;i liệu d&ugrave;ng chung của c&ocirc;ng ty.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Quản trị người d&ugrave;ng: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">hệ thống cho ph&eacute;p ph&acirc;n quyền sử dụng t&agrave;i nguy&ecirc;n cho từng người d&ugrave;ng. Cho ph&eacute;p tạo người d&ugrave;ng theo c&aacute;c vai tr&ograve; c&oacute; sẵn, sau đ&oacute; c&oacute; thể th&ecirc;m bớt từng quyền cho từng th&agrave;nh vi&ecirc;n theo đ&uacute;ng vị tr&iacute; v&agrave; chức danh m&agrave; th&agrave;nh vi&ecirc;n đ&oacute; đang c&oacute; trong c&ocirc;ng ty. </span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; th&ocirc;ng b&aacute;o: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">c&aacute;c th&ocirc;ng b&aacute;o c&oacute; thể điều chỉnh được trước khoảng thời gian hiển thị bao nhi&ecirc;u ng&agrave;y. Sau khoảng thời gian n&agrave;y th&ocirc;ng b&aacute;o sẽ tự động được ẩn xuống. Tr&aacute;nh t&igrave;nh trạng ban h&agrave;nh th&ocirc;ng b&aacute;o m&agrave; c&oacute; nh&acirc;n vi&ecirc;n li&ecirc;n quan chưa biết.</span></span></span></span></span></span></li>
	<li><span style="font-size:14pt"><span style="font-family:Arial,sans-serif"><span style="color:#434343"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; nh&oacute;m ri&ecirc;ng: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Người d&ugrave;ng c&oacute; thể thiết lập ri&ecirc;ng cho m&igrave;nh một hoặc nhiều nh&oacute;m c&aacute;c người d&ugrave;ng kh&aacute;c để tiện lợi khi chọn danh s&aacute;ch c&aacute;c th&agrave;nh vi&ecirc;n tham gia c&ocirc;ng việc hoặc diễn đ&agrave;n ri&ecirc;ng.</span></span></span></span></span></span></li>
	<li><strong><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Trao đổi th&ocirc;ng tin</span></span></span></span></span></strong></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Chat nội bộ: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p người d&ugrave;ng chat để chia sẻ c&aacute;c th&ocirc;ng tin về c&ocirc;ng việc trong cơ quan. C&oacute; hỗ trợ chia sẻ file, địa chỉ Web v&agrave; lưu lại lịch sử c&aacute;c lần chat.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Diễn đ&agrave;n: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Đ&acirc;y l&agrave; nơi nơi tạo m&ocirc;i trường trao đổi thư gi&atilde;n giải tr&iacute; của ri&ecirc;ng c&ocirc;ng ty. Gi&uacute;p c&aacute;c nh&acirc;n vi&ecirc;n c&oacute; thể b&agrave;n luận s&ocirc;i động tr&ecirc;n diễn đ&agrave;n của c&ocirc;ng ty để tạo ra sự thư gi&atilde;n, gắn b&oacute; v&agrave; th&ocirc;ng hiểu nhau trong cơ quan. Mỗi chủ đề trong diễn đ&agrave;n c&oacute; thể được giới hạn theo nh&oacute;m hoặc theo ph&ograve;ng ban t&ugrave;y theo &yacute; người tạo.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Ph&acirc;n hệ Thư điện tử: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p gửi &amp; nhận thư trực tiếp trong hệ thống v&agrave;o email c&aacute; nh&acirc;n của người d&ugrave;ng m&agrave; kh&ocirc;ng phải đăng nhập nhiều chỗ kh&aacute;c nhau. Đặc biệt, c&oacute; sự phối hợp chặt chẽ giữa email v&agrave; c&ocirc;ng việc v&igrave; người d&ugrave;ng c&oacute; thể tự tạo th&ocirc;ng b&aacute;o hoặc c&ocirc;ng việc từ nội dung thư đang đọc</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ chia sẻ nhanh tập tin: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">trợ gi&uacute;p người d&ugrave;ng quản l&yacute; v&agrave; chia sẻ nhanh c&aacute;c file giữa c&aacute;c th&agrave;nh vi&ecirc;n với nhau m&agrave; kh&ocirc;ng cần phải Scan đưa v&agrave;o ph&acirc;n hệ T&agrave;i liệu</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ SMS: c</span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">ho ph&eacute;p gửi tin nhắn tới điện thoại di động c&aacute;c th&ocirc;ng tin về c&aacute;c cuộc họp hoặc diễn tiến mới của c&aacute;c c&ocirc;ng việc đang diễn ra.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">T&igrave;m kiếm th&ocirc;ng tin: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">cho<strong> </strong>ph&eacute;p nhập &lsquo;từ kho&aacute;&rdquo; để t&igrave;m kiếm th&ocirc;ng tin về c&ocirc;ng việc hoặc c&aacute;c đề t&agrave;i trao đổi tr&ecirc;n diễn đ&agrave;n.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">- Truyền th&ocirc;ng nội bộ: </span></span></span></strong></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Lịch tuần c&ocirc;ng ty: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">to&agrave;n bộ qu&aacute; tr&igrave;nh đăng k&yacute; lịch họp, x&eacute;t duyệt c&aacute;c cuộc họp đều được quản l&yacute; qua hệ thống một c&aacute;ch dễ d&agrave;ng tiện dụng. C&aacute;c cuộc họp được duyệt c&oacute; thể tuỳ th&agrave;nh phần được xem</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Lịch c&aacute; nh&acirc;n: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">giao diện của lịch l&agrave;m việc c&aacute; nh&acirc;n cho ph&eacute;p người d&ugrave;ng dễ d&agrave;ng t&igrave;m thấy c&aacute;c c&ocirc;ng việc m&igrave;nh phải l&agrave;m theo ng&agrave;y, theo tuần hoặc th&aacute;ng. Người d&ugrave;ng c&oacute; thể th&ecirc;m, theo d&otilde;i c&aacute;c c&ocirc;ng việc c&aacute; nh&acirc;n hoặc thực hiện chung với th&agrave;nh vi&ecirc;n kh&aacute;c một c&aacute;ch nhanh ch&oacute;ng &amp; hiệu quả.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Danh bạ c&ocirc;ng ty: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; danh s&aacute;ch nh&acirc;n vi&ecirc;n tham gia hệ thống theo từng ph&ograve;ng ban c&ugrave;ng số điện thoại, Email tương ứng.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ Cơ cấu tổ chức: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Cho ph&eacute;p người quản trị thiết lập cơ cấu tổ chức c&aacute;c ph&ograve;ng ban, trung t&acirc;m theo m&ocirc; h&igrave;nh ri&ecirc;ng của cơ quan m&igrave;nh c&ugrave;ng c&aacute;c nh&acirc;n vi&ecirc;n thuộc c&aacute;c tổ chức n&agrave;y. Hệ thống sẽ tự động hiển thị ra c&acirc;y tổ chức của cơ quan.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ B&aacute;o c&aacute;o thống k&ecirc;: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gi&uacute;p l&atilde;nh đạo c&ocirc;ng ty c&oacute; ngay một c&aacute;i nh&igrave;n to&agrave;n cảnh về hiệu suất thực hiện c&aacute;c c&ocirc;ng việc trong cơ quan qua c&aacute;c b&aacute;o c&aacute;o th&ocirc;ng k&ecirc; về tiến độ thực hiện của c&aacute;c c&ocirc;ng việc đang diễn ra, b&aacute;o c&aacute;o về kết quả của c&aacute;c c&ocirc;ng việc đ&atilde; thực hiện.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Ph&acirc;n hệ &ldquo;Kế hoạch C&ocirc;ng việc&rdquo;: </span></span></span></strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gi&uacute;p người d&ugrave;ng lập v&agrave; quản l&yacute; tiến độ c&aacute;c kế hoạch c&ocirc;ng việc.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Hiệu quả của việc trang bị hệ thống: </span></span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Tăng hiệu suất l&agrave;m việc:giảm t&igrave;nh trạng &quot;qu&ecirc;n việc&quot;; &quot;bị rối khi phải thực hiện nhiều việc&quot;, dễ d&agrave;ng kế thừa kinh nghiệm l&agrave;m việc.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Tr&aacute;nh t&igrave;nh trạng bị động khi thay đổi nh&acirc;n sự</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Giảm mạnh xung đột trong cơ quan do mọi th&ocirc;ng tin về c&ocirc;ng việc đều minh bạch.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Gi&uacute;p cấp quản l&yacute; dễ d&agrave;ng điều h&agrave;nh, ph&acirc;n c&ocirc;ng &amp; nắm bắt tiến độ c&ocirc;ng việc của từng ph&ograve;ng ban</span></span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Tiết kiệm chi ph&iacute; về: cước viễn th&ocirc;ng, giảm chi ph&iacute; cho việc in giấy tờ, giảm mạnh việc đi lại nhiều giữa c&aacute;c ph&ograve;ng ban, giảm số cuộc họp v&agrave; thời gian họp h&agrave;nh.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">2/ Phần mềm quản l&yacute; nh&acirc;n sự &amp; tiền lương </span></span></span></strong></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Phần mềm Quản l&yacute; nh&acirc;n sự &amp; tiền lương cho khối doanh nghiệp đ&aacute;p ứng c&aacute;c nghiệp vụ trong việc quản l&yacute; nh&acirc;n sự như chấm c&ocirc;ng, t&iacute;nh lương, quản l&yacute; th&ocirc;ng tin nh&acirc;n vi&ecirc;n&hellip; V&agrave; l&agrave; c&ocirc;ng cụ để x&acirc;y dựng hệ thống chức danh, bộ ti&ecirc;u chuẩn đ&agrave;o tạo, bộ ti&ecirc;u chuẩn đ&aacute;nh gi&aacute;, ph&acirc;n t&iacute;ch v&agrave; hoạch định nguồn lực, quản trị chi ph&iacute; nh&acirc;n sự, x&acirc;y dựng ch&iacute;nh s&aacute;ch đ&atilde;i ngộ, thu h&uacute;t nh&acirc;n t&agrave;i&hellip; cho một doanh nghiệp kh&ocirc;ng chỉ lực lượng nh&acirc;n sự lớn, nhiều cấp bậc đ&ograve;i hỏi phải c&oacute; c&aacute;c nghiệp vụ v&ocirc; c&ugrave;ng phức tạp mang t&iacute;nh đặc th&ugrave; ri&ecirc;ng của từng ng&agrave;nh m&agrave; c&ograve;n phải đ&aacute;p ứng đầy đủ y&ecirc;u cầu thay đổi ch&iacute;nh s&aacute;ch nh&acirc;n sự từ ch&iacute;nh phủ.</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Phần mềm Quản l&yacute; nh&acirc;n sự &amp; tiền lương cung cấp c&aacute;c c&ocirc;ng cụ hữu hiệu trong việc dự b&aacute;o t&igrave;nh h&igrave;nh nh&acirc;n sự trong tương lai gi&uacute;p doanh nghiệp x&acirc;y dựng kế hoạch tuyển dụng v&agrave; đ&agrave;o tạo, hoạch định v&agrave; ổn định đội ngũ nh&acirc;n sự kế cận. Gi&uacute;p x&acirc;y dựng c&aacute;c ti&ecirc;u chuẩn đ&aacute;nh gi&aacute;&nbsp; hiệu quả c&ocirc;ng việc nh&acirc;n vi&ecirc;n&nbsp; đầy linh hoạt.</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">C&aacute;c chức năng ch&iacute;nh của phần mềm</span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">:</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản L&yacute; nh&acirc;n sự:</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quản l&yacute; hồ sơ nh&acirc;n vi&ecirc;n</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quản l&yacute; hồ sơ thử việc</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Xử l&yacute; HĐLĐ hết hạn</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Khen thưởng kỷ luật</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; chấm c&ocirc;ng</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;T&iacute;ch hợp m&aacute;y chấm c&ocirc;ng</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quản l&yacute; chấm c&ocirc;ng</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quản l&yacute; tăng ca</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quản l&yacute; nghỉ ph&eacute;p</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quản l&yacute; lịch l&agrave;m việc, nhật k&yacute; l&agrave;m việc</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; t&iacute;nh lương:</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Lương kho&aacute;n, lương Thời vụ</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Lương thời gian, lương theo sản phẩm</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Bảng lương tiền mặt, chuyển khoản qua ng&acirc;n h&agrave;ng</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Ph&acirc;n t&iacute;ch ch&iacute;nh x&aacute;c c&aacute;c bảng</span></span></span></span></span></span><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;lương, cho ph&eacute;p trả b&ugrave; th&aacute;ng sau</span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; bảo hiểm, thuế thu nhập c&aacute; nh&acirc;n:</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Thiết lập động mức đ&oacute;ng Bảo hiểm, Thuế</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Xử l&yacute; lương đ&oacute;ng BH kh&aacute;c lương thực tế</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Kết xuất b&aacute;o c&aacute;o BH, BH thất nghiệp, Thuế theo qui định Nh&agrave; nước</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Thiết lập loại thu nhập chịu thuế</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Quyết to&aacute;n thuế TNCN</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; nh&acirc;n sự v&agrave; tuyển dụng:</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Ph&acirc;n t&iacute;ch nguồn lực</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Lập kế hoạch nh&acirc;n sự</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">&nbsp;Y&ecirc;u cầu tuyển dụng &amp; ph&ecirc; duyệt</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Quản l&yacute; đ&agrave;o tạo:</span></span></span></span></span></span></p>

<table cellspacing="0" class="Table" style="border-collapse:collapse; border:none; width:602px">
	<tbody>
		<tr>
			<td style="vertical-align:top; width:451.45pt">
			<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Kế hoạch &amp; ng&acirc;n s&aacute;ch đ&agrave;o tạo</span></span></span></span></span></p>

			<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Gửi &amp; ph&ecirc; duyệt y&ecirc;u cầu đ&agrave;o tạo</span></span></span></span></span></p>

			<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Tổ chức lớp học &amp; học vi&ecirc;n</span></span></span></span></span></p>

			<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Chi ph&iacute; đ&agrave;o tạo, r&agrave;ng buộc</span></span></span></span></span></p>

			<p style="margin-left:48px; text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAAGYktHRAAAAAAAAPlDu38AAAAJdnBBZwAAAfQAAAHlAB9tgCwAAAC7SURBVChTY/wPBAx4QMyMAww/v31nYAApxAXYE+b8Ny1eDGZjVfj555//DCHT/+uXLoeKABW+/vwDyoSAt19//WeInPufL20RVAQCGFTqtv3XatwO5vz9BxRIW/mfIWo+mI8MwJ5hTF/LwM7DxiAlyM1w//YrhuP1LgwWSiJQ70AAE4i43erJ8PMnE8P9j38YEj00MBSBAdhcIKjb9+g/Q8U+KA8TwBV+//ju/8aT1/7///cHKoIM/v8HAN0j8uG/ManHAAAAAElFTkSuQmCC" style="height:9px; width:10px" /></span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;Đ&aacute;nh gi&aacute; học vi&ecirc;n &amp; gi&aacute;o vi&ecirc;n</span></span></span></span></span></p>
			</td>
		</tr>
	</tbody>
</table>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">3/ Phần mềm quản l&yacute; bưu ch&iacute;nh</span></span></span></strong></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">L&agrave; phần mềm tối ưu h&oacute;a quy tr&igrave;nh nghiệp vụ, tổ chức quản l&yacute; v&agrave; điều h&agrave;nh c&aacute;c dịch vụ bưu ch&iacute;nh, nhằm tăng hiệu quả sản xuất kinh doanh, n&acirc;ng cao năng lực cạnh tranh của doanh nghiệp cũng như đơn vị bưu ch&iacute;nh tr&ecirc;n thị trường.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">C&aacute;c t&iacute;nh năng ch&iacute;nh của phần mềm</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản trị sản xuất: Quản l&yacute; giao, nhận, vận chuyển bưu phẩm bưu kiện. Theo d&otilde;i v&agrave; kiểm tra lịch tr&igrave;nh, trạng th&aacute;i của bưu phẩm, bưu kiện.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; doanh thu: Quản l&yacute; doanh thu của kh&aacute;ch h&agrave;ng, t&igrave;nh trạng c&ocirc;ng nợ, xuất h&oacute;a đơn, c&aacute;c b&aacute;o c&aacute;o li&ecirc;n quan đến doanh thu.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; kh&aacute;ch h&agrave;ng: Quản l&yacute; th&ocirc;ng tin hợp đồng, theo d&otilde;i trạng th&aacute;i của kh&aacute;ch h&agrave;ng c&ugrave;ng c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh đang &aacute;p dụng cho kh&aacute;ch h&agrave;ng</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản trị chi ph&iacute;: Cung cấp nhiều b&aacute;o c&aacute;o từ tổng qu&aacute;t đến chi tiết c&aacute;c chi ph&iacute; ph&aacute;t sinh trong qu&aacute; tr&igrave;nh sản xuất, vận chuyển bưu phẩm bưu kiện.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản trị chất lượng: B&aacute;o c&aacute;o v&agrave; ph&acirc;n t&iacute;ch chỉ ti&ecirc;u thời gian vận chuyển bưu phẩm bưu kiện.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản trị hệ thống: Quản l&yacute; v&agrave; ph&acirc;n quyền truy cập sử dụng hệ thống.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">Lợi &iacute;ch khi sử dụng phần mềm:</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; chặt chẽ quy tr&igrave;nh giao, nhận, vận chuyển bưu phẩm, bưu kiện tr&aacute;nh thất tho&aacute;t.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Theo d&otilde;i t&igrave;nh trạng của kh&aacute;ch h&agrave;ng m&agrave; qua đ&oacute; doanh nghiệp, đơn vị bưu ch&iacute;nh đề ra c&aacute;c ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng cũng như chăm s&oacute;c kh&aacute;ch h&agrave;ng hợp l&yacute;</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#333333">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c số liệu về chi ph&iacute;, chất lượng được thể hiện r&otilde; r&agrave;ng gi&uacute;p doanh nghiệp, đơn vị bưu ch&iacute;nh c&oacute; thể kịp thời tiết giảm chi ph&iacute; cũng như điều chỉnh n&acirc;ng cao chất lượng dịch vụ nhằm tối ưu h&oacute;a chi ph&iacute; v&agrave; n&acirc;ng cao chất lượng dịch vụ</span></span></span></span></span></p>

<p><strong><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">4/ Phần mềm kế to&aacute;n doanh nghiệp</span></span></span></span></strong></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm kế to&aacute;n doanh nghiệp đ&aacute;p ứng đầy đủ nghiệp vụ kế to&aacute;n cho lĩnh vực: thương mại, dịch vụ, x&acirc;y dựng, sản xuất.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Gi&uacute;p tiết kiệm tối đa thời gian kiểm tra, đối chiếu chứng từ, sổ s&aacute;ch, kết chuyển l&atilde;i lỗ, tự động lập b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Tất cả nghiệp vụ đều tu&acirc;n theo đ&uacute;ng th&ocirc;ng tư 133/2016/TT-BTC v&agrave; 200/2014/TT-BTC</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm kế to&aacute;n doanh nghiệp đ&aacute;p ứng ch&iacute;nh x&aacute;c nghiệp vụ kế to&aacute;n, tr&aacute;nh sai s&oacute;t so với l&agrave;m kế to&aacute;n theo phương ph&aacute;p thủ c&ocirc;ng.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản trị t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh kế to&aacute;n mọi l&uacute;c, mọi nơi th&ocirc;ng qua internet.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">T&iacute;ch hợp phần mềm h&oacute;a đơn điện tử, ng&acirc;n h&agrave;ng điện tử</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">gi&uacute;p tiết kiệm nhiều thời gian, chi ph&iacute; k&ecirc; khai thuế, sử dụng h&oacute;a đơn, giao dịch ng&acirc;n h&agrave;ng.</span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c t&iacute;nh năng ch&iacute;nh của phần mềm:</span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản trị hệ thống: </span></span><span style="font-size:10.5pt"><span style="background-color:white">gi&uacute;p người sử dụng khai b&aacute;o c&aacute;c th&ocirc;ng tin d&ugrave;ng cho to&agrave;n bộ phần mềm, quản l&yacute; việc truy cập phần mềm của những người sử dụng v&agrave; bảo tr&igrave; cơ sở dữ liệu kế to&aacute;n.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ kế to&aacute;n tổng hợp: </span></span><span style="font-size:10.5pt"><span style="background-color:white">&nbsp;ti&ecirc;́p nh&acirc;̣n dữ li&ecirc;̣u từ t&acirc;́t cả các ph&acirc;n h&ecirc;̣, cập nhật c&aacute;c phiếu kế to&aacute;n tổng qu&aacute;t, c&aacute;c b&uacute;t to&aacute;n điều chỉnh, c&aacute;c b&uacute;t to&aacute;n định kỳ, c&aacute;c b&uacute;t to&aacute;n ph&acirc;n bổ, kết chuyển cuối kỳ. Ph&acirc;n hệ kế to&aacute;n tổng hợp thực hiện tổng hợp số liệu từ tất cả c&aacute;c ph&acirc;n hệ kh&aacute;c v&agrave;o sổ s&aacute;ch kế to&aacute;n v&agrave; b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh theo quy định của nh&agrave; nước v&agrave; theo c&aacute;c mẫu đặc th&ugrave; do người sử dụng khai b&aacute;o.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ kế to&aacute;n tiền mặt, tiền gửi, tiền vay: </span></span><span style="font-size:10.5pt"><span style="background-color:white">thực hiện c&aacute;c giao dịch thu chi, thanh to&aacute;n, gi&uacute;p quản l&yacute; chặt chẽ, chi tiết việc thu chi theo đ&uacute;ng đối tượng, đ&uacute;ng chứng từ - h&oacute;a đơn, hợp đồng, dự &aacute;n, đơn h&agrave;ng, khế ước vay. Xuất c&aacute;c b&aacute;o c&aacute;o tiền mặt, c&aacute;c b&aacute;o c&aacute;o tiền gửi ng&acirc;n h&agrave;ng, c&aacute;c b&aacute;o c&aacute;o tiền vay.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ kế to&aacute;n mua b&aacute;n h&agrave;ng v&agrave; c&ocirc;ng nợ phải thu, phải trả:</span></span><span style="font-size:10.5pt"><span style="background-color:white"> lập đơn h&agrave;ng, xuất h&agrave;ng, ph&aacute;t h&agrave;nh h&oacute;a đơn v&agrave; thu tiền, gi&uacute;p cho việc tiếp nhận đơn h&agrave;ng đầy đủ, giao h&agrave;ng đ&uacute;ng hạn v&agrave; thu tiền kịp thời. Đặt mua, nhận h&agrave;ng, nhận h&oacute;a đơn v&agrave; thanh to&aacute;n cho nh&agrave; cung cấp, hỗ trợ cho việc đặt mua kịp thời, tồn kho tối ưu. C&ocirc;ng nợ được theo d&otilde;i chi tiết theo hạn thanh to&aacute;n của từng h&oacute;a đơn gi&uacute;p cho việc thanh to&aacute;n đ&uacute;ng hạn, x&acirc;y dựng mối quan hệ tốt với nh&agrave; cung cấp.</span></span></span></span></li>
</ul>

<p style="margin-left:48px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:10.5pt"><span style="background-color:white">&nbsp;Cung cấp c&aacute;c b&aacute;o c&aacute;o b&aacute;n h&agrave;ng đa dạng, hỗ trợ ph&acirc;n t&iacute;ch b&aacute;n h&agrave;ng như nh&oacute;m h&agrave;ng b&aacute;n chạy, mặt h&agrave;ng l&atilde;i cao, c&aacute;c kh&aacute;ch h&agrave;ng thường xuy&ecirc;n, kh&aacute;ch h&agrave;ng thanh to&aacute;n đ&uacute;ng hạn&hellip; từ đ&oacute; đưa ra phương &aacute;n b&aacute;n h&agrave;ng tốt hơn, tăng doanh thu, tăng lợi nhuận. C&aacute;c b&aacute;o c&aacute;o về tồn kho, về đơn h&agrave;ng b&aacute;n.</span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ kế to&aacute;n h&agrave;ng tồn kho: </span></span><span style="font-size:10.5pt"><span style="background-color:white">quản l&yacute; h&agrave;ng h&oacute;a vật tư, thực hiện nhập xuất kho, t&iacute;nh gi&aacute; h&agrave;ng tồn kho v&agrave; l&ecirc;n c&aacute;c b&aacute;o c&aacute;o theo quy định v&agrave; b&aacute;o c&aacute;o quản trị nội bộ. C&oacute; c&aacute;c phương ph&aacute;p t&iacute;nh gi&aacute; h&agrave;ng tồn kho: b&igrave;nh qu&acirc;n th&aacute;ng, b&igrave;nh qu&acirc;n di động hoặc nhập trước xuất trước. B&aacute;o c&aacute;o thống k&ecirc; v&agrave; ph&acirc;n t&iacute;ch về h&agrave;ng nhập, h&agrave;ng xuất v&agrave; h&agrave;ng tồn kho.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ t&agrave;i sản cố định: </span></span><span style="font-size:10.5pt"><span style="background-color:white">Quản l&yacute; </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">t&agrave;i sản cố định của doanh nghiệp</span></span><span style="font-size:10.5pt"><span style="background-color:white">, gi&uacute;p người sử dụng nắm r&otilde; c&aacute;c th&ocirc;ng tin kế to&aacute;n về t&agrave;i sản tại một thời điểm bất kỳ. Cho ph&eacute;p cập nhật c&aacute;c thay đổi li&ecirc;n quan đến t&agrave;i sản như điều chuyển bộ phận sử dụng, điều chỉnh gi&aacute; trị t&agrave;i sản, điều chỉnh khấu hao kỳ.Phần mềm gi&uacute;p cho việc quản l&yacute; TSCĐ đ&aacute;p ứng c&aacute;c y&ecirc;u cầu của kế to&aacute;n một c&aacute;ch thuận tiện v&agrave; ch&iacute;nh x&aacute;c.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ Ho&aacute; Đơn Điện Tử: </span></span><span style="font-size:10.5pt">Lập danh s&aacute;ch c&aacute;c kh&aacute;ch h&agrave;ng sử dụng H&oacute;a đơn điện tử. Khi lập ho&aacute; đơn, tự động chọn sử dụng H&oacute;a đơn điện tử với c&aacute;c kh&aacute;ch h&agrave;ng c&oacute; trong danh s&aacute;ch kh&aacute;ch h&agrave;ng sử dụng H&oacute;a đơn điện tử. Hỗ trợ ho&aacute; đơn b&aacute;n h&agrave;ng, ho&aacute; đơn dịch vụ, h&oacute;a đơn điều chỉnh gi&aacute; h&agrave;ng b&aacute;n, h&oacute;a đơn giảm gi&aacute; h&agrave;ng h&oacute;a - dịch vụ, phiếu xuất trả lại nh&agrave; cung cấp, h&oacute;a đơn dịch vụ trả lại nh&agrave; cung cấp. Hỗ trợ ph&aacute;t h&agrave;nh, huỷ hoặc điều chỉnh,in, gửi mail ho&aacute; đơn tới kh&aacute;ch h&agrave;ng. B&aacute;o c&aacute;o t&igrave;nh trạng của ho&aacute; đơn.</span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ b&aacute;o c&aacute;o thuế: Tập</span></span><span style="font-size:10.5pt"> hợp số liệu từ c&aacute;c ph&acirc;n hệ nghiệp vụ kh&aacute;c</span> <span style="font-size:11.5pt"><span style="font-family:Roboto"><span style="color:#333333">Tự động lập tờ khai thuế GTGT c&ugrave;ng c&aacute;c bảng phụ lục. K</span></span></span><span style="font-size:10.5pt"><span style="color:#333333">iểm tra số liệu, đối chiếu giữa sổ c&aacute;i v&agrave; b&aacute;o c&aacute;o thuế. Chương tr&igrave;nh lu&ocirc;n được cập nhật c&aacute;c th&ocirc;ng tư mới nhất do Bộ T&agrave;i ch&iacute;nh ban h&agrave;nh. </span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản l&yacute; thuế thu nhập c&aacute; nh&acirc;n: </span></span><span style="font-size:10.5pt">Khai b&aacute;o th&ocirc;ng tin nh&acirc;n vi&ecirc;n. Cập nhật ph&aacute;t sinh theo biểu thuế lũy tiến. Cập nhật ph&aacute;t sinh theo biểu thuế to&agrave;n phần. Cập nhật điều chỉnh thuế khấu trừ. T&iacute;nh thuế TNCN. Quyết to&aacute;n thuế TNCN, lập c&aacute;c b&aacute;o c&aacute;o theo đ&uacute;ng quy định của Bộ T&agrave;i ch&iacute;nh v&agrave; Tổng cục thuế.</span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ quản l&yacute; kho:&nbsp;&nbsp;&nbsp; </span></span></span></span></li>
</ul>

<p style="margin-left:48px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:11.5pt"><span style="font-family:Roboto"><span style="color:#333333">Quản l&yacute; h&agrave;ng h&oacute;a theo nhiều đặc t&iacute;nh gi&uacute;p người d&ugrave;ng c&oacute; thể theo d&otilde;i được nhiều đặc t&iacute;nh , theo nhiều đơn vị t&iacute;nh. Tự động đối so&aacute;t với Thủ kho để ph&aacute;t hiện ch&ecirc;nh lệch, xử l&yacute; ch&ecirc;nh lệch sau kiểm k&ecirc;.</span></span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ hợp đồng: </span></span><span style="font-size:10.5pt"><span style="background-color:white"><span style="color:#333333">Quản l&yacute; danh s&aacute;ch những hợp đồng b&aacute;n h&agrave;ng ph&aacute;t sinh. Quản l&yacute; được hợp đồng theo từng dự &aacute;n, từng thị trường, bộ phận chịu tr&aacute;ch nhiệm thực hiện hợp đồng, t&igrave;nh h&igrave;nh thực hiện hợp đồng, t&igrave;nh h&igrave;nh thanh to&aacute;n, c&aacute;c khoản dự kiến chi, l&atilde;i lỗ theo từng hợp đồng. Đặc biệt, phần mềm cung cấp nhiều b&aacute;o c&aacute;o số liệu ph&acirc;n t&iacute;ch về doanh thu, chi ph&iacute;, l&atilde;i lỗ theo từng dự &aacute;n, thị trường, bộ phận b&aacute;n h&agrave;ng, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng.</span></span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Nghiệp vụ lương: </span></span><span style="font-size:10.5pt"><span style="background-color:white"><span style="color:#333333">Lập bảng chấm c&ocirc;ng, t&iacute;nh lương theo hệ số hoặc theo mức lương thỏa thuận; Tự động hạch to&aacute;n chi ph&iacute; lương, bảo hiểm, thuế TNCN; Lập bảng thanh to&aacute;n lương, thuế TNCN, bảo hiểm. Phần mềm hỗ trợ t&iacute;nh lương l&agrave;m th&ecirc;m giờ, l&agrave;m đ&ecirc;m, lập nhiều kỳ trả lương trong 1 th&aacute;ng, t&iacute;nh lương theo buổi hoặc theo giờ.</span></span></span></span></span></li>
</ul>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:10.5pt"><span style="background-color:white"><span style="color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In bảng lương, phiếu lương theo mẫu của doanh nghiệp.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:10.5pt"><span style="background-color:white"><span style="color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tự động hạch to&aacute;n chi ph&iacute; lương, chi ph&iacute; bảo hiểm v&agrave; thuế TNCN&nbsp; cho&nbsp;&nbsp;&nbsp;&nbsp; doanh nghiệp.&nbsp; Cập nhật c&aacute;c quy định của Nh&agrave; nước về Biểu t&iacute;nh thuế TNCN cho từng loại đối tượng v&agrave; c&aacute;c quy định về mức lương tối thiểu, c&aacute;c khoản giảm trừ, miễn thuế v&agrave; tỷ lệ tr&iacute;ch đ&oacute;ng c&aacute;c khoản bảo hiểm bắt buộc để phần mềm tự động t&iacute;nh lương, bảo hiểm, tạm t&iacute;nh thuế TNCN cho nh&acirc;n vi&ecirc;n.</span></span></span></span></span></p>

<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">5/ Phần mềm quản l&yacute; t&agrave;i sản</span></span></strong></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm quản l&yacute; t&agrave;i sản gi&uacute;p c&aacute;c doanh nghiệp thực hiện c&aacute;c nghiệp vụ: Mua sắm tập trung, đề nghị trang bị t&agrave;i sản, cấp t&agrave;i sản,&nbsp; thay đổi th&ocirc;ng tin t&agrave;i sản, đ&aacute;nh gi&aacute; lại t&agrave;i sản, khấu hao t&agrave;i sản, điều chuyển, kiểm k&ecirc; v&agrave; bảo dưỡng t&agrave;i sản,&hellip;</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Phần mềm quản l&yacute; t&agrave;i sản c&ograve;n gi&uacute;p doanh nghiệp tự động tổng hợp b&aacute;o c&aacute;o, tra cứu t&agrave;i sản của trung t&acirc;m, c&ocirc;ng ty con trực thuộc trực tuyến qua internet.</span></span></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Đ&aacute;p ứng Th&ocirc;ng tư số 45/2018/TT-BTC hướng dẫn chế độ quản l&yacute; v&agrave; t&iacute;nh hao m&ograve;n, khấu hao t&agrave;i sản cố định tại doanh nghiệp v&agrave; t&agrave;i sản cố định do nh&agrave; nước giao cho doanh nghiệp quản l&yacute;</span></span></span></span><span style="font-size:11pt"><span style="font-family:Arial,sans-serif">&nbsp;</span></span></li>
</ul>

<p style="margin-left:48px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">C&aacute;c t&iacute;nh năng của phần mềm:</span></span></span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Quản l&yacute; t&agrave;i sản: q</span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">uản l&yacute; t&agrave;i sản theo từng loại t&agrave;i sản, theo ph&ograve;ng ban/bộ phận sử dụng. Cho ph&eacute;p điều chuyển t&agrave;i sản giữa c&aacute;c bộ phận. Theo d&otilde;i t&igrave;nh trạng của từng t&agrave;i sản v&agrave; c&aacute;c th&ocirc;ng tin chi tiết của t&agrave;i sản như năm sản xuất, năm bắt đầu sử dụng, xuất xứ sản phẩm, đặc t&iacute;nh của t&agrave;i sản, nguy&ecirc;n gi&aacute;, gi&aacute; trị hao m&ograve;n lũy kế, gi&aacute; trị c&ograve;n lại. Theo d&otilde;i t&agrave;i sản đang sử dụng, t&agrave;i sản đang cho thu&ecirc; hoặc đi thu&ecirc;. Theo d&otilde;i t&agrave;i sản doanh nghiệp tự mua sắm, được biếu tặng, viện trợ t&agrave;i trợ. Theo d&otilde;i t&agrave;i sản theo từng nguồn kinh ph&iacute; h&igrave;nh th&agrave;nh t&agrave;i sản.</span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Theo d&otilde;i sử dụng t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p theo d&otilde;i chi tiết việc sử dụng t&agrave;i sản tại Doanh nghiệp. Đ&aacute;p ứng b&aacute;o c&aacute;o c&ocirc;ng khai về t&igrave;nh h&igrave;nh sử dụng t&agrave;i sản tại Doanh nghiệp. </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Đ&aacute;nh gi&aacute; lại t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p ghi nhận c&aacute;c thay đổi về nguy&ecirc;n gi&aacute;, gi&aacute; trị c&ograve;n lại, số năm sử dụng của t&agrave;i sản theo bi&ecirc;n bản đ&aacute;nh gi&aacute; lại hoặc quyết định của ban l&atilde;nh đạo Doanh nghiệp. </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Kiểm k&ecirc; t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p lập bi&ecirc;n bản kiểm k&ecirc; t&agrave;i sản theo quy định kiểm k&ecirc; của doanh nghiệp.Theo d&otilde;i chi tiết qu&aacute; tr&igrave;nh thực hiện kiểm k&ecirc; t&agrave;i sản </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Bảo dưỡng t&agrave;i sản: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p lập kế hoạch bảo dưỡng t&agrave;i sản.Theo d&otilde;i chi tiết c&aacute;c t&agrave;i sản được bảo dưỡng. </span></span></span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:15.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Thống k&ecirc; b&aacute;o c&aacute;o: </span></span><span style="font-size:13.0pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Cho ph&eacute;p thống k&ecirc; v&agrave; xuất b&aacute;o c&aacute;o về t&iacute;nh h&igrave;nh sử dụng t&agrave;i sản, tăng giảm t&agrave;i sản, khấu hao t&agrave;i sản.</span></span></span></span></li>
</ul>
')
SET IDENTITY_INSERT [dbo].[C_Product] OFF
SET IDENTITY_INSERT [dbo].[C_Project] ON 

INSERT [dbo].[C_Project] ([Id], [Title], [Avatar], [ContentProject], [Date], [Author], [Type]) VALUES (2, N'testtt', N'13325704_589817427859336_3940722772307123811_n.jpg', N'<p>sdadas</p>
', CAST(N'2019-08-07 01:01:01.907' AS DateTime), N'Admin', NULL)
INSERT [dbo].[C_Project] ([Id], [Title], [Avatar], [ContentProject], [Date], [Author], [Type]) VALUES (3, N'tester', N'10363352_992678170813311_1681844756803174118_n.jpg', N'<p><strong>Kiểm tra <em>thử </em></strong><u>nghiệm</u></p>
', CAST(N'2019-08-07 13:25:22.547' AS DateTime), N'AdminWeb', NULL)
SET IDENTITY_INSERT [dbo].[C_Project] OFF
SET IDENTITY_INSERT [dbo].[C_Recruitment] ON 

INSERT [dbo].[C_Recruitment] ([Id], [Title], [ContentRecruit], [Date], [Position], [Picture]) VALUES (2, N'aaaaaaaa', N'<p>aaaaaaaaa</p>
', CAST(N'2019-08-08 00:11:15.723' AS DateTime), N'aaaa', N'accordion-image.png')
SET IDENTITY_INSERT [dbo].[C_Recruitment] OFF
SET IDENTITY_INSERT [dbo].[C_Slider] ON 

INSERT [dbo].[C_Slider] ([Id], [Title], [SubTitle]) VALUES (1, N'Showcase your app with Smart Landing Page', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting indus orem Ipsum has been the industry&#39;s standard dummy text ever since the when an own printer</p>
')
SET IDENTITY_INSERT [dbo].[C_Slider] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/24/2019 10:16:16 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/24/2019 10:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/24/2019 10:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 9/24/2019 10:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/24/2019 10:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/24/2019 10:16:16 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Company] SET  READ_WRITE 
GO
