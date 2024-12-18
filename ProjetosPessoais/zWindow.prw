#include 'totvs.ch'


user function zWindow()
	define window oWindow from 001,001 to 400,500

	ACTIVATE window oWindow MAXIMIZED ON INIT (u_zWindow() ,oWindow:End)


return
