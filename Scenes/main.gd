extends Node

@onready var background_music = $Sound/BGMusic

# Called when the node enters the scene tree for the first time.
func _ready():
	background_music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
