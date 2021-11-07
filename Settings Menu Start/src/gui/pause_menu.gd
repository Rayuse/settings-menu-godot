extends Control

var is_paused = false setget set_paused

func _ready():
	hide()


func set_paused(value):
	is_paused = value
	get_tree().paused = value
	visible = is_paused
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE if is_paused == true else Input.MOUSE_MODE_CAPTURED)
	

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused


func _on_ResumeBtn_pressed():
	self.is_paused = false


func _on_SettingsBtn_pressed():
	pass


func _on_QuitBtn_pressed():
	get_tree().quit()

