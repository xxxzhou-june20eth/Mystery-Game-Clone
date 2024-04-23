if (mouse_check_button_pressed(1)){
	if (!global.has_apple){
	interactable_draw_text(text_line);
	global.has_apple=true;
	visible=false;
	}
	else{
		obj_text_box_interactables.text=text_line[1].text;
		obj_key.interactable=true;
		instance_deactivate_object(self);
	}
}
