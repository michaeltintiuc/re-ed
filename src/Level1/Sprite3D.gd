extends Sprite3D

func _on_Area_body_exited(_body):
	modulate = Color.red

func _on_Area_body_entered(_body):
	modulate = Color.white
