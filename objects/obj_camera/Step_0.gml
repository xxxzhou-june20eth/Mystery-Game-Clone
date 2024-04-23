var hmove=keyboard_check(ord("D"))-keyboard_check(ord("A"));

if (x+hmove*spd>0 && x+hmove*spd+w<room_width){
	x+=hmove*spd;
}

camera_set_view_pos(view_camera[0],x,y);