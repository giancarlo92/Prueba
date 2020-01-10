CREATE TABLE [auth].[TB_UserToken]
(
[IDUser] [uniqueidentifier] NOT NULL,
[IDToken] [uniqueidentifier] NOT NULL,
[Token] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Expiry] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_UserToken] ADD CONSTRAINT [PK_TB_UserToken] PRIMARY KEY CLUSTERED  ([IDUser], [IDToken]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_UserToken] ADD CONSTRAINT [FK_TB_UserToken_TB_User] FOREIGN KEY ([IDUser]) REFERENCES [auth].[TB_User] ([IDUser])
GO
