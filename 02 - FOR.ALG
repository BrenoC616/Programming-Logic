Algoritmo "For"

Var
   i, j, n, result:inteiro
   num:vetor[1..3] de inteiro

Inicio

   para i de 1 ate 3 faca
      escreva("Digite um numero: ")
      leia(n)

      result <- result + n

   fimpara

   escreval("A soma é: ", result)

   ///////////////////////////////////////

   n <- 0
   result <- 0
   i <- 3

   ///////////////////////////////////////

   enquanto i > 0 faca
      escreva("Digite um numero: ")
      leia(n)

      result <- result + n

      i <- i - 1

   fimenquanto

   escreval("A soma é: ", result)

   ///////////////////////////////////////

   n <- 0
   result <- 0

   ///////////////////////////////////////

   para i de 1 ate 3 faca
      escreva("Escreva um numero: ")
      leia(num[i])
   fimpara

   para i de 1 ate 3 faca
      se num[i] = 0 entao
         para j de 1 ate 3 faca
            result <- result + num[j]
         fimpara
         escreva("Resultado: ", result)
      fimse
   fimpara

   //////////////////////////////////////

   n <- 0
   result <- 0

   //////////////////////////////////////


   enquanto num[i] <> 0 faca
      result <- 0
      para i de 1 ate 3 faca
         escreva("Escreva um numero: ")
         leia(num[i])
      fimpara

      se num[i] <> 0 entao
         para j de 1 ate 3 faca
            result <- result + num[j]
         fimpara
         escreva("Resultado: ", result)
      fimse
   fimenquanto

   //////////////////////////////////////
   
   n <- 0
   result <- 0
   
   //////////////////////////////////////
   
   para i de 1 ate 3 faca
      escreva("Escreva um numero: ")
      leia(num[i])
   fimpara

   para i de 1 ate 3 faca
      se num[i] >= 0 entao
         para j de 1 ate 3 faca
            result <- result + num[j]
         fimpara
         escreva("Resultado: ", result)
      fimse
   fimpara
   
Fimalgoritmo