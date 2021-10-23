Algoritmo "Entendendo Matrizes 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Breno C.
// Data atual  : 10/06/2021
Var
n:vetor [1..5,1..5] de inteiro
i, j, total:inteiro
Inicio

para j de 1 ate 3 faca

para i de 1 ate 3 faca

escreva("Digite um numero [", j,",", i, " ]: ")
leia(n[j,i])

fimpara
fimpara

para j de 1 ate 3 faca

para i de 1 ate 3 faca

escreva(n[j,i])

total <- total + n[j,i]

se i = 3 entao
escreva(" =", total)
fimse

fimpara
escreval("")
total <- 0

fimpara

para j de 1 ate 3 faca

para i de 1 ate 3 faca

total <- total + n[i,j]

fimpara
escreva(total)
total <- 0

fimpara


Fimalgoritmo