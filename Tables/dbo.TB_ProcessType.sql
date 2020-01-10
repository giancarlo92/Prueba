CREATE TABLE [dbo].[TB_ProcessType]
(
[IDProcessType] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_ProcessType_IDProcessType] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_ProcessType] ADD CONSTRAINT [PK_TB_ProcessType] PRIMARY KEY CLUSTERED  ([IDProcessType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Description] ON [dbo].[TB_ProcessType] ([Description]) ON [PRIMARY]
GO
