CREATE TABLE [auth].[TB_ProfileModule]
(
[IDProfile] [uniqueidentifier] NOT NULL,
[IDModule] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_ProfileModule] ADD CONSTRAINT [PK__TB_Profi__E41B66F7DE231B25] PRIMARY KEY NONCLUSTERED  ([IDProfile], [IDModule]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_ProfileModule] ADD CONSTRAINT [FK__TB_Profil__IDMod__625A9A57] FOREIGN KEY ([IDModule]) REFERENCES [auth].[TB_Module] ([IDModule])
GO
ALTER TABLE [auth].[TB_ProfileModule] ADD CONSTRAINT [FK__TB_Profil__IDPro__634EBE90] FOREIGN KEY ([IDProfile]) REFERENCES [auth].[TB_Profile] ([IDProfile])
GO
