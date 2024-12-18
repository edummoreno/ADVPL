#include 'protheus.ch'
#include 'protheus.ch'

user function BLOCO()

//local bBloco := {|| Alert("OLA Mundo!")}
   //Eval(bBloco)
   
   // passagem por PARAMETROS - bloco de CODIGOS
   Local bBloco := {|cMsg| Alert(cMsg)}
		Eval(bBloco,"Menssagem")
return
