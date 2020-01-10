CREATE TABLE [auth].[TB_ProfileSubmodule]
(
[IDProfile] [uniqueidentifier] NOT NULL,
[IDModule] [uniqueidentifier] NOT NULL,
[IDSubmodule] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_ProfileSubmodule] ADD CONSTRAINT [PK__TB_Profi__30CDCC75F33CB68B] PRIMARY KEY NONCLUSTERED  ([IDProfile], [IDModule], [IDSubmodule]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_ProfileSubmodule] ADD CONSTRAINT [FK__TB_ProfileSubmod__6442E2C9] FOREIGN KEY ([IDModule], [IDSubmodule]) REFERENCES [auth].[TB_Submodule] ([IDModule], [IDSubmodule])
GO
ALTER TABLE [auth].[TB_ProfileSubmodule] ADD CONSTRAINT [FK__TB_ProfileSubmod__65370702] FOREIGN KEY ([IDProfile], [IDModule]) REFERENCES [auth].[TB_ProfileModule] ([IDProfile], [IDModule])
GO
