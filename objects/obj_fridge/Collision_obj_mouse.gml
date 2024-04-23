if (mouse_check_button_pressed(1) && !choosing){
	
	if (!global.met_voice){
		current_lines=nmet_lines;
		interactable_draw_text(current_lines);
		check_choose(nmet_lines);
		line_number+=1;
		
	}
	else{
		current_lines=met_lines;
		interactable_draw_text(current_lines);
		check_choose(met_lines);
		line_number+=1;
	}
		
}

