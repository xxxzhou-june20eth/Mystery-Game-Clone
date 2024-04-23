json_file=import_json("mystery.json",json_parse);
kitchen=json_file.rm_kitchen;
text_line=json_file.rm_kitchen.lines;

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