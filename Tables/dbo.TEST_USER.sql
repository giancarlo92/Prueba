CREATE TABLE [dbo].[TEST_USER]
(
[IDUser] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TEST_USER_IDUser] DEFAULT (newid()),
[UserName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Token] [uniqueidentifier] NULL,
[Expiry] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TEST_USER] ADD CONSTRAINT [PK_TEST_USER] PRIMARY KEY CLUSTERED  ([IDUser]) ON [PRIMARY]
GO
