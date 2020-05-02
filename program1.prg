SET TALk OFF
SET MULTILOCKS ON
SET DATE ITALIAN
SET STATUS OFF
SET SYSMENU off
SET DEFAULT TO "c:\vfr 9.0\penggajian\"
do FORM "c:\vfr 9.0\penggajian\formsplash.scx"
DO FORM "c:\vfr 9.0\penggajian\form utama.scx"
DO gaji.mpr
PUSH MENU _MSYSMENU
MODIFY WINDOWS SCREEN TITLE;
	'(C) ta 2008 Rahmat Try ';
	NOCLOSE FLOAT ZOOM
_screen.Caption="APLIKASI GAJI (_TA)"
_screen.Icon="C:\VFR 9.0\new Blue\Beveled Pengy.ico"
_screen.Picture="C:\VFR 9.0\Penggajian\3D Wallpaper\DeviantRunFactor21-2.jpg"
ON SHUTDOWN quit
_screen.WindowState= 2
DO FORM "c:\vfr 9.0\penggajian\form login.scx"
rEAD event





