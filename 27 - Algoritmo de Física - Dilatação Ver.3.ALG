Algoritmo "Algoritmo de F�sica - Dilata��o Ver.3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Luiz Antonio
// Descri��o   : Algoritmo para CHETAR na aula de F�sica ...
// Autor(a)    : Breno C.
// Data atual  : 28/05/2021
Var

   qtd, i:inteiro
   coef:vetor [1..5] de real
   n1, n2:vetor [1..20] de inteiro
   compIni_areaIni, variComp_variArea, variTemp, dilatacao:vetor [1..20] de real

Inicio

   //Aqui o usuario escolhe quanto calculos ele quer fazer.

   escreva("Quantos calculos de Dilata��o voc� quer Realizar: ")
   leia(qtd)

   limpatela

   //Aqui acontece uma repeti��o at� o numero de calculos escolhido pelo usuario.

   para i de 1 ate qtd faca

      //Aqui o programa exibe duas op��es tipos de dilata��o para que o usuario escolha.

      escreval(i, "� Calculo - Op��es de Dilata��o")
      escreval("---------------------------------------------")
      escreval("")
      escreval("[1]  �  Linear")
      escreval("[2]  �  Superficial")
      escreval("[3]  �  Volum�trica")
      escreval("")
      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] da op��o para realizar o calculo do tipo de dilata��o: ")
      leia(dilatacao[i])

      limpatela

      //Aqui o programa exibe uma lista de coeficientes dilata��o para que o usuario
      //o adicione ao tipo de calculo escolhido anteriomente.

      escreval(i, "� Calculo - Lista de Coeficientes")
      escreval("---------------------------------------------")
      escreval("")
      coef[1] <- 11 * (10 ^ -6)
      escreval("[1]  �  11 . 10^-6 �C^-1  � Coeficiente dilata��o do A�o")
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
      leia(n1[i])

      limpatela

      //Aqui o programa exibe duas op��es de elementos do tipo de dilata��o
      //escolhido que podem ser encontrados. Para que o usuario prossiga para
      //a pr�xima etapa.

      escreval(i, "� Calculo - Oque vamos calcular:")
      escreval("---------------------------------------------")
      escreval("")
      se dilatacao[i] = 1 entao
         escreval("[1]  �  Varia��o de Comprimento (DL)")
         escreval("[2]  �  Comprimento Inicial (L0)")
         escreval("")
      fimse

      se dilatacao[i] = 2 entao
         escreval("[1]  �  Varia��o de �rea (DA)")
         escreval("[2]  �  �rea Inicial (A0)")
         escreval("")

      fimse

      se dilatacao[i] = 3 entao
         escreval("[1]  �  Varia��o de Volume (DA)")
         escreval("[2]  �  Volume Inicial (A0)")
         escreval("")

      fimse

      escreval("---------------------------------------------")
      escreval("")
      escreva("Digite o numero [n] para realizar o calculo escolhido: ")
      leia(n2[i])

      limpatela

      //Aqui o programa faz varias valida��es.
      //Se dilatacao e n2 forem verdadeiras o calculo com os elementos
      //escolhidos anteriormente � feito. Caso contr�rio n�o � feito o calculo.
      //E o programa passa para as pr�ximas valida��es, at� que uma seja
      //verdadeira e o resultado do calculo seja armazenado.


      se (dilatacao[i] = 1) e (n2[i] = 1) entao
         escreval(i, "� Calculo - Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o comprimento inicial  (L0) em Metros: ")
         leia(compIni_areaIni[i])
         escreva("Qual a varia��o de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea[i] <- compIni_areaIni[i] * coef[n1[i]] * variTemp[i]

      fimse

      se (dilatacao[i] = 1) e (n2[i] = 2) entao
         escreval(i, "� Calculo - Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a varia��o de comprimento (DL) em Metros: ")
         leia(variComp_variArea[i])
         escreva("Qual a varia��o de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni[i] <- variComp_variArea[i] / (coef[n1[i]] * variTemp[i])

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 1) entao
         escreval(i, "� Calculo - Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a �rea inicial (A0) em Metros Quadrados: ")
         leia(compIni_areaIni[i])
         escreva("Qual a varia��o de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea[i] <- compIni_areaIni[i] * (2 * coef[n1[i]]) * variTemp[i]

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 2) entao
         escreval(i, "� Calculo - Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a varia��o de �rea (DA) em Metros Quadrados: ")
         leia(variComp_variArea[i])
         escreva("Qual a varia��o de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni[i] <- variComp_variArea[i] / ((2 * coef[n1[i]]) * variTemp[i])

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 1) entao
         escreval(i, "� Calculo - Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual o volume inicial (V0) em Metros Cubicos: ")
         leia(compIni_areaIni[i])
         escreva("Qual a varia��o de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         variComp_variArea[i] <- compIni_areaIni[i] * (3 * coef[n1[i]]) * variTemp[i]

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 2) entao
         escreval(i, "� Calculo - Preciso de mais informa��es: ")
         escreval("---------------------------------------------")
         escreval("")
         escreva("Qual a varia��o de volume (DV) em Metros Cubicos: ")
         leia(variComp_variArea[i])
         escreva("Qual a varia��o de temperatura (DT) em Celsius: ")
         leia(variTemp[i])
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

         compIni_areaIni[i] <- variComp_variArea[i] / (( 3 * coef[n1[i]]) * variTemp[i])

      fimse

      limpatela

   fimpara

   //Aqui acontece uma repeti��o ate o numero qtd definido pelo usuario
   //no inicio no programa.
   //Para exibir os resultados dos calculos feitos.

   para i de 1 ate qtd faca

      //S� ir� exibir o resultado se em algum momento a valida��o foi verdadeira
      //Caso a valida��o foi verdadeira por duas vezes ou mais
      //o programa ir� exibir essa mesma valida��o por meio da reti��o.

      se (dilatacao[i] = 1) e (n2[i] = 1) entao

         escreval("Resultados do", i, "� Calculo: ")
         escreval("")
         escreval(" L0 . a . D�lta T  = ", variComp_variArea[i])
         escreval("")
         escreval(compIni_areaIni[i], "m *", coef[n1[i]], " �C^-1 *", variTemp[i], "�C =", variComp_variArea[i], "m")
         escreval("")
         escreval(" O obejeto variou exatamente", variComp_variArea[i], "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 1) e (n2[i] = 2) entao

         escreval("Resultados do", i, "� Calculo: ")
         escreval("")
         escreval(" D�lta L / a . D�lta T  = ", compIni_areaIni[i])
         escreval("")
         escreval(variComp_variArea[i], "m /", coef[n1[i]], " �C^-1 *", variTemp[i], "�C =", compIni_areaIni[i], "m")
         escreval("")
         escreval(" O comprimento inicial � de", compIni_areaIni[i], "m")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 1) entao

         escreval("Resultados do", i, "� Calculo: ")
         escreval("")
         escreval(" A0 . b . D�lta T  = ", variComp_variArea[i])
         escreval("")
         escreval(compIni_areaIni[i], "m^2 * (2 *", coef[n1[i]], " �C^-1) *", variTemp[i], "�C =", variComp_variArea[i], "m^2")
         escreval("")
         escreval(" O objeto variou exatamente", variComp_variArea[i], "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 2) e (n2[i] = 2) entao

         escreval("Resultados do", i, "� Calculo: ")
         escreval("")
         escreval(" D�lta A / b . D�lta T  = ", compIni_areaIni[i])
         escreval("")
         escreval(variComp_variArea[i], "m^2 / (2 *", coef[n1[i]], " �C^-1) *", variTemp[i], "�C =", compIni_areaIni[i], "m^2")
         escreval("")
         escreval(" A �rea inicial � de", compIni_areaIni[i], "m^2")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 1) entao

         escreval("Resultados do", i, "� Calculo: ")
         escreval("")
         escreval(" V0 . y . D�lta T  = ", variComp_variArea[i])
         escreval("")
         escreval(compIni_areaIni[i], "m^3 * (3 *", coef[n1[i]], " �C^-1) *", variTemp[i], "�C =", variComp_variArea[i], "m^3")
         escreval("")
         escreval(" O objeto variou exatamente", variComp_variArea[i], "m^3")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

      se (dilatacao[i] = 3) e (n2[i] = 2) entao

         escreval("Resultados do", i, "� Calculo: ")
         escreval("")
         escreval(" D�lta V / y . D�lta T  = ", compIni_areaIni[i])
         escreval("")
         escreval(variComp_variArea[i], "m^3 / (3 *", coef[n1[i]], " �C^-1) *", variTemp[i], "�C =", compIni_areaIni[i], "m^3")
         escreval("")
         escreval(" O volume inicial � de", compIni_areaIni[i], "m^3")
         escreval("")
         escreval("---------------------------------------------")
         escreval("")

      fimse

   fimpara

Fimalgoritmo