extends Node2D

#Ao longo do código, o identei e arrumei alguns espaçamentos.
#Muitas coisas pedidas na atividade não claras e, portanto, mudei o código para que fizesse mais sentido.

#Essa variável não era utilizada: "var teste = false"
#Essa variável não era utilizada: "var valor = 0"
var numero = 0 #No nome da variável havia um acento agúdo.
var lista = [] #Não foi utilizado o "var" para declarar uma variável.
var nome #Essa variável não havia sido declarada.
var tipoLabel = "nome"
var adicionado = false
var baldo = false

func _process(delta):
	var restanteLista = 9 - len(lista)
	if tipoLabel == "numero":
		$botao.text = "Adicionar número {num}".format({"num": $input.text})
	if adicionado == true:
		$botao2.visible = true
		$botao2.text = "Adicionar número {num} na lista".format({"num": numero})
	if nome != null:
		$outputNome.text = "Olá, {nome}!".format({"nome": nome.capitalize()})
	if restanteLista == 0:
		$restanteLabel.visible = false
	$restanteLabel.text = "Faltam {num} números".format({"num": restanteLista}) 
		
		
func _on_botao_pressed():
	#Coletando dados inseridos pelo usuário
	if tipoLabel == "numero":
		numero = int($input.text) #No nome da variável havia um acento agúdo.
		adicionado = true
	else:
		nome = $input.text #O nome e o valor da variável estavam ordenados ao contrário.
		tipoLabel = "numero"
		$label.text = "Digite um número:"
	

func _on_botao2_pressed():
	$restanteLabel.visible = true
	$outputNumero.visible = true
	#Incrementando o número inserido pelo usuário
	lista.append(numero) #A variável começava com letra maiúscula.
	if len(lista) == 9:
		$botao3.visible = true
		$botao.visible = false
		$botao2.visible = false
	$outputNumero.text = "Número adicionado na lista: {num}".format({"num": numero})
	adicionado = false


func _on_botao3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0 #A variável não foi declarada com o "var" e foi declarada dentro da estrutura de repetição.
	for numero in lista:
		if numero % 2 == 1: cont += 1
	if(cont != 0) and baldo == false:
		nome = nome + " Baldo" #Não havia espaço antes de "Baldo"
		baldo = true
	$outputNumero.text = "Lista: {lista}".format({"lista": lista})
		
