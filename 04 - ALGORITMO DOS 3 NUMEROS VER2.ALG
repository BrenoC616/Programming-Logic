Algoritmo "Algoritmo dos 3 Numeros Ver2"

Var
   num:vetor[1..3] de inteiro
   i, resultado, op:inteiro

Inicio

   escreval("Digite tres numeros para obter a soma.")
   escreval("E para encerrar o programa digite o numero 0 nos tres numeros da soma!")
   escreval("")

   enquanto op <> 1 faca

      para i de 1 ate 3 faca
         escreva("Digite um numero: ")
         leia(num[i])
      fimpara

      escreval("")

      se ((num[1] = 0) e (num[2] = 0) e (num[3] = 0)) entao
         op <- 1
         escreval("Operação encerrada!")
         escreva("")
      senao
         resultado <- num[1] + num [2] + num[3]
         escreval("A soma de", num[1], " +", num[2], " +", num[3], " =", resultado)
         escreval("")
      fimse
      
   fimenquanto

Fimalgoritmo