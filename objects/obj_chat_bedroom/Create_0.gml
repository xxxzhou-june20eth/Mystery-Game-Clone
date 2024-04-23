json_file=import_json("mystery.json",json_parse);

bedroom=json_file.rm_bedroom;
text_line=[]
line_number=0;

choosing=false;
choice=[];
chosedb=false;
chosed=-1;

branch_line=[];
branch_line_number=-1;

function dtext(){
	
if (branch_line_number==-1){
	if (struct_exists(text_line[line_number],"text")){
		obj_text_box.text=text_line[line_number].text;
		
		if (struct_exists(text_line[line_number],"lines")){
			branch_line=text_line[line_number].line;
			branch_line_number=0;
		}
	}
	
	if (struct_exists(text_line[line_number],"choices") && !choosing){
		choosing=true;
		chosedb=false;
		choice=text_line[line_number].choices;
	}
	
}
else{
	obj_text_box.text=branch_line[branch_line_number].text;
	if (branch_line[branch_line_number]==undefined){
		branch_line_number=-1;
	}
}
}

function show_choose_box(){
	obj_choice_box1.visible=true;
	obj_choice_box2.visible=true;
	obj_choice_box1.text=choice[0].text;
	obj_choice_box2.text=choice[1].text;
}

function hide_choose_box(){
	obj_choice_box1.visible=false;
	obj_choice_box2.visible=false;
	obj_choice_box1.text="";
	obj_choice_box2.text="";
}