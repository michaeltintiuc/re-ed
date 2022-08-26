extends KinematicBody

const speed := 14
var velocity := Vector3.ZERO

func _ready():
	pass

func _physics_process(_delta):
	var direction := get_direction()

	velocity.x = direction.x * speed if direction.x != 0 else lerp(velocity.x, 0, 0.15)
	velocity.z = direction.z * speed if direction.z != 0 else lerp(velocity.z, 0, 0.15)
	velocity.y = 0
	velocity = move_and_slide(velocity, Vector3.UP)

func get_direction() -> Vector3:
	var direction := Vector3.ZERO

	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1

	if direction != Vector3.ZERO:
		return direction.normalized()

	return direction

