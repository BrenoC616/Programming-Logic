Algoritmo "ALGORITMO FUSO HORARIO"



Var

horaSaida, tempoViagem, fusoDestino:inteiro
long:inteiro
fusoSaida:inteiro
i:inteiro
horaDestino:inteiro
horaVDestino:inteiro
Inicio

//4 Fusos horarios no brasil, -5 atrasado em relação
//ao horaio 0 de greenwich, -4, o -3 horario de
//brasilia e o fuso -2 de fernando de noronha
//GMT+0h00 ou UTC±0:00

//Horario de verão, apenas os estados do centro-oeste
//sudeste, e o sul
//Horario de verão = +1h00

escreva("Qual a hora do local de saida? (Ex.: 23H)")
leia(horaSaida)
escreval("")

escreva("Qual o fuso horario do local de saida? ")
leia(fusoSaida)
escreval("")

escreva("Qual o fuso horario do local de destino? ")
leia(fusoDestino)
escreval("")

escreva("Quanto tempo de viagem? ")
leia(tempoViagem)
escreval("")

i <- fusoDestino + (-1 * fusoSaida)

escreval("Diferença de fuso é de: UTC", i)
escreval("")

horaDestino <- horaSaida + i

se horaDestino > 24 entao
horaDestino <- horaDestino - 24

se horaDestino = 24 entao
escreval("Hora no local de destino é de: ", horaDestino, "h ou 00h (Meia noite)")
escreval("")

senao
escreval("Hora no local de destino é de: Dia seguinte & ", horaDestino, "h")
escreval("")
fimse

senao horaDestino = 24 entao
escreval("Hora no local de destino é de: ", horaDestino, "h ou 00h (Meia noite)")
escreval("")
fimse

horaVDestino <- horaDestino + tempoViagem

se horaVDestino > 24 entao
horaVDestino <- horaVDestino - 24
se horavDestino = 24 entao
escreva("Hora no local de destino após", tempoViagem, "h de viagem: +2 dia &", horaVDestino, "h e/ou 00h ()")
senao
escreva("Hora no local de destino após", tempoViagem, "h de viagem: +1 dia &", horaVDestino, "h")
fimse

senao
escreva("Hora no local de destino após", tempoViagem, "h de viagem:", horaVDestino)
fimse


Fimalgoritmo