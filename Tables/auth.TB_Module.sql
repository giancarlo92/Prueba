CREATE TABLE [auth].[TB_Module]
(
[IDModule] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Module_IDModule] DEFAULT (newid()),
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Icon] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrderPath] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Module] ADD CONSTRAINT [PK__TB_Modul__D73B8CEE71EC74BB] PRIMARY KEY NONCLUSTERED  ([IDModule]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_OrderPath] ON [auth].[TB_Module] ([OrderPath]) ON [PRIMARY]
GO
