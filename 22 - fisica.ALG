Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Luiz Antonio
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/05/2021
Var

   op, dilatacao, n1, n2:inteiro
   coef:vetor [1..5] de real
   compIni_areaIni, variTemp, variComp_variArea:real


Inicio
   enquanto op = 0 faca

      escreval("Op��es de Dilata��o")
      escreval("")
      escreval("[1]  �  Linear")
      escreval("[2]  �  Superficial")
      escreval("")
      escreva("Digite o numero [n] da op��o para acessa-la: ")
      leia(dilatacao)

      limpatela

      se dilatacao = 1 entao

         escreval("Lista de Coeficientes")
         escreval("")
         coef[1] <- 11 * (10 ^ -6)
         escreval("[1]  �  11 . 10^-6 �C^-1  �  Coeficiente dilata��o do A�o")
         coef[2] <- 12 * (10 ^ -6)
         escreval("[2]  �  12 . 10^-6 �C^-1  �  Coeficiente dilata��o do Ferro")
         coef[3] <- 15 * (10 ^ -6)
         escreval("[3]  �  15 . 10^-6 �C^-1  �  Coeficiente dilata��o do Ouro")
         coef[4] <- 22 * (10 ^ -6)
         escreval("[4]  �  22 . 10^-6 �C^-1  �  Coeficiente dilata��o do Alum�nio")
         coef[5] <- 27 * (10 ^ -6)
         escreval("[5]  �  27 . 10^-6 �C^-1  �  Coeficiente dilata��o do Chumbo")
         escreval("")
         escreva("Digite o numero [n] da op��o de coeficiente para adiciona-lo ao Calculo: ")
         leia(n1)

         limpatela

         escreval("Oque vamos calcular:")
         escreval("")
         escreval("[1]  �  Varia��o de Comprimento (D�lta L)")
         escreval("[2]  �  Comprimento Inicial (L0)")
         escreval("")
         escreva("Digite o numero [n] do produto para adiciona-lo no Pedido: ")
         leia(n2)

         limpatela

         se n2 = 1 entao

            escreva("Qual o comprimento inicial (L0): ")
            leia(compIni_areaIni)
            escreva("Qual a varia��o de temperatura (D�lta T): ")
            leia(variTemp)

            escreval("")
            variComp_variArea <- compIni_areaIni * coef[n1] * variTemp

            escreval("Li . a . D�lta T  = ", variComp_variArea)
            escreval("Variou exatamente", variComp_variArea, "m")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         senao se n2 = 2 entao

            escreva("Qual a varia��o de comprimento (D�lta L): ")
            leia(variComp_variArea)
            escreva("Qual a varia��o de temperatura (D�lta T): ")
            leia(variTemp)

            escreval("")
            compIni_areaIni <- variComp_variArea / (coef[n1] * variTemp)

            escreval("D�lta L / a . D�lta T  = ", compIni_areaIni)
            escreval("O comprimento inicial � de", compIni_areaIni, "m")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         fimse

      senao se dilatacao = 2 entao

         escreval("Lista de Coeficientes")
         escreval("")
         coef[1] <- 11 * (10 ^ -6)
         escreval("[1]  �  11 . 10^-6 �C^-1  �  Coeficiente dilata��o do A�o")
         coef[2] <- 12 * (10 ^ -6)
         escreval("[2]  �  12 . 10^-6 �C^-1  �  Coeficiente dilata��o do Ferro")
         coef[3] <- 15 * (10 ^ -6)
         escreval("[3]  �  15 . 10^-6 �C^-1  �  Coeficiente dilata��o do Ouro")
         coef[4] <- 22 * (10 ^ -6)
         escreval("[4]  �  22 . 10^-6 �C^-1  �  Coeficiente dilata��o do Alum�nio")
         coef[5] <- 27 * (10 ^ -6)
         escreval("[5]  �  27 . 10^-6 �C^-1  �  Coeficiente dilata��o do Chumbo")
         escreval("")
         escreva("Digite o numero [n] da op��o de coeficiente para adiciona-lo ao Calculo: ")
         leia(n1)

         limpatela

         escreval("Oque vamos calcular: ")
         escreval("")
         escreval("[1]  �  Varia��o de �rea (D�lta A)")
         escreval("[2]  �  �rea Inicial (A0)")
         escreval("")
         escreva("Digite o numero [n] do produto para adiciona-lo no Pedido: ")
         leia(n2)

         limpatela

         se n2 = 1 entao

            escreval("Qual a �rea inicial (A0): ")
            leia(compIni_areaIni)
            escreval("Qual a varia��o de temperatura (D�lta T): ")
            leia(variTemp)

            escreval("")
            variComp_variArea <- compIni_areaIni * (2 * coef[n1]) * variTemp

            escreval("Li . a . D�lta T  = ", variComp_variArea)
            escreval("Variou exatamente", variComp_variArea, "m2")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         senao se n2 = 2 entao

            escreva("Qual a varia��o de �rea (D�lta A): ")
            leia(variComp_variArea)
            escreva("Qual a varia��o de temperatura (D�lta T): ")
            leia(variTemp)

            escreval("")
            compIni_areaIni <- variComp_variArea / ((2 * coef[n1]) * variTemp)

            escreval("D�lta A / b . D�lta T  = ", compIni_areaIni)
            escreval("O comprimento inicial � de", compIni_areaIni, "m2")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         fimse

      fimse

   fimenquanto

Fimalgoritmo