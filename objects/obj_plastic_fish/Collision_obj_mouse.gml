if (mouse_check_button_pressed(1) && !obj_fridge.choosing){
	if (global.met_voice){
		interactable_draw_text(text_line[1].lines);
	}
	else{
		interactable_draw_text(text_line);
	}
}