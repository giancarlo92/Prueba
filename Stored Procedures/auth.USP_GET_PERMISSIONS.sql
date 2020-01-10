SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [auth].[USP_GET_PERMISSIONS]
	@Token		NVARCHAR(200)
AS
	
	SELECT		M.[OrderPath] AS [ModuleOrder],
				M.[Description] AS [ModuleName],
				M.[Icon] AS [ModuleIcon],
				S.[OrderPath] AS [SubmoduleOrder],
				S.[Description] AS [SubmoduleName],
				S.[PatternPath] AS [URL]

	INTO		#Result

	FROM		[auth].[TB_UserToken] AS UT INNER JOIN
				[auth].[TB_User] AS U ON
					UT.[IDUser] = U.[IDUser] INNER JOIN
				[auth].[TB_UserProfile] AS UP ON
					U.[IDUser] = UP.[IDUser] INNER JOIN
				[auth].[TB_Profile] AS P ON
					UP.[IDProfile] = P.[IDProfile] INNER JOIN
				[auth].[TB_ProfileModule] AS PM ON
					P.[IDProfile] = PM.[IDProfile] INNER JOIN
				[auth].[TB_Module] AS M ON
					PM.[IDModule] = M.[IDModule] INNER JOIN
				[auth].[TB_Submodule] AS S ON
					M.[IDModule] = S.[IDModule] INNER JOIN
				[auth].[TB_ProfileSubmodule] AS PS ON
					PM.[IDProfile] = PS.[IDProfile] AND
					PM.[IDModule] = PS.[IDModule] AND
					S.[IDModule] = PS.[IDModule] AND
					S.[IDSubmodule] = S.[IDSubmodule]
				
	WHERE		UT.[Token] = @Token

	GROUP BY	M.[OrderPath],
				M.[Description],
				M.[Icon],
				S.[OrderPath],
				S.[Description],
				S.[PatternPath]

	ORDER BY	M.[OrderPath],
				S.[OrderPath];

	-- Table [0] --
	SELECT		R.[ModuleOrder],
				R.[ModuleName],
				[ModuleIcon]
	FROM		#Result AS R
	GROUP BY	R.[ModuleOrder],
				R.[ModuleName],
				[ModuleIcon];

	-- Table [1] --
	SELECT		R.[ModuleOrder],
				R.[ModuleName],
				R.[SubmoduleOrder],
				R.[SubmoduleName],
				R.[URL]
	FROM		#Result AS R;

RETURN 0
GO
