if (mouse_check_button_pressed(1) && !obj_fridge.choosing){
	if (!global.met_voice){
		obj_text_box_interactables.text=text_line[1].text;
		obj_text_box_interactables.visible=true;
	}
	else{
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[0].lines[0].text;
	}
}