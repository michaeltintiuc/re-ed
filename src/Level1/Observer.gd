extends Spatial

func _physics_process(_delta):
	var player: KinematicBody = get_node("%Player")
	look_at(player.global_translation, Vector3.UP)
	rotation_degrees.x = 0
