Algoritmo "Entendendo Matrizes"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Breno C.
// Data atual  : 10/06/2021
Var
idade:vetor[1..5] de inteiro
salario:vetor [1..3,1..3] de real
i, j:inteiro

Inicio

para i de 1 ate 5 faca

escreva("Digite uma idade: ")
leia(idade[i])

fimpara

para j de 1 ate 3 faca

para i de 1 ate 3 faca

escreva("Digite um salario: ")
leia(salario[j,i])

fimpara

fimpara

para j de 1 ate 3 faca

para i de 1 ate 3 faca

escreva("Salarios: ")
escreva(salario[j,i])
escreval("")

fimpara

fimpara

Fimalgoritmo