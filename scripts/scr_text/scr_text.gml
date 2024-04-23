/// @param text
function scr_text(_text){
	text[line_number]=_text;
	if (keyboard_check_pressed(vk_space)){
		line_number++;
	}
}