Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Luiz Antonio
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/05/2021
Var

   progrm, dilatacao, n1, n2:inteiro
   coef:vetor [1..5] de real
   compIni_areaIni, variComp_variArea, variTemp:real

Inicio
   enquanto progrm = 0 faca

      escreval("Op��es de Dilata��o")
      escreval("---------------------------------------------")
      escreval("")
      escreval("[1]  �  Linear")
      escreval("[2]  �  Superficial")
      escreval("")
      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] da op��o para realizar o calculo do tipo de dilata��o: ")
      leia(dilatacao)

      limpatela

      escreval("Lista de Coeficientes")
      escreval("---------------------------------------------")
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
      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] da op��o de coeficiente para adiciona-lo ao Calculo: ")
      leia(n1)

      limpatela

      escreval("Oque vamos calcular:")
      escreval("---------------------------------------------")
      escreval("")
      se dilatacao = 1 entao
         escreval("[1]  �  Varia��o de Comprimento (D�lta L)")
         escreval("[2]  �  Comprimento Inicial (L0)")
         escreval("")

      senao se dilatacao = 2 entao
         escreval("[1]  �  Varia��o de �rea (D�lta A)")
         escreval("[2]  �  �rea Inicial (A0)")
         escreval("")

      fimse

      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] para realizar o calculo escolhido: ")
      leia(n2)

      limpatela

      se (dilatacao = 1) e (n2 = 1) entao
         escreval("Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o comprimento inicial (L0) em Metros: ")
         leia(compIni_areaIni)
         escreva("Qual a varia��o de temperatura (D�lta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea <- compIni_areaIni * coef[n1] * variTemp

         escreval("Resultados: ")
         escreval("")
         escreval(" L0 . a . D�lta T  = ", variComp_variArea)
         escreval("")
         escreval(compIni_areaIni, "m *", coef[n1], " �C^-1 *", variTemp, "�C =", variComp_variArea, "m")
         escreval("")
         escreval(" O obejeto variou exatamente", variComp_variArea, "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

      se (dilatacao = 1) e (n2 = 2) entao
         escreval("Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a varia��o de comprimento (D�lta L) em Metros: ")
         leia(variComp_variArea)
         escreva("Qual a varia��o de temperatura (D�lta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni <- variComp_variArea / (coef[n1] * variTemp)

         escreval("Resultados: ")
         escreval("")
         escreval(" D�lta L / a . D�lta T  = ", compIni_areaIni)
         escreval("")
         escreval(variComp_variArea, "m /", coef[n1], " �C^-1 *", variTemp, "�C =", compIni_areaIni, "m")
         escreval("")
         escreval(" O comprimento inicial � de", compIni_areaIni, "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

      se (dilatacao = 2) e (n2 = 1) entao
         escreval("Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a �rea inicial (A0) em Metros Quadrados: ")
         leia(compIni_areaIni)
         escreva("Qual a varia��o de temperatura (D�lta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea <- compIni_areaIni * (2 * coef[n1]) * variTemp

         escreval("Resultados: ")
         escreval("")
         escreval(" A0 . b . D�lta T  = ", variComp_variArea)
         escreval("")
         escreval(compIni_areaIni, "m * (2 *", coef[n1], " �C^-1) *", variTemp, "�C =", variComp_variArea, "m^2")
         escreval("")
         escreval(" O objeto variou exatamente", variComp_variArea, "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

      se (dilatacao = 2) e (n2 = 2) entao
         escreval("Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a varia��o de �rea (D�lta A) em Metros Quadrados: ")
         leia(variComp_variArea)
         escreva("Qual a varia��o de temperatura (D�lta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni <- variComp_variArea / ((2 * coef[n1]) * variTemp)

         escreval("Resultados: ")
         escreval("")
         escreval(" D�lta A / b . D�lta T  = ", compIni_areaIni)
         escreval("")
         escreval(variComp_variArea, "m / (2 *", coef[n1], " �C^-1) *", variTemp, "�C =", compIni_areaIni, "m^2")
         escreval("")
         escreval(" A �rea inicial � de", compIni_areaIni, "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

   fimenquanto

Fimalgoritmo