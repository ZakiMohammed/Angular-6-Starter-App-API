USE [master]
GO
/****** Object:  Database [foo_db]    Script Date: 12/14/2018 8:39:16 AM ******/
CREATE DATABASE [foo_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'foo_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\foo_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'foo_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\foo_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [foo_db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [foo_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [foo_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [foo_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [foo_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [foo_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [foo_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [foo_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [foo_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [foo_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [foo_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [foo_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [foo_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [foo_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [foo_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [foo_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [foo_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [foo_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [foo_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [foo_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [foo_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [foo_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [foo_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [foo_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [foo_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [foo_db] SET  MULTI_USER 
GO
ALTER DATABASE [foo_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [foo_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [foo_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [foo_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [foo_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [foo_db] SET QUERY_STORE = OFF
GO
USE [foo_db]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/14/2018 8:39:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[Message] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/14/2018 8:39:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[ShortContent] [varchar](200) NULL,
	[Content] [varchar](max) NULL,
	[Image] [varchar](200) NULL,
	[ThumbImage] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 12/14/2018 8:39:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[Icon] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/14/2018 8:39:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[Password] [varchar](20) NULL,
	[Email] [varchar](500) NULL,
	[Mobile] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Name], [Phone], [Email], [Message]) VALUES (1, N'Allen', N'8877665544', N'allen@gmail.com', N'Some Messageq')
INSERT [dbo].[Contact] ([ID], [Name], [Phone], [Email], [Message]) VALUES (2, N'sdfsd', N'fsd', N'sfdfs', N'sdfs')
INSERT [dbo].[Contact] ([ID], [Name], [Phone], [Email], [Message]) VALUES (3, N'adas', N'ada', N'adasd', N'adad')
INSERT [dbo].[Contact] ([ID], [Name], [Phone], [Email], [Message]) VALUES (4, N'sfd', N'fsfd', N'dsfsd', N'sdfsd')
INSERT [dbo].[Contact] ([ID], [Name], [Phone], [Email], [Message]) VALUES (5, N'sdfds', N'dsfds', N'ljhkj', N'lkhjlh')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1, N'sunt aut facere repellat provident occaecati excepturi optio reprehenderit', N'quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (2, N'qui est esse', N'et iusto sed quo iure voluptatem occaecati omnis eligendi aut ad voluptatem doloribus vel accusantium quis pariatur molestiae porro eius odio et labore et velit aut', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (3, N'ea molestias quasi exercitationem repellat qui ipsa sit aut', N'et iusto sed quo iure voluptatem occaecati omnis eligendi aut ad voluptatem doloribus vel accusantium quis pariatur molestiae porro eius odio et labore et velit aut', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (4, N'eum et est occaecati', N'ullam et saepe reiciendis voluptatem adipisci sit amet autem assumenda provident rerum culpa quis hic commodi nesciunt rem tenetur doloremque ipsam iure quis sunt voluptatem rerum illo velit', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (5, N'nesciunt quas odio', N'repudiandae veniam quaerat sunt sed alias aut fugiat sit autem sed est voluptatem omnis possimus esse voluptatibus quis est aut tenetur dolor neque', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (6, N'dolorem eum magni eos aperiam quia', N'ut aspernatur corporis harum nihil quis provident sequi mollitia nobis aliquid molestiae perspiciatis et ea nemo ab reprehenderit accusantium quas voluptate dolores velit et doloremque molestiae', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (7, N'magnam facilis autem', N'dolore placeat quibusdam ea quo vitae magni quis enim qui quis quo nemo aut saepe quidem repellat excepturi ut quia sunt ut sequi eos ea sed quas', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (8, N'dolorem dolore est ipsam', N'dignissimos aperiam dolorem qui eum facilis quibusdam animi sint suscipit qui sint possimus cum quaerat magni maiores excepturi ipsam ut commodi dolor voluptatum modi aut vitae', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (9, N'nesciunt iure omnis dolorem tempora et accusantium', N'consectetur animi nesciunt iure dolore enim quia ad veniam autem ut quam aut nobis et est aut quod aut provident voluptas autem voluptas', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (10, N'optio molestias id quia eum', N'quo et expedita modi cum officia vel magni doloribus qui repudiandae vero nisi sit quos veniam quod sed accusamus veritatis error', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porta ipsum lectus, vitae convallis est luctus ut. Sed at pellentesque justo. Morbi sit amet magna id sapien rutrum suscipit in non risus. Aenean eleifend auctor ligula, a viverra sapien pharetra et. Nunc scelerisque nisi ac iaculis sagittis. Duis eget tincidunt libero. Pellentesque laoreet ut leo vel finibus. Nulla ut facilisis lacus, vitae ultricies diam. Suspendisse gravida interdum dolor ac semper. Praesent porta est eget rutrum tincidunt. Aenean ultrices mollis orci. Donec elementum faucibus turpis, quis tincidunt urna varius eu. Praesent ornare ligula quis maximus finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Integer euismod egestas sollicitudin. Donec elementum sapien ut tortor rhoncus facilisis. Fusce ornare, dolor id aliquam venenatis, enim diam varius elit, sit amet mattis mi nisl fermentum justo. Ut eu massa non eros ornare convallis at ut libero. Sed ipsum mi, volutpat non libero at, pretium convallis tellus. Maecenas rhoncus scelerisque gravida. In condimentum elit magna, et imperdiet diam sollicitudin ut. Vivamus orci urna, cursus sed congue sit amet, viverra ut eros. Aliquam imperdiet finibus lacus, ac feugiat eros sollicitudin nec. Donec pharetra dui eros, vitae porttitor lorem venenatis sed. Integer vehicula auctor ex eget pulvinar. Nullam sagittis tortor ac risus ultricies ultrices. Duis congue, sapien vel vestibulum placerat, tellus nulla efficitur mauris, vel placerat odio magna vel erat. Sed maximus arcu quam, eu maximus metus elementum sed. Suspendisse vestibulum convallis dictum.</p>', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1001, N'dolor sint quo a velit explicabo quia nam', N'eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse', N'eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1002, N'maxime id vitae nihil numquam', N'veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis', N'veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1003, N'autem hic labore sunt dolores incidunt', N'enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deserunt', N'enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deserunt enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deserunt enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deserunt', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1004, N'rem alias distinctio quo quis', N'ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctio', N'ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctio ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctio ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctio', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1005, N'est et quae odit qui non', N'similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero', N'similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1006, N'quasi id et eos tenetur aut quo autem', N'eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur', N'eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1007, N'delectus ullam et corporis nulla voluptas sequi', N'non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrum eum', N'non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrum eum non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrum eum non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrum eum', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1008, N'iusto eius quod necessitatibus culpa ea', N'odit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cum maiores', N'odit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cum maiores dit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cum maiores dit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cum maiores', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
INSERT [dbo].[Product] ([ID], [Title], [ShortContent], [Content], [Image], [ThumbImage]) VALUES (1009, N'ullam ut quidem id aut vel consequuntur', N'debitis eius sed quibusdam non quis consectetur vitae\nimpedit ut qui consequatur sed aut in\nquidem sit nostrum et maiores adipisci atque\nquaerat voluptatem adipisci repudiandae', N'debitis eius sed quibusdam non quis consectetur vitae\nimpedit ut qui consequatur sed aut in\nquidem sit nostrum et maiores adipisci atque\nquaerat voluptatem adipisci repudiandae debitis eius sed quibusdam non quis consectetur vitae\nimpedit ut qui consequatur sed aut in\nquidem sit nostrum et maiores adipisci atque\nquaerat voluptatem adipisci repudiandae debitis eius sed quibusdam non quis consectetur vitae\nimpedit ut qui consequatur sed aut in\nquidem sit nostrum et maiores adipisci atque\nquaerat voluptatem adipisci repudiandae', N'http://placehold.it/1920x500', N'http://placehold.it/300x200')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (1, N'Service One', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-tree')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (2, N'Service Two', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-car')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (3, N'Service Three', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-support')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (4, N'Service Four', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-database')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (5, N'Service Five', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-bomb')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (6, N'Service Six', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-bank')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (7, N'Service Seven', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-paper-plane')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (8, N'Service Eight', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-space-shuttle')
INSERT [dbo].[Service] ([ID], [Name], [Description], [Icon]) VALUES (9, N'Service Nine', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.', N'fa-recycle')
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (1, N'john', N'john123', N'john@gmail.com', N'9988776655')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (2, N'allen', N'allen123', N'allen@gmail.com', N'7788776655')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (3, N'smith', N'smith123', N'smith@gmail.com', N'6588776655')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (4, N'william', N'william123', N'william@gmail.com', N'3388776655')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (5, N'josh', N'josh123', N'josh@gmail.com', N'7788552255')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (6, N'justin', N'justin', N'justin@gmail.com', N'8877665588')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Email], [Mobile]) VALUES (7, N'alex', N'alex123', N'alex@gmail.com', N'5588776655')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  StoredProcedure [dbo].[usp_ProductPagination]    Script Date: 12/14/2018 8:39:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ProductPagination]
	@skip			INT,
	@take			INT,
	@search			VARCHAR(1000) = '',
	@orderBy		VARCHAR(1000) = 'ID',
	@orderDir		VARCHAR(1000) = 'DESC'
AS
BEGIN
	IF @search = ''
		BEGIN
			EXEC('
				SELECT	* 
				FROM	[dbo].[Product] ORDER BY ' + @orderBy + ' ' + @orderDir + '
				OFFSET	(' + @skip + ') ROWS FETCH NEXT (' + @take + ') ROWS ONLY

				SELECT	COUNT(*) AS [FilterCount] 
				FROM	[dbo].[Product]

				SELECT	COUNT(*) AS [TotalCount] 
				FROM	[dbo].[Product]
			');
		END
	ELSE
		BEGIN
			EXEC('
				SELECT	* 
				FROM	[dbo].[Product] 
				WHERE	LOWER([Title])			LIKE LOWER(''' + @search + ''') + ''%'' OR
						LOWER(ShortContent)		LIKE LOWER(''' + @search + ''') + ''%''
				ORDER BY ' + @orderBy + ' ' + @orderDir + '
				OFFSET	(' + @skip + ') ROWS FETCH NEXT (' + @take + ') ROWS ONLY		
			
				SELECT	COUNT(*) AS [FilterCount] 
				FROM	[dbo].[Product]
				WHERE	LOWER([Title])			LIKE LOWER(''' + @search + ''') + ''%'' OR
						LOWER(ShortContent)		LIKE LOWER(''' + @search + ''') + ''%''

				SELECT	COUNT(*) AS [TotalCount] 
				FROM	[dbo].[Product]
			');
		END
END
GO
USE [master]
GO
ALTER DATABASE [foo_db] SET  READ_WRITE 
GO
