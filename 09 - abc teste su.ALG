Algoritmo "semnome"


Var
   passW, menu, menuOp, n, back_exit, sU:inteiro
   prodt:vetor [1..5] de real
   valorPedido, valorDinheiro, valorResto:real

Inicio

   prodt[1] <- 24.90
   prodt[2] <- 9.09
   prodt[3] <- 2.90
   prodt[4] <- 2.50
   prodt[5] <- 3.20

   escreval("Sistema ABC")
   escreval("")
   escreva("Digite a Senha para iniciar o Sistema: ")
   leia(passW)

   sU <- passW

   se passW = 13579 entao
      escreval("Menu S.U.")
      escreval("")
      escreval("[1] - Exibir Lista de Produtos")
      escreval("[2] - Mudar Pre�os")
      escreva("Digite o numero [n] da op��o para acessa-la: ")
      leia(menuOp)

      se menuOp = 1 entao
         escreval("Lista de Produtos")
         escreval("")
         escreval("[1] � Arroz 5Kg � 1 unidades � R$", prodt[1])
         escreval("[2] � Feij�o 1Kg - 1 unidades � R$", prodt[2])
         escreval("[3] � Batata Un. � 1 unidades � R$", prodt[3])
         escreval("[4] � Tomate Un. � 1 unidades � R$", prodt[4])
         escreval("[5] � Cebola Un. � 1 unidades � R$", prodt[5])
         escreval("")
         se back_exit = 0 entao
            escreva("Para voltar ao Menu de Op��es. Digite [0]: ")
            leia(back_exit)
            
            passW <- 13579
            menuOp <- 0
            
         fimse

      fimse

      se menuOp = 2 entao
         escreva("Digite o numero [n] do Produto que deseja mudar o Pre�o: ")
         leia(n)
         escreval("")

         se (n <= 5) e (n > 0) entao
            escreva("Digite o novo pre�o: R$ ")
            leia(prodt[n])
            escreval("")
            escreva("Para Sair do Menu S.U.. Digite [0]: ")
            leia(sU)

            se sU = 0 entao
               menu <- 0
               passW <- 0
               sU <- 0

               limpatela

            fimse

         fimse

      fimse

      escreval("Sistema ABC")
      escreval("")
      escreva("Digite a Senha para iniciar o Sistema: ")
      leia(passW)

   fimse

   limpatela

   se passW = 1234 entao

      enquanto menu = 0 faca
         escreval("Menu de Op��es")
         escreval("")
         escreval("[1] � Lista de produtos")
         escreval("[2] � Valor do pedido")
         escreval("[3] � Finalizar pedido")
         escreval("")
         escreva("Digite o numero [n] da op��o para acessa-la: ")
         leia(menuOp)

         limpatela

         se menuOp = 1 entao
            escreval("Lista de Produtos")
            escreval("")
            escreval("[1] � Arroz 5Kg � 1 unidades � R$", prodt[1])
            escreval("[2] � Feij�o 1Kg - 1 unidades � R$", prodt[2])
            escreval("[3] � Batata Un. � 1 unidades � R$", prodt[3])
            escreval("[4] � Tomate Un. � 1 unidades � R$", prodt[4])
            escreval("[5] � Cebola Un. � 1 unidades � R$", prodt[5])
            escreval("")
            escreva("Digite o numero [n] do produto para adiciona-lo no Pedido: ")
            leia(n)

            valorPedido <- valorPedido + prodt[n]

         fimse

         se menuOp = 2 entao
            escreval("Valor do Pedido: R$", valorPedido)

            se back_exit = 0 entao
               escreval("")
               escreva("Para voltar ao Menu de Op��es. Digite [1]: ")
               leia(back_exit)

            fimse

            back_exit <- 0

         fimse

         se menuOp = 3 entao
            escreval("Valor do Pedido: R$", valorPedido)
            escreva("Valor do Pagamento: R$ ")
            leia(valorDinheiro)
            escreval("")

            valorResto <- valorDinheiro - valorPedido

            escreval("Valor de troco: R$", valorResto)

            se back_exit = 0 entao
               escreval("")
               escreva("Para finalizar o Sistema. Digite [4]: ")
               leia(back_exit)

            fimse

            menu <- 1

         fimse

         limpatela

      fimenquanto

   fimse

Fimalgoritmo