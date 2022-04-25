extends Node2D
class_name Grid

const GRID_WIDTH: int = 8
const GRID_HEIGHT: int = 8

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var gems = generate_gems(GRID_WIDTH, GRID_HEIGHT)
	
	draw_gems(gems, GRID_WIDTH, GRID_HEIGHT)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func generate_gems(w, h):
	var map = []
	
	for x in range(w):
		var col = []
		col.resize(h)
		for y in range(h):
			col[y] = load("res://scenes/gem.tscn")
		map.append(col)

	return map
	
	
func draw_gems(gems, w, h):
	
	for x in range(w):
		for y in range(h):
			var gem = gems[x][y].instance()
			gem.position.x = 8 + x * 72
			gem.position.y = 8 + y * 72
			add_child(gem)
