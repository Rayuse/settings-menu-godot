extends Label

func _ready():
# warning-ignore:return_value_discarded
	GlobalSettings.connect("fps_displayed", self, "_on_fps_displayed")
	
# warning-ignore:unused_argument
func _process(delta):
	text = "FPS: %s" % [Engine.get_frames_per_second()]
	
func _on_fps_displayed(value):
	visible = value
