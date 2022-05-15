extends Node2D
class_name Gem

enum GEM_TYPE { blue, green, orange, purple, yellow }

var _gemType: int
var _gemTypeName: String
var _map


func _init(map):
	_map = map
	

func _ready():
	randomize()	
	
	_gemType = randi() % GEM_TYPE.size()
	_gemTypeName = GEM_TYPE.keys()[_gemType]
	
	$TextureRect.texture = load("res://textures/%s-gem.tres" % _gemTypeName)
	
	pass 


func _process(delta):	
	gem_fall(delta)
	pass


func gem_fall(delta):
	pass
