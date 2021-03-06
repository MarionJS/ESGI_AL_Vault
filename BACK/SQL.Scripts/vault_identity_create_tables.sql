USE [vault_identity]
GO
/****** Object:  Table [dbo].[AuthUsers]    Script Date: 14/07/2022 20:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](450) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[LastConnection] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AuthUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
