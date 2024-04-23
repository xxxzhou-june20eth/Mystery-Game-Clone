// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function interactable_draw_text(text_line){
	if (struct_exists(text_line[line_number],"text")){
		obj_text_box_interactables.text=text_line[line_number].text;
		obj_text_box_interactables.visible=true;	
	}
	obj_text_box_interactables.drawing=false;
	if (struct_exists(text_line[line_number],"speaker")){
		obj_text_box_interactables.drawing=true;
		obj_text_box_interactables.dsprite=sprite_index;
	}
		
}


function set_true(variable){
	if (struct_exists(text_line[line_number],"set_true")){
		variable=true;
	}
}


function meet_criteria(criteria){
	if (struct_exists(text_line[0],"if_true")){
		if (criteria){
			branch_line=text_line[0].lines;
			line_number=0;
		}
		else{
			branch_line=text_line[1];
			line_number=0;
		}
	}
}

