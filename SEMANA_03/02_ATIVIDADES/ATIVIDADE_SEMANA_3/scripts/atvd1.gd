extends Node2D

var lista_preenchida = ['chocolates', 'morango', 'café', 'doces', 'croissant']

func _ready():
	$label.text = String(lista_preenchida)

func _on_back_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
