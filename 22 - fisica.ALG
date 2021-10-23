Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/05/2021
Var

   op, dilatacao, n1, n2:inteiro
   coef:vetor [1..5] de real
   compIni_areaIni, variTemp, variComp_variArea:real


Inicio
   enquanto op = 0 faca

      escreval("Opções de Dilatação")
      escreval("")
      escreval("[1]  –  Linear")
      escreval("[2]  –  Superficial")
      escreval("")
      escreva("Digite o numero [n] da opção para acessa-la: ")
      leia(dilatacao)

      limpatela

      se dilatacao = 1 entao

         escreval("Lista de Coeficientes")
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
         escreva("Digite o numero [n] da opção de coeficiente para adiciona-lo ao Calculo: ")
         leia(n1)

         limpatela

         escreval("Oque vamos calcular:")
         escreval("")
         escreval("[1]  –  Variação de Comprimento (Délta L)")
         escreval("[2]  –  Comprimento Inicial (L0)")
         escreval("")
         escreva("Digite o numero [n] do produto para adiciona-lo no Pedido: ")
         leia(n2)

         limpatela

         se n2 = 1 entao

            escreva("Qual o comprimento inicial (L0): ")
            leia(compIni_areaIni)
            escreva("Qual a variação de temperatura (Délta T): ")
            leia(variTemp)

            escreval("")
            variComp_variArea <- compIni_areaIni * coef[n1] * variTemp

            escreval("Li . a . Délta T  = ", variComp_variArea)
            escreval("Variou exatamente", variComp_variArea, "m")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         senao se n2 = 2 entao

            escreva("Qual a variação de comprimento (Délta L): ")
            leia(variComp_variArea)
            escreva("Qual a variação de temperatura (Délta T): ")
            leia(variTemp)

            escreval("")
            compIni_areaIni <- variComp_variArea / (coef[n1] * variTemp)

            escreval("Délta L / a . Délta T  = ", compIni_areaIni)
            escreval("O comprimento inicial é de", compIni_areaIni, "m")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         fimse

      senao se dilatacao = 2 entao

         escreval("Lista de Coeficientes")
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
         escreva("Digite o numero [n] da opção de coeficiente para adiciona-lo ao Calculo: ")
         leia(n1)

         limpatela

         escreval("Oque vamos calcular: ")
         escreval("")
         escreval("[1]  –  Variação de Área (Délta A)")
         escreval("[2]  –  Área Inicial (A0)")
         escreval("")
         escreva("Digite o numero [n] do produto para adiciona-lo no Pedido: ")
         leia(n2)

         limpatela

         se n2 = 1 entao

            escreval("Qual a área inicial (A0): ")
            leia(compIni_areaIni)
            escreval("Qual a variação de temperatura (Délta T): ")
            leia(variTemp)

            escreval("")
            variComp_variArea <- compIni_areaIni * (2 * coef[n1]) * variTemp

            escreval("Li . a . Délta T  = ", variComp_variArea)
            escreval("Variou exatamente", variComp_variArea, "m2")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         senao se n2 = 2 entao

            escreva("Qual a variação de área (Délta A): ")
            leia(variComp_variArea)
            escreva("Qual a variação de temperatura (Délta T): ")
            leia(variTemp)

            escreval("")
            compIni_areaIni <- variComp_variArea / ((2 * coef[n1]) * variTemp)

            escreval("Délta A / b . Délta T  = ", compIni_areaIni)
            escreval("O comprimento inicial é de", compIni_areaIni, "m2")

            escreval("")
            escreva("Digite [1] para sair: ")
            leia(op)

         fimse

      fimse

   fimenquanto

Fimalgoritmo