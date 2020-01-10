CREATE TABLE [auth].[TB_Endpoint]
(
[IDEndpoint] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TB_Endpoint_IDEndpoint] DEFAULT (newid()),
[IDMethod] [uniqueidentifier] NOT NULL,
[EndpointUrl] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Endpoint] ADD CONSTRAINT [PK__TB_Endpo__3E0764B0CF4B8425] PRIMARY KEY CLUSTERED  ([IDEndpoint]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Idx_Endpoint] ON [auth].[TB_Endpoint] ([EndpointUrl], [IDMethod]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_Endpoint] ADD CONSTRAINT [FK_TB_Endpoint_TB_Method] FOREIGN KEY ([IDMethod]) REFERENCES [auth].[TB_Method] ([IDMethod])
GO
