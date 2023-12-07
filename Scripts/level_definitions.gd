extends Node

var current_level = 1



var level_1 = [
	[0,1,0]
]

var level_2 = [
	[0,5,0,1,1,0,5,0],
	[0,0,2,3,3,2,0,0],
	[0,1,3,4,4,3,1,0],
	[0,0,2,3,3,2,0,0],
	[0,5,0,1,1,0,5,0]
]

var level_3 = [
	[5,5,5,5,5,5,5,5],
	[0,4,4,4,4,4,4,0],
	[0,0,3,3,3,3,0,0],
	[0,0,0,2,2,0,0,0],
	[0,0,0,1,1,0,0,0]
]

var levels = [level_1, level_2, level_3]

func get_current_level():
	print(levels[0])
	return levels[current_level - 1]
