class_name WalkingPlayerState

extends State

@onready var player := $"../.."



func enter() -> void:
	player.target_speed = 6.0
	
	
func exit() -> void:
	pass

func physics_update(delta : float) -> void:
	pass
	
func update(delta : float) -> void:
	player.input_dir = Input.get_vector("left","right", "forward", "backward")
	if player.input_dir == Vector2.ZERO:
		transition.emit("IdlePlayerState")
	
	if Input.is_action_pressed("sprint"):
		transition.emit("SprintingPlayerState")
		

func handle_input(event) -> void:
	pass