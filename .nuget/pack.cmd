@ECHO OFF

IF [%1] EQU [] (
	ECHO Version number missing
	ECHO EXAMPLE: pack 1.0.0
	GOTO END
)

ECHO Creating package version %1...
nuget pack Altairis.LocalStorageExplorer.nuspec -BasePath ..\src -Version %1 

:END