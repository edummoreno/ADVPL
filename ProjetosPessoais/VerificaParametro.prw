#include 'totvs.ch'


User Function VerificaParametro()
	local _cParam := .T.


	IF valtype(_cParam) == 'L'
		IF _cParam
			_cParam := 'T'
		endif
	elseif valtype(_cParam) == 'C'
		_cParam := alltrim(_cParam)
	endif


	alert(_cParam)


return
