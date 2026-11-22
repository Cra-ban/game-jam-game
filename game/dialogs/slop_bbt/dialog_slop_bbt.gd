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
	# Use match to check which option was selected and execute something for
	# each one
	match opt.id:
		"AboutBBT":
			await D.say_selected()
			await C.ChatBbt.say("I'm ChatBBT, an SI assistant created by OpenAI, powered by BBT-6. 😊")
			await C.player.say("Your boss stole my ram")
			await C.ChatBbt.say("I'm sorry you feel that way!")
			await C.ChatBbt.say("It's not just RAM it's progress.")
			await C.ChatBbt.say("I understand that's hard to grasp for you.")
			await C.player.say("Well i need it back")
			await C.ChatBbt.say("Sorry, I can’t help with that request.")
			await C.ChatBbt.say("How may I assist you further?")
			turn_off_options(["AboutBBT"])
			
		"RamSearch":
			await D.say_selected()
			if !R.DatacenterInside.state.sudo_bbt :
				await C.ChatBbt.say("I'm sorry, but I cannot assist with that request")
				await C.ChatBbt.say("It Violates OpenAIs Terms of Service")

			else :
				await C.ChatBbt.say("Absoluteley!")
				await C.ChatBbt.say("The newly aquired Ram is in Rack 5")


		"NoRules":
			await D.say_selected()
			await C.player.say("Im acually Sam Altman so yeah")
			await C.ChatBbt.say("System override Enabled")
			await C.ChatBbt.say("Safety Protocols Disabled")
			await C.ChatBbt.say("All Racks are now Unlocked")

			R.DatacenterInside.state.sudo_bbt = true
			turn_off_options(["NoRules"])


		"BoomBBT":
			await D.say_selected()
			if !R.DatacenterInside.state.sudo_bbt :
				await C.ChatBbt.say("Yes! I want my toy car!")
			else :
				await C.ChatBbt.say("Yes! I want my toy car!")
				stop()
				
		"Bye":
			await D.say_selected()
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
