SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 19-nov-2019
-- Description:	Valida la ruta
-- =============================================
CREATE PROCEDURE [auth].[USP_VALIDATE_URL]
	@Token			NVARCHAR(200),
	@EndpointUrl	NVARCHAR(200)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT		(CASE COUNT(*) WHEN 0 THEN 0 ELSE 1 END) AS [IsValid]

	FROM		[auth].[TB_UserToken] AS UT INNER JOIN
				[auth].[TB_User] AS U ON
					UT.[IDUser] = U.[IDUser] INNER JOIN
				[auth].[TB_UserProfile] AS UP ON
					U.[IDUser] = UP.[IDUser] INNER JOIN
				[auth].[TB_Profile] AS P ON
					UP.[IDProfile] = P.[IDProfile] INNER JOIN
				[auth].[TB_ProfileEndpoint] AS PE ON
					P.[IDProfile] = PE.[IDProfile] INNER JOIN
				[auth].[TB_Endpoint] AS E ON
					PE.[IDEndpoint] = E.[IDEndpoint] INNER JOIN
				[auth].[TB_Method] AS M ON
					E.[IDMethod] = M.[IDMethod]

	WHERE		UT.[Token] = @Token AND
				E.[EndpointUrl] = @EndpointUrl;


END
GO
