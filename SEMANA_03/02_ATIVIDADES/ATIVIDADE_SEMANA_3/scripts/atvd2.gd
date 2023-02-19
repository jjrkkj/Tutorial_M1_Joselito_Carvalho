extends Node2D

var lista = []

func _on_Button_pressed():
	if $nome.text != '':
		lista.append($nome.text)
	if $idade.text != '' and $idade.text.is_valid_integer():
		lista.append($idade.text)
	if $nacionalidade.text != '':
		lista.append($nacionalidade.text)
	$label.text = String(lista)
	lista = []

func _on_back_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
