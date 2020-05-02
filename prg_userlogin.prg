*************************************************
*	Nama Prog	: userLogin.prg					*
*	fungsi		: Hak Akses User				*
*	programmer	: Rahmat Try Yunandar			*
*************************************************
PARAMETERS login

DO CASE
CASE login=.t.
	**untuk admin/maunkeu
	SET SKIP OF BAR 1 OF file.t. &&login idup
CASE login=.f.
	**menu file
	SET SKIP OF BAR 2 OF file.t. &&loguot dimatikan
	**menu program
	SET SKIP OF POPUP program.t. &&semua menu dimatikan
	**menu report
	SET SKIP OF POPUP report.t. &&semua report dimatikan
	**menu tools
	SET SKIP OF POPUP tools.t. &&semua menu tools dimatikan
	**menu help
	SET SKIP OF POPUP help.t.
	ENDCASE
	
	
	
	

