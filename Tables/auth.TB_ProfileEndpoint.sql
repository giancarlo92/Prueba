CREATE TABLE [auth].[TB_ProfileEndpoint]
(
[IDProfile] [uniqueidentifier] NOT NULL,
[IDEndpoint] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_ProfileEndpoint] ADD CONSTRAINT [PK_IDProfileEndpoint] PRIMARY KEY CLUSTERED  ([IDProfile], [IDEndpoint]) ON [PRIMARY]
GO
ALTER TABLE [auth].[TB_ProfileEndpoint] ADD CONSTRAINT [FK_TB_ProfileEndpoint_TB_Endpoint] FOREIGN KEY ([IDEndpoint]) REFERENCES [auth].[TB_Endpoint] ([IDEndpoint])
GO
ALTER TABLE [auth].[TB_ProfileEndpoint] ADD CONSTRAINT [FK_TB_ProfileEndpoint_TB_Profile] FOREIGN KEY ([IDProfile]) REFERENCES [auth].[TB_Profile] ([IDProfile])
GO
