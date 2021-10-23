Algoritmo "Algoritmo de Física - Dilatação Ver.5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Luiz Antonio
// Descrição   : Algoritmo para CHETAR na aula de Física ...
// Autor(a)    : Breno C.
// Data atual  : 28/05/2021
Var

   qtd, i:inteiro
   coef:vetor [1..5] de real
   n1, n2:vetor [1..20] de inteiro
   cavIni, variCAV, variTemp, dilatacao:vetor [1..20] de real

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

      se (dilatacao[i] > 0) e (dilatacao[i] < 4) entao

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

      fimse

      se dilatacao[i] = 4 entao

         escreval(i, "° Calculo - Lista de Coeficientes de Liquidos")
         escreval("---------------------------------------------")
         escreval("")
         coef[1] <- 1.3 * (10 ^ -4)
         escreval("[1]  –  1.3 . 10^-4 °C^-1  – Coeficiente dilatação da Água")
         coef[2] <- 1.8 * (10 ^ -4)
         escreval("[2]  –  1.8 . 10^-4 °C^-1  –  Coeficiente dilatação do Mercúrio")
         coef[3] <- 11.2 * (10 ^ -4)
         escreval("[3]  –  11.2 . 10^-4 °C^-1  –  Coeficiente dilatação do Álcool etílico")
         coef[4] <- 14.9 * (10 ^ -4)
         escreval("[4]  –  14.9 . 10^-4 °C^-1  –  Coeficiente dilatação do Acetona")
         coef[5] <- 4.9 * (10 ^ -4)
         escreval("[5]  –  4.9 . 10^-4 °C^-1  –  Coeficiente dilatação do Glicerina")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite o numero [n] da opção de coeficiente para adiciona-lo ao Calculo: ")
         leia(n1[i])

         limpatela

         escreval(i, "° Calculo - Oque vamos calcular:")
         escreval("---------------------------------------------")
         escreval("")

         escreval("[1]  –  Variação de Volume Real (DV-Real)")
         escreval("[2]  –  Variação de Volume do Frasco (DV-Frasco)")
         escreval("[3]  –  Variação de Volume (DV-Aparente)")
         escreval("")
         
         escreval("---------------------------------------------")
         escreval("")
         escreva("Digite o numero [n] para realizar o calculo escolhido: ")
         leia(n2[i])



      fimse

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
         leia(cavIni[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variCAV[i] <- cavIni[i] * coef[n1[i]] * variTemp[i]

      fimse

      se (dilatacao[i] = 1) e (n2[i] = 2) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de comprimento (DL) em Metros: ")
         leia(variCAV[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         cavIni[i] <- variCAV[i] / (coef[n1[i]] * variTemp[i])

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 1) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a área inicial (A0) em Metros Quadrados: ")
         leia(cavIni[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variCAV[i] <- cavIni[i] * (2 * coef[n1[i]]) * variTemp[i]

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 2) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de área (DA) em Metros Quadrados: ")
         leia(variCAV[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         cavIni[i] <- variCAV[i] / ((2 * coef[n1[i]]) * variTemp[i])

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 1) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o volume inicial (V0) em Centimetros Cubicos: ")
         leia(cavIni[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variCAV[i] <- cavIni[i] * (3 * coef[n1[i]]) * variTemp[i]

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 2) entao
         escreval(i, "° Calculo - Preciso de mais informações: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a variação de volume (DV) em Centimetros Cubicos: ")
         leia(variCAV[i])
         escreva("Qual a variação de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         cavIni[i] <- variCAV[i] / (( 3 * coef[n1[i]]) * variTemp[i])

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
         escreval(" L0 . a . Délta T  = ", variCAV[i])
         escreval("")
         escreval(cavIni[i], "m *", coef[n1[i]], " °C^-1 *", variTemp[i], "°C =", variCAV[i], "m")
         escreval("")
         escreval(" O obejeto variou exatamente", variCAV[i], "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 1) e (n2[i] = 2) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" Délta L / a . Délta T  = ", cavIni[i])
         escreval("")
         escreval(variCAV[i], "m /", coef[n1[i]], " °C^-1 *", variTemp[i], "°C =", cavIni[i], "m")
         escreval("")
         escreval(" O comprimento inicial é de", cavIni[i], "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 1) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" A0 . b . Délta T  = ", variCAV[i])
         escreval("")
         escreval(cavIni[i], "m^2 * (2 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", variCAV[i], "m^2")
         escreval("")
         escreval(" O objeto variou exatamente", variCAV[i], "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 2) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" Délta A / b . Délta T  = ", cavIni[i])
         escreval("")
         escreval(variCAV[i], "m^2 / (2 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", cavIni[i], "m^2")
         escreval("")
         escreval(" A área inicial é de", cavIni[i], "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 1) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" V0 . y . Délta T  = ", variCAV[i])
         escreval("")
         escreval(cavIni[i], "cm^3 * (3 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", variCAV[i], "cm^3")
         escreval("")
         escreval(" O objeto variou exatamente", variCAV[i], "cm^3")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 2) entao

         escreval("Resultados do", i, "° Calculo: ")
         escreval("")
         escreval(" Délta V / y . Délta T  = ", cavIni[i])
         escreval("")
         escreval(variCAV[i], "cm^3 / (3 *", coef[n1[i]], " °C^-1) *", variTemp[i], "°C =", cavIni[i], "cm^3")
         escreval("")
         escreval(" O volume inicial é de", cavIni[i], "cm^3")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

   fimpara

Fimalgoritmo