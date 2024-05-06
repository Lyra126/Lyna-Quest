extends Node2D

var attack_damage := 10.0
var knockback_force := 100.0
var stun_time := 1.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_hitbox_area_entered(area: Area2D) -> void:
	if area is hitbox_component:
		var hitbox : hitbox_component = area
		var attack = Attack.new()
		attack.attack_damage = attack_damage
		attack.knockback_force = knockback_force
		attatck.attack_position = global_position
		attack.stun_time = stun_time
		
		hitbox.damage(attack)
