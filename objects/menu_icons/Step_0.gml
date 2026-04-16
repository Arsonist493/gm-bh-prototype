var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter);
index += _down - _up;

if (index < 0) index = array_length(menu_text) - 1;
if(index >= array_length(menu_text)) index = 0;

if (_select){
	switch(index){
		case 0:room_goto(Room1);break;
		case 1:show_message("ayarlar hazir degil");break;
		case 2:game_end();break;
	}
}