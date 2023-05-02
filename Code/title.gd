extends Control


func _on_A_pressed():
	$ColorRect/AnimationPlayer.play("load")
	await $ColorRect/AnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://restauraunt.tscn")
