Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/04/2021
Var
   i, j, k, result, resultb:inteiro
   num:vetor[1..3] de inteiro


Inicio

   para i de 1 ate 3 faca
      num[i] <- 1
   fimpara

   enquanto num[i] <> 0 faca
      result <- 0
      para i de 1 ate 3 faca
         escreva("Escreva um numero: ")
         leia(num[i])
      fimpara
 num[i] <>
      se0 entao
         para j de 1 ate 3 faca
            result <- result + num[j]
         fimpara
         escreval("Resultado: ", result)
      fimse
   fimenquanto

Fimalgoritmo