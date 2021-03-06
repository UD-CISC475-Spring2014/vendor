USE [VolTeer]
GO
/****** Object:  Table [Vend].[tblContact]    Script Date: 4/7/2014 6:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vend].[tblContact](
	[ContactID] [uniqueidentifier] NOT NULL,
	[ContactFirstName] [nvarchar](50) NULL,
	[ContactMiddleName] [nvarchar](50) NULL,
	[ContactLastName] [nvarchar](50) NULL,
	[ActiveFlg] [bit] NOT NULL,
 CONSTRAINT [PK_tblContact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [Vend].[tblContact] ADD  CONSTRAINT [DF_tblContact_ContactID]  DEFAULT (newid()) FOR [ContactID]
GO
ALTER TABLE [Vend].[tblContact] ADD  DEFAULT ((0)) FOR [ActiveFlg]
GO
