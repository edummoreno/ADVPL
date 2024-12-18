/*define variaveis fortemente tipadas*/

#INCLUDE "PARMTYPE.CH"
#INCLUDE "TOVS.CH"

user function T102PARAM()
local cVar := "TOTVS"
local nVAR := 1987
local lVar := .F.
local dVar := Date()
local bVar := {|| MsgInfo("CODEBLOCK")}
Local uVar := 50 // OU "50"
Local aVar := {}
Local oVar := TWSDLManager():New()

ParamType(cVar, nVar, lVar, dVar, bVar, uVar, aVar, oVar) /*chama FUNCAO e entra com cada tipo de variavel*/

Return(NIL) /*retorna vazio*/


/*define um FUNCAO estatica que recebe alguns parametros*/
Static Function ParamType(cVar, nVar, lVar, dVar, bVar, uVar, aVar, oVar)

	/*define cada tipo de variavel*/
	PARAMTYPE 1 VAR cVar AS CHARACTER	OPTIONAL DEFAULT ""
	PARAMTYPE 2 VAR nVar AS NUMERIC		OPTIONAL DEFAULT 0
	PARAMTYPE 3 VAR lVar AS LOGICAL		OPTIONAL DEFAULT .T.
	PARAMTYPE 4 VAR dVar AS DATE		OPTIONAL DEFAULT Date()
	PARAMTYPE 5 VAR bVar AS BLOCK		OPTIONAL DEFAULT {|| .F.}
	PARAMTYPE 6 VAR uVar AS CHARACTER, NUMERIC OPTIONAL DEFAULT "0"
	PARAMTYPE 7 VAR aVar AS ARRAY		OPTIONAL DEFAULT Array(0)
	PARAMTYPE 8 VAR oVar AS OBJETC		OPTIONAL DEFAULT JsonObject():New()
	
return(NIL) /*retorna vazio*/
