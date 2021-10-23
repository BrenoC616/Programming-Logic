Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio 
// Descrição   : Algoritmo para calcular Combinação
// Autor(a)    : Breno C.
// Data atual  : 05/06/2021
Var
n, p, i, x, np:inteiro
num:vetor [1..3] de inteiro


Inicio

escreval("Digite os Valores N e P para calcular a combinação ...")
escreval("Sendo N até 12, e P < N ...")
escreval("")


////////////////////////////////


escreva("Digite o valor de N: ")
leia(n)

num[1] <- n

x <- num[1] - 1

para i de 1 ate x faca

n <- n * (num[1] - i)

fimpara


////////////////////////////////


escreva("Digite o valor de P: ")
leia(p)

num[2] <- p

x <- num[2] - 1

para i de 1 ate x faca

p <- p * (num[2] - i)

fimpara


////////////////////////////////


num[3] <- num[1] - num[2]

x <- num[3] - 1

np <- num[3]

para i de 1 ate x faca

np <- np * (num[3] - i)

fimpara

escreval("")
escreval(num[1], "! /", num[2], "! * (", num[1], " -", num[2], " )! =", n / (p * np))

escreval("")
escreva("O resultado da combinação é:", n / (p * np))

Fimalgoritmo