if (line_number==array_length(text_line)){
	instance_deactivate_layer("Instances");
}
else{
dtext();

if (choosing){
	if (!chosedb){
		show_choose_box();
	}
	else{
		hide_choose_box();
		branch_line=choice[chosed].lines;
		branch_line_number=0;
		choosing=false;
		chosedb=false;
	}
}
}
