CREATE TABLE [auth].[TB_Submodule]
(
[IDModule] [uniqueidentifier] NOT NULL,
[IDSubmodule] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Submodule_IDSubmodule] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PatternPath] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrderPath] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Submodule] ADD CONSTRAINT [PK__TB_Submo__9A5124C351AF9E43] PRIMARY KEY NONCLUSTERED  ([IDModule], [IDSubmodule]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_OrderPath] ON [auth].[TB_Submodule] ([IDModule], [OrderPath]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Submodule] ADD CONSTRAINT [FK__TB_Submod__IDMod__662B2B3B] FOREIGN KEY ([IDModule]) REFERENCES [auth].[TB_Module] ([IDModule])
GO
