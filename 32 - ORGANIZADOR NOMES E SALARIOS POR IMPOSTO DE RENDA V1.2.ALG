Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Luiz Antonio
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2021
Var
   nome_salario, l1, l2, l3, l4:vetor [1..30,0..1] de caractere
   num, qtd:vetor [1..30] de inteiro
   i, cont:inteiro

Inicio

   escreva("Quantos Nomes + Salarios voc� quer adicionar (Max.: 30): ")
   leia(cont)

   para i de 1 ate cont faca
      escreva("Digite seu nome: ")
      leia(nome_salario[i,0])
      escreva("Digite seu salario: ")
      leia(nome_salario[i,1])

      num[i] <- Caracpnum(nome_salario[i,1])0

      se num[i] <= 1000 entao
         qtd[1] <- qtd[1] + 1
         l1[qtd[1],0] <- maiusc(nome_salario[i,0])
         l1[qtd[1],1] <- nome_salario[i,1]
      fimse
      se (num[i] > 1000) e (num[i] <= 4000) entao
         qtd[2] <- qtd[2] + 1
         l2[qtd[2],0] <- maiusc(nome_salario[i,0])
         l2[qtd[2],1] <- nome_salario[i,1]
      fimse
      se (num[i] > 4000) e (num[i] <= 7500) entao
         qtd[3] <- qtd[3] + 1
         l3[qtd[3],0] <- maiusc(nome_salario[i,0])
         l3[qtd[3],1] <- nome_salario[i,1]
      fimse
      se num[i] > 7500 entao
         qtd[4] <- qtd[4] + 1
         l4[qtd[4],0] <- maiusc(nome_salario[i,0])
         l4[qtd[4],1] <- nome_salario[i,1]
      fimse

   fimpara

   limpatela

   escreval("N�o pagam Imposto de Renda (Salario de at� R$ 1000):")
   escreval("")
   para i de 1 ate qtd[1] faca
      escreval("Nome: ", l1[i,0], " - Salario: R$ ", l1[i,1])
   fimpara
   escreval("")
   escreval("----------------------------------------------------------")
   escreval("Pagam 7,5% de Imposto de Renda (Salario maior que R$ 1000 at� R$ 4000):")
   escreval("")
   para i de 1 ate qtd[2] faca
      escreval("Nome: ", l2[i,0], " - Salario: R$ ", l2[i,1])
   fimpara
   escreval("")
   escreval("----------------------------------------------------------")
   escreval("Pagam 18% de Imposto de Renda (Salario maior que R$ 4000 at� R$ 7500):")
   escreval("")
   para i de 1 ate qtd[3] faca
      escreval("Nome: ", l3[i,0], " - Salario: R$ ", l3[i,1])
   fimpara
   escreval("")
   escreval("----------------------------------------------------------")
   escreval("Pagam 27,5% de Imposto de Renda (Salario maior que R$ 7500):")
   escreval("")
   para i de 1 ate qtd[4] faca
      escreval("Nome: ", l4[i,0], " - Salario: R$ ", l4[i,1])
   fimpara

Fimalgoritmo