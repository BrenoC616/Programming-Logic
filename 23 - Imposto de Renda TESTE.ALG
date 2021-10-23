Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/05/2021
Var
   salario:vetor [1..10] de real
   salariot:inteiro
   nome:vetor [1..10] de caractere
   nomet:caractere
   i, qtd, a, b, c, d:inteiro
   t1, t2, t3, t4:vetor [1..3] de caractere
   qtd1, qtd2, qtd3, qtd4:inteiro

Inicio

   para i de 1 ate 5 faca
      escreva("Digite seu nome: ")
      leia(nomet)
      escreva("Digite seu salario: ")
      leia(salariot)

      escreval("")

      se salariot <= 1000 entao
         qtd1 <- qtd1 + 1
         a <- a + 1
         t1[a] <- nomet                                                                                                                                                                                                                                                                                                                            riot > 1000 entaot[i] <- nomet
      fimse
      se (salariot > 1000) e (salariot <= 4000) entao
         qtd2 <- qtd2 + 1
         b <- b + 1
         t2[b] <- nomet
      fimse
      se (salariot > 4000) e (salariot <= 7500) entao
         qtd3 <- qtd3 + 1
         c <- c + 1
         t3[c] <- nomet
      fimse
      se salariot > 7500 entao
         qtd4 <- qtd4 + 1
         d <- d + 1
         t4[d] <- nomet                                                                                                                                                                                                                                                                                                                            riot > 1000 entaot[i] <- nomet
      fimse
   fimpara
   escreval("Não pagam Imposto de Renda (Salario de até R$1000)")
   escreval("")
   para i de 1 ate qtd1 faca
      escreval("Nome: ", t1[i])
   fimpara
   escreval("")
   escreval("----------------------------------------------------------")
   escreval()
   escreval("Pagam 7,5% de Imposto de Renda (Salario maior que R$1000 até R$4000)")
   escreval("")
   para i de 1 ate qtd2 faca
      escreval("Nome: ", t2[i])
   fimpara
   escreval("")
   escreval("----------------------------------------------------------")
   escreval()
   escreval("Pagam 18% de Imposto de Renda (Salario maior que R$4000 até R$7500)")
   escreval("")
   para i de 1 ate qtd3 faca
      escreval("Nome: ", t3[i])
   fimpara
   escreval("")
   escreval("----------------------------------------------------------")
   escreval()
   escreval("Pagam 27,5% de Imposto de Renda (Salario maior que R$7500)")
   escreval("")
   para i de 1 ate qtd4 faca
      escreval("Nome: ", t4[i])
   fimpara

Fimalgoritmo