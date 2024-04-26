extends Area3D

@onready var colors_for_donut:Array = [Color("ff413e"), Color("00ae64"), Color("00a1cb"), Color("ed00e5")]
@export var icing: MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	icing.mesh.surface_get_material(1).albedo_color = colors_for_donut[randi_range(0, colors_for_donut.size()-1)]
	print(icing.mesh.surface_get_material(1).albedo_color)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
