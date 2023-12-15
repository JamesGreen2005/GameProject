extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	var _WELCOME = preload("res://music_screen.tscn") # Replacel # Replace with function body.

func _on_PlayButton_pressed():
	var GAME_scene = preload("res://music_screen.tscn") # Replace
	get_tree().change_scene_to(GAME_scene)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var _WELCOME = preload("res://music_screen.tscn") # Replaceepl


func _on_pressed():
	var _WELCOME = preload("res://music_screen.tscn") # Replace with function body.
