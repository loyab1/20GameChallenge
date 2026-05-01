extends Control


func _on_single_player_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_scene.tscn") # Replace with function body.


func _on_two_playxer_button_pressed() -> void:
	pass

func _on_quit_button_button_pressed() -> void:
	get_tree().quit() # Replace with function body.
