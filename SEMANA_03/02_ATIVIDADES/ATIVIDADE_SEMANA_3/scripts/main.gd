extends Node2D

func _ready():
	pass

func _on_button1_pressed():
	get_tree().change_scene("res://scenes/atvd1.tscn")

func _on_button2_pressed():
	get_tree().change_scene("res://scenes/atvd2.tscn")

func _on_button3_pressed():
	get_tree().change_scene("res://scenes/atvd3.tscn")
	
func _on_button4_pressed():
	get_tree().change_scene("res://scenes/atvd4.tscn")
