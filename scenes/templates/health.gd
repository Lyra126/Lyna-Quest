extends Node2D
class_name Health
@export var MAX_HEALTH = 10.0
var health : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = MAX_HEALTH
	
func damage(attack: Attack):
	health -= attack.attack_damage
	if health <= 0:
		get_parent().queue_free()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
