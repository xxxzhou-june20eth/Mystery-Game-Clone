if (mouse_check_button_pressed(1)){
	if (instance_exists(obj_chat_manager)){
	obj_chat_manager.chosed=0;
	obj_chat_manager.chosedb=true;
	}
	else{
		obj_fridge.chosedb=true;
		obj_fridge.chosed=1;
	}
}