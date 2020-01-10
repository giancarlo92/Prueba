CREATE TABLE [auth].[TB_Method]
(
[IDMethod] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Action_IDAction] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Method] ADD CONSTRAINT [PK__TB_Actio__4D260A26B3478266] PRIMARY KEY NONCLUSTERED  ([IDMethod]) ON [PRIMARY]
GO
