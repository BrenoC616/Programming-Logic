Algoritmo "Sistema ABC Ver.2"


Var
   passW, menu, menuOp, n, cont, cont2, back_exit:inteiro
   prodt:vetor [1..6] de real
   valorPedido, valorDinheiro, valorResto:real

Inicio

   escreval("Sistema ABC")
   escreval("")
   escreva("Digite a Senha para iniciar o Sistema: ")
   leia(passW)

   limpatela

   se passW = 1234 entao

      enquanto menu = 0 faca
         escreval("Menu de Op��es")
         escreval("")
         escreval("[1] � Lista de Produtos")
         escreval("[2] � Valor do Pedido")
         escreval("[3] � Finalizar Programa")
         escreval("")
         escreva("Digite o numero [n] da op��o para acessa-la: ")
         leia(menuOp)

         limpatela

         se menuOp = 1 entao
            enquanto n <> 6 faca
               escreval("Lista de Produtos")
               escreval("")
               prodt[1] <- 24.90
               escreval("[1] � Arroz 5Kg � 1 unidades � R$", prodt[1])
               prodt[2] <- 9.09
               escreval("[2] � Feij�o 1Kg - 1 unidades � R$", prodt[2])
               prodt[3] <- 2.90
               escreval("[3] � Batata Un. � 1 unidades � R$", prodt[3])
               prodt[4] <- 2.50
               escreval("[4] � Tomate Un. � 1 unidades � R$", prodt[4])
               prodt[5] <- 3.20
               escreval("[5] � Cebola Un. � 1 unidades � R$", prodt[5])
               escreval("")
               escreval("[6] - Para sair.")
               escreval("")
               escreva("Digite o numero [n] do produto para adiciona-lo no Pedido: ")
               leia(n)

               valorPedido <- valorPedido + prodt[n]
               limpatela

               cont <- cont + 1

            fimenquanto

            n <- 0

         fimse

         se menuOp = 2 entao
            cont2 <- cont2 + 1
            escreval("Valor do Pedido")
            escreval("")
            escreval("Valor do atual do Pedido: R$", valorPedido)
            escreval("")
            escreval("Quantidade de itens no Carrinho:", cont - cont2, " Produtos")

            se back_exit = 0 entao
               escreval("")
               escreva("Para voltar ao Menu de Op��es. Digite [1]: ")
               leia(back_exit)

            fimse

            back_exit <- 0

         fimse

         se menuOp = 3 entao
            escreval("Finalizar Programa")


            se back_exit = 0 entao
               escreval("")
               escreva("Para finalizar o Sistema. Digite [3] Novamente: ")
               leia(back_exit)

               se back_exit = 3 entao
                  menu <- 1

               senao

                  menu <- 1

               fimse

            fimse

         fimse

         limpatela

      fimenquanto

      se back_exit <> 3 entao
         escreva("Numero incorreto!")
         escreval("")

      fimse

   senao

      escreva("Senha incorreta!")
      escreval("")

   fimse

Fimalgoritmo