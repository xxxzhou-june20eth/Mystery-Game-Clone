if (mouse_check_button_pressed(1) && !obj_fridge.choosing){
	interactable_draw_text(text_line);
	line_number+=1;
	
	
	if (line_number>1){
		line_number=1;
	}
}
