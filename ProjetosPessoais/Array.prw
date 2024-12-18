#include 'protheus.ch'
#include 'parmtype.ch'

user function AVETOR()
	// Array: SAO COLECOES de valores, semelhantes a uma lista
	// Cada Item em um arraY referenciado pela INDICACAO de sua POSICAO numerica]]
	local dData := Date()
	local aValores := ("jOAO",dData,100)
	
	Alert(aValores[2]) //Exibe a POSICAO 2 do array
	Alert(aValores[3]) 
	
return
