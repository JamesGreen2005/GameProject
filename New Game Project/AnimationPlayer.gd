extends AnimationPlayer


func _ready():
	speed_scale = 0.5
	play("new_animation")




func _on_animation_finshed(anim_name):
	print("Finished!")
	play("new_animation")
