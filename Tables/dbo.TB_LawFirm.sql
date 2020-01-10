CREATE TABLE [dbo].[TB_LawFirm]
(
[IDLawFirm] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_LawFirm_IDLawFirm] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_LawFirm] ADD CONSTRAINT [PK_TB_LawFirm] PRIMARY KEY CLUSTERED  ([IDLawFirm]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_LawFirm] ([Description]) ON [PRIMARY]
GO
