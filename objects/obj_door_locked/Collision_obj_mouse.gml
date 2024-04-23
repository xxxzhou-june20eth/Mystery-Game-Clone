if (mouse_check_button_pressed(1)){
	if (global.has_key){
		obj_text_box_interactables.text=text_line[0].lines[0].text;
		time=0;
	}
	else{
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[1].text;
	}
}