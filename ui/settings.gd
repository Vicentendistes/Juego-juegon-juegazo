extends MarginContainer

onready var fullscreen = $VBoxContainer/HBoxContainer/Fullscreen
onready var back = $VBoxContainer/Back

func _ready():
	if OS.window_fullscreen:
		fullscreen.pressed = true
		
	back.connect("pressed", self, "_on_back_pressed")
	fullscreen.connect("toggled", self, "_on_fullscreen_toggled")
	
func _on_back_pressed():
	get_tree().change_scene("res://ui/main_menu.tscn")
	
func _on_fullscreen_toggled(button_pressed):
	OS.set_window_fullscreen(button_pressed)
