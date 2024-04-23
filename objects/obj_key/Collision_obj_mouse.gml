if (mouse_check_button_pressed(1) && interactable){
	meet_criteria(global.has_apple);
	interactable_draw_text(branch_line);
	global.has_key=true;
	visible=false;
	
	instance_deactivate_object(self);
}


