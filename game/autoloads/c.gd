@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCMain := preload("res://game/characters/main/character_main.gd")
const PCChatBbt := preload("res://game/characters/chat_bbt/character_chat_bbt.gd")
const PCOutsideTerminal := preload("res://game/characters/outside_terminal/character_outside_terminal.gd")
# ---- classes

# nodes ----
var Main: PCMain : get = get_Main
var ChatBbt: PCChatBbt : get = get_ChatBbt
var OutsideTerminal: PCOutsideTerminal : get = get_OutsideTerminal
# ---- nodes

# functions ----
func get_Main() -> PCMain: return get_runtime_character("Main")
func get_ChatBbt() -> PCChatBbt: return get_runtime_character("ChatBbt")
func get_OutsideTerminal() -> PCOutsideTerminal: return get_runtime_character("OutsideTerminal")
# ---- functions

