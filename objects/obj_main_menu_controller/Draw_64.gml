//Title

mainMenuTextColour = make_color_rgb(202,199,204);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(mainMenuTextColour);
draw_set_font(fnt_title);

draw_text(room_width/2, room_height/3.5, "UNTITLED  DUNGEON  CRAWLER");


//Options

draw_set_font(fnt_main_menu_options);

if menuOptionSelected == 0
{
	draw_text_color(room_width/2, room_height/2 + 64, "PLAY", mainMenuTextColour, mainMenuTextColour, mainMenuTextColour, mainMenuTextColour, textAlpha);
}
else
{
	draw_text(room_width/2, room_height/2 + 64, "PLAY");
}

if menuOptionSelected == 1
{
	draw_text_color(room_width/2, room_height/2 + 128, "OPTIONS", mainMenuTextColour, mainMenuTextColour, mainMenuTextColour, mainMenuTextColour, textAlpha);
}
else
{
	draw_text(room_width/2, room_height/2 + 128, "OPTIONS");
}

if menuOptionSelected == 2
{
	draw_text_color(room_width/2, room_height/2 + 192, "QUIT", mainMenuTextColour, mainMenuTextColour, mainMenuTextColour, mainMenuTextColour, textAlpha);
}
else
{
	draw_text(room_width/2, room_height/2 + 192, "QUIT");
}