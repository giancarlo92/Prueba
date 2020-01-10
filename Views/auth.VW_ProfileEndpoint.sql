SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [auth].[VW_ProfileEndpoint]
AS
SELECT        P.Description AS Profile, E.EndpointUrl AS Endpoint, M.Description AS Method
FROM            auth.TB_Profile AS P INNER JOIN
                         auth.TB_ProfileEndpoint AS PM ON P.IDProfile = PM.IDProfile INNER JOIN
                         auth.TB_Endpoint AS E ON PM.IDEndpoint = E.IDEndpoint INNER JOIN
                         auth.TB_Method AS M ON E.IDMethod = M.IDMethod

GO
