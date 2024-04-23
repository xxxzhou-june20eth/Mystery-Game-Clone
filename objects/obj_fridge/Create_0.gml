text_line=obj_chat_kitchen.kitchen.interactables.obj_fridge.lines;
line_number=0;

choosing=false;
chosedb=true;
chosed=-1;

timing=-999999999;

met_lines=text_line[1].lines;
nmet_lines=text_line[0].lines;
current_lines=nmet_lines;

function check_choose(_lines){
	if (struct_exists(_lines[line_number],"choices") && !choosing){
		choosing=true;
		chosedb=false;
		line_number-=1;
	}
}