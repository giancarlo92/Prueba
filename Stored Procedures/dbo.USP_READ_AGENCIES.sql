SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 18-oct-2019
-- Description:	Lists Agencies
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_AGENCIES]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		AG.[IDAgency] AS [IDAgency],
				AG.[Description] AS [Description]
	FROM		[TB_Agency] AS AG;

END
GO
