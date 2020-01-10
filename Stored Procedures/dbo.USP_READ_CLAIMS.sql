SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Billy Arredondo
-- Create date: 12-oct-2019
-- Description:	Lists Claims
-- =============================================
CREATE PROCEDURE [dbo].[USP_READ_CLAIMS]
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT		CL.[IDClaim] AS [IDClaim],
				LF.[Description] AS [LawFirm],
				CL.[FileNumber] AS [FileNumber],
				CONVERT(DATE, CL.[NotifyDate]) AS [NotifyDate],
				CONVERT(DATE, CL.[ReceptionDate]) AS [ReceptionDate],
				CONVERT(DATE, CL.[DueDate]) AS [DueDate],
				AG.[Description] AS [Agency],
				CT.[Description] AS [City],
				PT.[Description] AS [ProcessType],
				LP.[Description] AS [LegalPosition],
				TP.[Description] AS [Typology]
	FROM		[TB_Claim] AS CL INNER JOIN
				[TB_LawFirm] AS LF ON
					CL.[IDLawFirm] = LF.[IDLawFirm] INNER JOIN
				[TB_Agency] AS AG ON
					CL.[IDAgency] = AG.[IDAgency] INNER JOIN
				[TB_City] AS CT ON
					CL.[IDCity] = CT.[IDCity] INNER JOIN
				[TB_ProcessType] AS PT ON
					CL.[IDProcessType] = PT.[IDProcessType] INNER JOIN
				[TB_LegalPosition] AS LP ON
					CL.[IDLegalPosition] = LP.[IDLegalPosition] INNER JOIN
				[TB_Typology] AS TP ON
					CL.[IDTypology] = TP.[IDTypology];

END
GO
