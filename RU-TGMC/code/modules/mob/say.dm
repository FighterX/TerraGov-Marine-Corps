/mob/get_message_mode(message)
	var/key = copytext(message, 1, 2)
	if(key == "#")
		return MODE_WHISPER
	else if(key == ";")
		return MODE_HEADSET
	else if(length(message) > 2 && (key in GLOB.department_radio_prefixes))
		var/key_symbol = ru_channels(lowertext_ru(lowertext(copytext(message, 2, 3))))  //Making lowercase english key_symbol from rus with ru_channels
		return GLOB.department_radio_keys[key_symbol]



/proc/ru_channels(key_symbol)
	key_symbol = replacetext(key_symbol, RADIO_KEY_COMMAND_RU, RADIO_KEY_COMMAND)
	key_symbol = replacetext(key_symbol, RADIO_KEY_REQUISITIONS_RU, RADIO_KEY_REQUISITIONS)
	key_symbol = replacetext(key_symbol, RADIO_KEY_ENGINEERING_RU, RADIO_KEY_ENGINEERING)
	key_symbol = replacetext(key_symbol, RADIO_KEY_MEDICAL_RU, RADIO_KEY_MEDICAL)
	key_symbol = replacetext(key_symbol, RADIO_KEY_POLICE_RU, RADIO_KEY_POLICE)
	key_symbol = replacetext(key_symbol, RADIO_KEY_ALPHA_RU, RADIO_KEY_ALPHA)
	key_symbol = replacetext(key_symbol, RADIO_KEY_BRAVO_RU, RADIO_KEY_BRAVO)
	key_symbol = replacetext(key_symbol, RADIO_KEY_CHARLIE_RU, RADIO_KEY_CHARLIE)
	key_symbol = replacetext(key_symbol, RADIO_KEY_DELTA_RU, RADIO_KEY_DELTA)
	key_symbol = replacetext(key_symbol, MODE_KEY_R_HAND_RU, MODE_KEY_R_HAND)
	key_symbol = replacetext(key_symbol, MODE_KEY_L_HAND_RU, MODE_KEY_L_HAND)
	key_symbol = replacetext(key_symbol, MODE_KEY_INTERCOM_RU, MODE_KEY_INTERCOM)
	key_symbol = replacetext(key_symbol, MODE_KEY_DEPARTMENT_RU, MODE_KEY_DEPARTMENT)
	key_symbol = replacetext(key_symbol, MODE_KEY_BINARY_RU, MODE_KEY_BINARY)
	return key_symbol