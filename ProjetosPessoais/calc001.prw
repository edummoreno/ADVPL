#include 'totvs.ch'

/*elabole o seguinte algoritmo em pseudoc�digo e em ADVPL
Em uma constru��o civil o engenheiro da obra precisou de
um mecanismo capaz de calcular alguns gastos com o material de
determinada situa��o. Tendo como entrada tr�s �reas com
medidas respectivas em metros de largura (altura) 20, 25 e 60 e 
como medidas em metros de comprimento de 40, 55 e 90 e levando 
em considera��o que se gasta R$ 30,00 por metro quadrado constru�do,
 desenvolva um algoritmo capaz de apresentar ao engenheiro o 
 custo final de cada �rea se considerarmos cada uma totalmente constru�da.
*/
user function calc001()
	local aLargura := {20,25,60}
	local aComprimento := {40,55,90}
	local _nI
	local nCustoTotal := {0,0,0}
	local custo := 30
	local nMetroQuadrado := {0,0,0} //tem que declarar todos os array

	//cria um array multimensional linha x coluna, um aAdd adiciona na primeira linha e nas demais colunas
	//aAdd(aLargura,{20,25,60},nil)
	//aAdd(aComprimento,{40,55,90},nil)

	for _nI := 1 to len(aLargura)

		nMetroQuadrado[_nI] := aLargura[_nI] * aComprimento[_nI]

	next _nI

	for _nI := 1 to len(aLargura)

		nCustoTotal[_nI] := nMetroQuadrado[_nI] * custo

	next _nI

	for _nI := 1 to len(aLargura)

		FWAlertInfo("o custo "+ alltrim(str(_nI))+" e " + alltrim(str(nCustoTotal[_nI])),"custo")

	next _nI




return
