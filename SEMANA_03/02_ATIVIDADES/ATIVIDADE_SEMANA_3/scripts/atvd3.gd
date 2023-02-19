extends Node2D

var texto = "Olá, este é o texto!"

func escrever(txt):
	$label.text = txt


func _ready():
	escrever(texto)

func _on_back_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
