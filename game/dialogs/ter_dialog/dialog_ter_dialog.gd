# @popochiu-docs-ignore-class
@tool
extends PopochiuDialog


#region Virtual ####################################################################################
func _on_start() -> void:
	# Put setup logic here to run before showing dialog options.
	# Example: make the player face the character, say a line, or let the NPC reply:

#	await C.player.face_clicked()
#	await C.player.say("Hi")
#	await C.Popsy.say("Oh! Hi...")

	# NOTE: this method must await something to function correctly. By default, it awaits a frame.
	await PopochiuUtils.e.get_tree().process_frame


func _option_selected(opt: PopochiuDialogOption) -> void:
	match opt.id:
		"TryPW":
			await D.say_selected()
			await C.OutsideTerminal.say("INCORRECT PASSWORD TRY AGAIN")
			await C.player.say("dammit")
			await C.player.say("I should look for something that might help")


				
		"Leave":
			if I.Screwdriver.in_inventory:
				await C.player.say("Maybe something in my inventory might help")
			else:
				await C.player.say("I Might have something at home that could help me here")
			
			stop()
			

	_show_options()


# Return a Dictionary of custom data to save for this PopochiuDialog.
# The Dictionary must contain only JSON-supported types: bool, int, float, String.
func _on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# The `data` Dictionary should match the structure returned by `_on_save()`.
func _on_load(data: Dictionary) -> void:
	prints(data)


#endregion
