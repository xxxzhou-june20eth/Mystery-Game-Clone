// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function import_json(_file,_function){
	if (file_exists(_file)){
	var file=file_text_open_read(_file);
	var _jstring="";
	while (!file_text_eof(file)){
		_jstring += file_text_read_string(file);
		file_text_readln(file);
	}
	file_text_close(file);
	return script_execute(_function,_jstring);
	}
	return "??";
}