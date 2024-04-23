interactable_draw_text(text_line);

timing++;

if (timing>=60){
	line_number+=1;
	timing=0;
}

if (line_number>=3){
	line_number=2;
}