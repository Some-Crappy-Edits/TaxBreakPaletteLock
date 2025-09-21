randomize();

load_settings();

if !os_browser {
	room_goto(Menu);
} else {
	room_goto(HTMLRoom);
};