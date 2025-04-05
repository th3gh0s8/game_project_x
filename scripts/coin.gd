extends Area2D

@onready var game_maneger: Node = %GameManeger
@onready var animation_player: AnimationPlayer = $PickupSound/AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	print("+1 Coin")
	game_maneger.add_point()
	#queue_free()
	animation_player.play("pickup_animation")
