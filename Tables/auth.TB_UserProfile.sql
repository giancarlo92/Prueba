CREATE TABLE [auth].[TB_UserProfile]
(
[IDUser] [uniqueidentifier] NOT NULL,
[IDProfile] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_UserProfile] ADD CONSTRAINT [PK__TB_UserP__7A70543D6FD1B520] PRIMARY KEY NONCLUSTERED  ([IDUser], [IDProfile]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_UserProfile] ADD CONSTRAINT [FK__TB_UserPr__IDPro__690797E6] FOREIGN KEY ([IDProfile]) REFERENCES [auth].[TB_Profile] ([IDProfile])
GO
ALTER TABLE [auth].[TB_UserProfile] ADD CONSTRAINT [FK__TB_UserPr__IDUse__69FBBC1F] FOREIGN KEY ([IDUser]) REFERENCES [auth].[TB_User] ([IDUser])
GO
