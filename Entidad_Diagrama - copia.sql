USE master
GO

Create Table Peliculas;

Use[Peliculas]
Go

/****** Object:  Table [dbo].[Cast]    Script Date: 22/03/2024 13:07:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cast](
	[idCast] [int] NOT NULL,
	[name] [varchar](500) NULL,
 CONSTRAINT [PK_Cast] PRIMARY KEY CLUSTERED 
(
	[idCast] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Peliculas]
GO

/****** Object:  Table [dbo].[CastMovie]    Script Date: 22/03/2024 13:07:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CastMovie](
	[idCastMovie] [int] NOT NULL,
	[idCast] [int] NULL,
	[idMovie] [int] NULL,
 CONSTRAINT [PK_CastMovie] PRIMARY KEY CLUSTERED 
(
	[idCastMovie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CastMovie]  WITH CHECK ADD  CONSTRAINT [FK_CastMovie_Cast] FOREIGN KEY([idCast])
REFERENCES [dbo].[Cast] ([idCast])
GO

ALTER TABLE [dbo].[CastMovie] CHECK CONSTRAINT [FK_CastMovie_Cast]
GO

ALTER TABLE [dbo].[CastMovie]  WITH CHECK ADD  CONSTRAINT [FK_CastMovie_Movie] FOREIGN KEY([idMovie])
REFERENCES [dbo].[Movie] ([idMovie])
GO

ALTER TABLE [dbo].[CastMovie] CHECK CONSTRAINT [FK_CastMovie_Movie]
GO


USE [Peliculas]
GO

/****** Object:  Table [dbo].[Country]    Script Date: 22/03/2024 13:08:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Country](
	[idCountry] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[idCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Peliculas]
GO

/****** Object:  Table [dbo].[Director]    Script Date: 22/03/2024 13:10:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Director](
	[idDirector] [int] NOT NULL,
	[Director] [varchar](250) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[idDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Peliculas]
GO

/****** Object:  Table [dbo].[DirectorMovie]    Script Date: 22/03/2024 13:10:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DirectorMovie](
	[idDirectorMovie] [int] NOT NULL,
	[idDirector] [int] NULL,
	[IdMovie] [int] NULL,
 CONSTRAINT [PK_DirectorMovie] PRIMARY KEY CLUSTERED 
(
	[idDirectorMovie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Director] FOREIGN KEY([idDirectorMovie])
REFERENCES [dbo].[Director] ([idDirector])
GO

ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Director]
GO

ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Movie] FOREIGN KEY([IdMovie])
REFERENCES [dbo].[Movie] ([idMovie])
GO

ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Movie]
GO

USE [Peliculas]
GO

/****** Object:  Table [dbo].[listed_in]    Script Date: 22/03/2024 13:10:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[listed_in](
	[idListend] [int] NOT NULL,
	[listed] [varchar](100) NULL,
 CONSTRAINT [PK_listed_in] PRIMARY KEY CLUSTERED 
(
	[idListend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Peliculas]
GO

/****** Object:  Table [dbo].[MovieListed]    Script Date: 22/03/2024 13:10:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MovieListed](
	[idMovieListed] [int] NOT NULL,
	[idListend] [int] NULL,
	[idMovie] [int] NULL,
 CONSTRAINT [PK_MovieListed] PRIMARY KEY CLUSTERED 
(
	[idMovieListed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MovieListed]  WITH CHECK ADD  CONSTRAINT [FK_MovieListed_listed_in] FOREIGN KEY([idListend])
REFERENCES [dbo].[listed_in] ([idListend])
GO

ALTER TABLE [dbo].[MovieListed] CHECK CONSTRAINT [FK_MovieListed_listed_in]
GO

ALTER TABLE [dbo].[MovieListed]  WITH CHECK ADD  CONSTRAINT [FK_MovieListed_Movie] FOREIGN KEY([idMovie])
REFERENCES [dbo].[Movie] ([idMovie])
GO

ALTER TABLE [dbo].[MovieListed] CHECK CONSTRAINT [FK_MovieListed_Movie]
GO



USE [Peliculas]
GO

/****** Object:  Table [dbo].[Rating]    Script Date: 22/03/2024 13:11:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rating](
	[idRating] [int] NOT NULL,
	[Rating] [varchar](100) NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[idRating] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [Peliculas]
GO

/****** Object:  Table [dbo].[Type]    Script Date: 22/03/2024 13:11:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Type](
	[idType] [int] NOT NULL,
	[Type] [varchar](200) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[idType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [Peliculas]
GO

/****** Object:  Table [dbo].[Movie]    Script Date: 22/03/2024 13:11:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movie](
	[idMovie] [int] NOT NULL,
	[Title] [varchar](500) NULL,
	[Description] [varchar](max) NULL,
	[duration] [varchar](max) NULL,
	[date_add] [datetime] NULL,
	[idCountry] [int] NULL,
	[idType] [int] NULL,
	[show_id] [varchar](50) NULL,
	[release_year] [int] NULL,
	[idRating] [int] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[idMovie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Country] FOREIGN KEY([idCountry])
REFERENCES [dbo].[Country] ([idCountry])
GO

ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Country]
GO

ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Rating] FOREIGN KEY([idRating])
REFERENCES [dbo].[Rating] ([idRating])
GO

ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Rating]
GO

ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Type] FOREIGN KEY([idType])
REFERENCES [dbo].[Type] ([idType])
GO

ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Type]
GO



