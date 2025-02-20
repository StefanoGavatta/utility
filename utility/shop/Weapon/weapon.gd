extends Node2D

@export var nome: String = ""
@onready var shop: Node2D = $"../.."

var costo: int
var sprite: Texture
var comprato = func():
	$".".hide() 
	$Button.queue_free()

func _ready() -> void:
	trova_dati()

func trova_dati():
	if nome == "":
		push_warning("il nome dell'arma è assente")
		return
	var dati = shop.get_arma(nome)
	costo = dati.costo
	#sprite = dati.sprite
	compila_dati()
	
func compila_dati():
	$Costo.text = str(costo)


func _on_button_pressed() -> void:
	comprato.call()
