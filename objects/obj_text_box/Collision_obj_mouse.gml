if (mouse_check_button_pressed(1)){
	if (instance_exists(obj_chat_manager)){
		if (obj_chat_manager.branch_line_number!=-1){
			obj_chat_manager.branch_line_number+=1;
			if (obj_chat_manager.branch_line_number>array_length(obj_chat_manager.branch_line)-1){
				obj_chat_manager.branch_line=[];
				obj_chat_manager.branch_line_number=-1;
				obj_chat_manager.line_number+=1
			}
		}
		else{
			obj_chat_manager.line_number+=1;
		}
	}
}
		