SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Process Types
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_PROCESSTYPES]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		PT.[IDProcessType] AS [IDProcessType],
				PT.[Description] AS [Description]
	FROM		[TB_ProcessType] AS PT;

END
GO
