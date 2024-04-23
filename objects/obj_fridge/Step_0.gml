timing++;

if (choosing){
	if (!chosedb){
		if (!global.met_voice || global.has_fish){

			obj_choice_box1.text=current_lines[line_number].choices[0].text;
			obj_choice_box1.visible=true;
		}
		
		if (!global.met_voice || global.has_apple){
			obj_choice_box2.text=current_lines[line_number].choices[1].text;
			obj_choice_box2.visible=true;
		}
	}
	else{
		obj_choice_box1.text="";
		obj_choice_box2.text="";
		obj_choice_box1.visible=false;
		obj_choice_box2.visible=false;

		if (!global.met_voice){
			line_number+=1;
		}
		
		if (global.met_voice){
			obj_text_box_interactables.text=current_lines[line_number].choices[chosed].text;
			current_lines=current_lines[line_number].choices[chosed].lines;
			line_number=0;
			global.next=true;
			timing=0;
		}
		
		choosing=false;
		chosedb=true;
		interactable_draw_text(current_lines);
		
	}
}

if (!global.met_voice){
	if (line_number>=4){
			line_number=4;
			global.met_voice=true;
			line_number=0;
	}
}
else{
	if (global.next && timing>=60){
		if (chosed=0){
			room_goto(rm_voice_happy);
		}
		else{
			room_goto(rm_voice_angry);
		}
	}
}

