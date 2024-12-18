#include 'totvs.ch'

#define EULER 2,71828180

// Função de ativação logística
user function sigmoid(_nx)
	local _nRetorno := 1 / (1 + EULER^(-_nx))

return _nRetorno


//Função para treinar o modelo de regressão logística
user function train_logistic_regression(Xao, y, m, n, theta)
    local i, j
    local LEARNING_RATE := 0.01
    local ITERATIONS := 1000
    local prediction
    local error

    for i := 1 to ITERATIONS
        for j := 1 to m
            // Calcula a previsão usando a função de ativação logística
            _nx := theta[1] + theta[2] * Xao[j]

            prediction := u_sigmoid(_nx)

            // Calcula o erro
            error := prediction - y[j]

            // Atualiza os parâmetros usando gradiente descendente
            theta[1] := theta[1] - LEARNING_RATE * error
            theta[2] := theta[2] - LEARNING_RATE * error * Xao[j]
        next j
    next i
return
