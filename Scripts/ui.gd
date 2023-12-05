extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer
@onready var game_won_container = $GameWonContainer


@onready var game_lost = $"../Sound/GameLost"
@onready var bg_music = $"../Sound/BGMusic"
@onready var level_passed = $"../Sound/LevelPassed"
@onready var game_won = $"../Sound/GameWon"



func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes

func game_over():
	game_lost_container.show()
	
	game_lost.play()
	
	bg_music.stop()

func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	level_won_container.show()
	
	level_passed.play()
	
	bg_music.stop()

func _on_level_won_button_pressed():
	LevelDefinitions.current_level += 1
	get_tree().reload_current_scene()

func won_game():
	game_won_container.show()
	game_won.play()
