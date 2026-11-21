@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCMain := preload("res://game/characters/main/character_main.gd")
# ---- classes

# nodes ----
var Main: PCMain : get = get_Main
# ---- nodes

# functions ----
func get_Main() -> PCMain: return get_runtime_character("Main")
# ---- functions

