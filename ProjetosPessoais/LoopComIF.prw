#include 'totvs.ch'

//exemplo com for
static function zI(_n)
	local _nI
	for _nI = 0 to _n
		//verifica o resto da divisão por 1milhão e 0 se for zero exibe
		//numeros divisiveis por 1milhão
		if(_nI % 1000000 == 0)
			FWAlertInfo(cvaltochar(_nI),'titulo')
		endif
	next _nI

return

static function xI(_n,_nI)

    //recursividade
	if _nI <= _n
		if(_nI % 10 == 0)
			FWAlertInfo(cvaltochar(_nI),'titulo')
		endif
		xI(_n,_nI+1)
	endif

return

//@see https://medium.com/trainingcenter/o-que-é-recursão-e-tail-call-optimization-tco-f1938188223c
user function LoopComIF(_n,_nI)
    local _n  := 100
    local _nI := 0
    xI(_n,_nI)


	//local _nI := 100000000

	//zI(_nI)

return


