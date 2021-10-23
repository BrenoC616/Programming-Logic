Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/06/2021
Var

   cont, i, salario:inteiro
   nome:caractere
   nomes:vetor [1..31] de caractere
   salarios:vetor [1..31] de inteiro

Inicio

Procedimento repete
Inicio
   salarios[i] <- salario
   nomes[i] <- nome
Fimprocedimento

escreva("Quantos Nomes + Salarios você quer adicionar (Max.: 30): ")
leia(cont)

para i de 1 ate cont faca
   escreva("Digite o", i,"º Nome: ")
   leia(nome)
   escreva("Digite o Salario de ", nome,": ")
   leia(salario)

   se salario <= 1000 entao
      repete
   fimse
   se (salario > 1000) e (salario <= 4000) entao
      repete
   fimse
   se (salario > 4000) e (salario <= 7500) entao
      repete
   fimse
   se salario > 7500 entao
      repete
   fimse
fimpara

limpatela

escreval("Não pagam Imposto de Renda (Salario de até R$ 1000):")
escreval("")
para i de 1 ate cont faca
   se salarios[i] <= 1000 entao
      escreval("Nome: ", nomes[i], " - Salario: R$ ", salarios[i])
   fimse
fimpara
escreval("")
escreval("----------------------------------------------------------")
escreval("Pagam 7,5% de Imposto de Renda (Salario maior que R$ 1000 até R$ 4000):")
escreval("")
para i de 1 ate cont faca
   se (salarios[i] > 1000) e (salarios[i] <= 4000) entao
      escreval("Nome: ", nomes[i], " - Salario: R$ ", salarios[i])
   fimse
fimpara
escreval("")
escreval("----------------------------------------------------------")
escreval("Pagam 18% de Imposto de Renda (Salario maior que R$ 4000 até R$ 7500):")
escreval("")
para i de 1 ate cont faca
   se (salarios[i] > 4000) e (salarios[i] <= 7500) entao
      escreval("Nome: ", nomes[i], " - Salario: R$ ", salarios[i])
   fimse
fimpara
escreval("")
escreval("----------------------------------------------------------")
escreval("Pagam 27,5% de Imposto de Renda (Salario maior que R$ 7500):")
escreval("")
para i de 1 ate cont faca
   se salarios[i] > 7500 entao
      escreval("Nome: ", nomes[i], " - Salario: R$ ", salarios[i])
   fimse
fimpara

Fimalgoritmo