Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/04/2021
Var
num:vetor [1..3] de inteiro
i, op:inteiro

Inicio

enquanto op = 0 faca
para i de 1 ate 3 faca
escreva("Digite um numero: ")
leia(num[i])
fimpara

se (num[1] > num [2]) e (num[2] > num[3]) entao
op <- 1
fimse
fimenquanto

Fimalgoritmo