Algoritmo "Algoritmo Organizador em Ordem Decrescente"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : O Programa pega os numeros digitados
//               de forma aleatoria e os organiza, em
//               ordem decrescente.
// Autor(a)    : Breno C.
// Data atual  : 20/05/2021

Var

   num:vetor [1..10] de inteiro
   i, j, cont, aux:inteiro

Inicio

   para i de 1 ate 10 faca

      escreva("Digite o", i, "° numero: ")
      leia(num[i])

   fimpara

   enquanto cont < 9 faca

      j <- 2

      para i de 1 ate 9 faca

         se num[i] < num[j] entao

            aux <- num[i]
            num[i] <- num[j]
            num[j] <- aux

         fimse

         j <- j + 1

      fimpara

      cont <- cont + 1

   fimenquanto

   limpatela

   escreval("Numeros em Ordem Decrescente!")
   escreval("")

   para i de 1 ate 10 faca

      escreval(num[i])

   fimpara

Fimalgoritmo