class_name State

extends Node
#signal transition for communicating between state scripts
signal transition(new_state_name: StringName)

#virtual functions
func enter() -> void:
	pass
	
func exit() -> void:
	pass
	
func update(delta : float) -> void:
	pass
	
func physics_update(delta : float) -> void:
	pass
	
func handle_input(event) -> void:
	pass
	