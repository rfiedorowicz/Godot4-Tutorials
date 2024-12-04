extends CharacterBody2D

enum State {NORMAL, NO_INPUT}

const SPEED := 300.0
const JUMP_VELOCITY := -400.0

var state := State.NORMAL

func _physics_process(delta: float) -> void:
	if state == State.NO_INPUT:
		return
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("game_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("game_left", "game_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func turn_off_inputs():
	state = State.NO_INPUT
	
func turn_on_inputs():
	state = State.NORMAL
