@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCMain1 := preload("res://game/characters/main_1/character_main_1.gd")
# ---- classes

# nodes ----
var Main1: PCMain1 : get = get_Main1
# ---- nodes

# functions ----
func get_Main1() -> PCMain1: return get_runtime_character("Main1")
# ---- functions

