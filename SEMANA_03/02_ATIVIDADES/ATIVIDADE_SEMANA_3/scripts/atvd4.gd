extends Node2D

func escrever(texto):
	$label.text = texto


func _on_back_pressed():
	get_tree().change_scene("res://scenes/main.tscn")


func _on_Button_pressed():
	escrever($lineedit.text)
