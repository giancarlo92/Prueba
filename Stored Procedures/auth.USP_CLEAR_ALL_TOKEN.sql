SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 28-oct-2019
-- Description:	Borra todas las sesiones del sistema
-- =============================================
CREATE PROCEDURE [auth].[USP_CLEAR_ALL_TOKEN]
AS
BEGIN
	
	SET NOCOUNT ON;

    DELETE [TB_UserToken];


END
GO
