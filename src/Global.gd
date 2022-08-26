extends Node

func switch_scene(scene: PackedScene) -> void:
	if get_tree().change_scene_to(scene) == ERR_CANT_CREATE:
		print('could not create scene %s' % scene.resource_path)
		quit()

func quit() -> void:
	get_tree().quit()

func _ready() -> void:
	randomize()

func _input(event: InputEvent) -> void:
	if not OS.is_debug_build():
		return

	if event is InputEventKey and event.is_pressed() and event.scancode == KEY_Q:
		quit()
