extends CanvasLayer

export(String, FILE) var level

onready var start_btn = $MainMenu/MarginContainer/VBoxContainer/StartGameBtn

func _ready():
	start_btn.grab_focus()
	

func _on_StartGameBtn_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(level)


func _on_SettingsBtn_pressed():
	pass


func _on_ExitBtn_pressed():
	get_tree().quit()
