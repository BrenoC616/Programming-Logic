Algoritmo "semnome"


Var
   passW, menu, menuOp, n, back_exit, sys :inteiro
   prodt:vetor [1..5] de real
   valorPedido, valorDinheiro, valorResto:real

Inicio

    prodt[1] <- 24.90
    prodt[2] <- 9.09
    prodt[3] <- 2.90
    prodt[4] <- 2.50
    prodt[5] <- 3.20
    
   enquanto sys = 0 faca

      escreval("Sistema ABC")
      escreval("")
      escreva("Digite a Senha para iniciar o Sistema: ")
      leia(passW)

      sys <- passW

      limpatela
      
      se passW = 13579 entao
      escreval("Menu S.U.")
      escreva("Qual produto deseja mudar o preço? ")
      leia(n)

      se (n <= 5) e (n > 0) entao
         escreval("Digite o novo preço: ")
         leia(prodt[n])
         escreva("Digite [4]: ")
         leia(sys)

         se sys = 0 entao
            menu <- 0

            limpatela
            
         fimse
      fimse
   fimse
   
   fimenquanto



   limpatela

   se passW = 1234 entao

      enquanto menu = 0 faca
         escreval("Menu de Opções")
         escreval("")
         escreval("[1] – Lista de produtos")
         escreval("[2] – Valor do pedido")
         escreval("[3] – Finalizar pedido")
         escreval("")
         escreva("Digite o numero da opção para acessa-la: ")
         leia(menuOp)

         limpatela

         se menuOp = 1 entao
            escreval("Lista de Produtos")
            escreval("")
            escreval("[1] Arroz 5Kg – 1 unidades – R$", prodt[1])



            escreval("[2] Feijão 1Kg - 1 unidades – R$", prodt[2])



            escreval("[3] Batata Un. – 1 unidades – R$", prodt[3])



            escreval("[4] Tomate Un. – 1 unidades – R$", prodt[4])



            escreval("[5] Cebola Un. – 1 unidades – R$", prodt[5])



            escreval("")
            escreva("Digite o numero do produto para adiciona-lo no Pedido: ")
            leia(n)

            valorPedido <- valorPedido + prodt[n]

         fimse

         se menuOp = 2 entao
            escreval("Valor do Pedido: R$", valorPedido)

            se back_exit = 0 entao
               escreval("")
               escreva("Para voltar ao Menu de Opções. Digite [1]: ")
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
