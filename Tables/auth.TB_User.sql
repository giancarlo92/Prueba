CREATE TABLE [auth].[TB_User]
(
[IDUser] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_User_IDUser] DEFAULT (newid()),
[Username] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Nickname] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_User] ADD CONSTRAINT [PK__TB_User__EAE6D9DE3BE672AE] PRIMARY KEY NONCLUSTERED  ([IDUser]) ON [PRIMARY]
GO
