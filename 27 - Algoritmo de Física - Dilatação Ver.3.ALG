Algoritmo "Algoritmo de Física - Dilatação Ver.3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Algoritmo para CHETAR na aula de Física ...
// Autor(a)    : Breno C.
// Data atual  : 28/05/2021
Var

   qtd, i:inteiro
   coef:vetor [1..5] de real
   n1, n2:vetor [1..20] de inteiro
   compIni_areaIni, variComp_variArea, variTemp, dilatacao:vetor [1..20] de real

Inicio

   //Aqui o usuario escolhe quanto calculos ele quer fazer.

   escreva("Quantos calculos de Dilatação você quer Realizar: ")
   leia(qtd)

   limpatela

   //Aqui acontece uma repetição até o numero de calculos escolhido pelo usuario.

   para i de 1 ate qtd faca

      //Aqui o programa exibe duas opções tipos de dilatação para que o usuario escolha.

      escreval(i, "° Calculo - Opções de Dilatação")
      escreval("---------------------------------------------")
      escreval("")
      escreval("[1]  –  Linear")
      escreval("[2]  –  Superficial")
      escreval("[3]  –  Volumétrica")
      escreval("")
      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] da opção para realizar o calculo do tipo de dilatação: ")
      leia(dilatacao[i])

      limpatela

      //Aqui o programa exibe uma lista de coeficientes dilatação para que o usuario
      //o adicione ao tipo de calculo escolhido anteriomente.

      escreval(i, "° Calculo - Lista de Coeficientes")
      escreval("---------------------------------------------")
      escreval("")
      coef[1] <- 11 * (10 ^ -6)
      escreval("[1]  –  11 . 10^-6 °C^-1  – Coeficiente dilatação do Aço")
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
      leia(n1[i])

      limpatela

      //Aqui o programa exibe duas opções de elementos do tipo de dilatação
      //escolhido que podem ser encontrados. Para que o usuario prossiga para
      //a próxima etapa.

      escreval(i, "° Calculo - Oque vamos calcular:")
      escreval("---------------------------------------------")
      escreval("")
      se dilatacao[i] = 1 entao
         escreval("[1]  –  Variação de Comprimento (DL)")
         escreval("[2]  –  Comprimento Inicial (L0)")
         escreval("")
      fimse

      se dilatacao[i] = 2 entao
         escreval("[1]  –  Variação de Área (DA)")
         escreval("[2]  –  Área Inicial (A0)")
         escreval("")

      fimse

      se dilatacao[i] = 3 entao
         escreval("[1]  –  Variação de Volume (DA)")
         escreval("[2]  –  Volume Inicial (A0)")
         escreval("")

      fimse

      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] para realizar o calculo escolhido: ")
      leia(n2[i])

      limpatela

      //Aqui o programa faz varias validações.
      //Se dilatacao e n2 forem verdadeiras o calculo com os elementos
      //escolhidos anteriormente é feito. Caso contrário não é feito o calculo.
      //E o programa passa para as próximas validações, até que uma seja
      //verdadeira e o resultado do calculo seja armazenado.


      se (dilatacao[i] = 1) e (n2[i] = 1) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o comprimento inicial  (L0) em Metros: ")
         leia(compIni_areaIni[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea[i] <- compIni_areaIni[i] * coef[n1[i]] * variTemp[i]

      fimse

      se (dilatacao[i] = 1) e (n2[i] = 2) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de comprimento (DL) em Metros: ")
         leia(variComp_variArea[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni[i] <- variComp_variArea[i] / (coef[n1[i]] * variTemp[i])

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 1) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a área inicial (A0) em Metros Quadrados: ")
         leia(compIni_areaIni[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea[i] <- compIni_areaIni[i] * (2 * coef[n1[i]]) * variTemp[i]

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 2) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de área (DA) em Metros Quadrados: ")
         leia(variComp_variArea[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni[i] <- variComp_variArea[i] / ((2 * coef[n1[i]]) * variTemp[i])

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 1) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o volume inicial (V0) em Metros Cubicos: ")
         leia(compIni_areaIni[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea[i] <- compIni_areaIni[i] * (3 * coef[n1[i]]) * variTemp[i]

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 2) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de volume (DV) em Metros Cubicos: ")
         leia(variComp_variArea[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni[i] <- variComp_variArea[i] / (( 3 * coef[n1[i]]) * variTemp[i])

      fimse

      limpatela

   fimpara

   //Aqui acontece uma repetição ate o numero qtd definido pelo usuario
   //no inicio no programa.
   //Para exibir os resultados dos calculos feitos.

   para i de 1 ate qtd faca

      //Só irá exibir o resultado se em algum momento a validação foi verdadeira
      //Caso a validação foi verdadeira por duas vezes ou mais
      //o programa irá exibir essa mesma validação por meio da retição.

      se (dilatacao[i] = 1) e (n2[i] = 1) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" L0 . a . Délta T  = ", variComp_variArea[i])
         escreval("")
         escreval(compIni_areaIni[i], "m *", coef[n1[i]], " °C^-1 *", variTemp[i], "°C =", variComp_variArea[i], "m")
         escreval("")
         escreval(" O obejeto variou exatamente", variComp_variArea[i], "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 1) e (n2[i] = 2) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" Délta L / a . Délta T  = ", compIni_areaIni[i])
         escreval("")
         escreval(variComp_variArea[i], "m /", coef[n1[i]], " °C^-1 *", variTemp[i], "°C =", compIni_areaIni[i], "m")
         escreval("")
         escreval(" O comprimento inicial é de", compIni_areaIni[i], "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 1) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" A0 . b . Délta T  = ", variComp_variArea[i])
         escreval("")
         escreval(compIni_areaIni[i], "m^2 * (2 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", variComp_variArea[i], "m^2")
         escreval("")
         escreval(" O objeto variou exatamente", variComp_variArea[i], "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 2) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" Délta A / b . Délta T  = ", compIni_areaIni[i])
         escreval("")
         escreval(variComp_variArea[i], "m^2 / (2 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", compIni_areaIni[i], "m^2")
         escreval("")
         escreval(" A área inicial é de", compIni_areaIni[i], "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 1) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" V0 . y . Délta T  = ", variComp_variArea[i])
         escreval("")
         escreval(compIni_areaIni[i], "m^3 * (3 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", variComp_variArea[i], "m^3")
         escreval("")
         escreval(" O objeto variou exatamente", variComp_variArea[i], "m^3")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 2) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" Délta V / y . Délta T  = ", compIni_areaIni[i])
         escreval("")
         escreval(variComp_variArea[i], "m^3 / (3 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", compIni_areaIni[i], "m^3")
         escreval("")
         escreval(" O volume inicial é de", compIni_areaIni[i], "m^3")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

   fimpara

Fimalgoritmo