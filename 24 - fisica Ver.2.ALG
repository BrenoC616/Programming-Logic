Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/05/2021
Var

   progrm, dilatacao, n1, n2:inteiro
   coef:vetor [1..5] de real
   compIni_areaIni, variComp_variArea, variTemp:real

Inicio
   enquanto progrm = 0 faca

      escreval("Opções de Dilatação")
      escreval("---------------------------------------------")
      escreval("")
      escreval("[1]  –  Linear")
      escreval("[2]  –  Superficial")
      escreval("")
      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] da opção para realizar o calculo do tipo de dilatação: ")
      leia(dilatacao)

      limpatela

      escreval("Lista de Coeficientes")
      escreval("---------------------------------------------")
      escreval("")
      coef[1] <- 11 * (10 ^ -6)
      escreval("[1]  –  11 . 10^-6 °C^-1  –  Coeficiente dilatação do Aço")
      coef[2] <- 12 * (10 ^ -6)
      escreval("[2]  –  12 . 10^-6 °C^-1  –  Coeficiente dilatação do Ferro")
      coef[3] <- 15 * (10 ^ -6)
      escreval("[3]  –  15 . 10^-6 °C^-1  –  Coeficiente dilatação do Ouro")
      coef[4] <- 22 * (10 ^ -6)
      escreval("[4]  –  22 . 10^-6 °C^-1  –  Coeficiente dilatação do Alumínio")
      coef[5] <- 27 * (10 ^ -6)
      escreval("[5]  –  27 . 10^-6 °C^-1  –  Coeficiente dilatação do Chumbo")
      escreval("")
      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] da opção de coeficiente para adiciona-lo ao Calculo: ")
      leia(n1)

      limpatela

      escreval("Oque vamos calcular:")
      escreval("---------------------------------------------")
      escreval("")
      se dilatacao = 1 entao
         escreval("[1]  –  Variação de Comprimento (Délta L)")
         escreval("[2]  –  Comprimento Inicial (L0)")
         escreval("")

      senao se dilatacao = 2 entao
         escreval("[1]  –  Variação de Área (Délta A)")
         escreval("[2]  –  Área Inicial (A0)")
         escreval("")

      fimse

      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] para realizar o calculo escolhido: ")
      leia(n2)

      limpatela

      se (dilatacao = 1) e (n2 = 1) entao
         escreval("Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o comprimento inicial (L0) em Metros: ")
         leia(compIni_areaIni)
         escreva("Qual a variação de temperatura (Délta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea <- compIni_areaIni * coef[n1] * variTemp

         escreval("Resultados: ")
         escreval("")
         escreval(" L0 . a . Délta T  = ", variComp_variArea)
         escreval("")
         escreval(compIni_areaIni, "m *", coef[n1], " °C^-1 *", variTemp, "°C =", variComp_variArea, "m")
         escreval("")
         escreval(" O obejeto variou exatamente", variComp_variArea, "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

      se (dilatacao = 1) e (n2 = 2) entao
         escreval("Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de comprimento (Délta L) em Metros: ")
         leia(variComp_variArea)
         escreva("Qual a variação de temperatura (Délta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni <- variComp_variArea / (coef[n1] * variTemp)

         escreval("Resultados: ")
         escreval("")
         escreval(" Délta L / a . Délta T  = ", compIni_areaIni)
         escreval("")
         escreval(variComp_variArea, "m /", coef[n1], " °C^-1 *", variTemp, "°C =", compIni_areaIni, "m")
         escreval("")
         escreval(" O comprimento inicial é de", compIni_areaIni, "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

      se (dilatacao = 2) e (n2 = 1) entao
         escreval("Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a área inicial (A0) em Metros Quadrados: ")
         leia(compIni_areaIni)
         escreva("Qual a variação de temperatura (Délta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea <- compIni_areaIni * (2 * coef[n1]) * variTemp

         escreval("Resultados: ")
         escreval("")
         escreval(" A0 . b . Délta T  = ", variComp_variArea)
         escreval("")
         escreval(compIni_areaIni, "m * (2 *", coef[n1], " °C^-1) *", variTemp, "°C =", variComp_variArea, "m^2")
         escreval("")
         escreval(" O objeto variou exatamente", variComp_variArea, "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

      se (dilatacao = 2) e (n2 = 2) entao
         escreval("Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de área (Délta A) em Metros Quadrados: ")
         leia(variComp_variArea)
         escreva("Qual a variação de temperatura (Délta T) em Celsius: ")
         leia(variTemp)
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni <- variComp_variArea / ((2 * coef[n1]) * variTemp)

         escreval("Resultados: ")
         escreval("")
         escreval(" Délta A / b . Délta T  = ", compIni_areaIni)
         escreval("")
         escreval(variComp_variArea, "m / (2 *", coef[n1], " °C^-1) *", variTemp, "°C =", compIni_areaIni, "m^2")
         escreval("")
         escreval(" A área inicial é de", compIni_areaIni, "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite [1] para sair: ")
         leia(run)

      fimse

   fimenquanto

Fimalgoritmo