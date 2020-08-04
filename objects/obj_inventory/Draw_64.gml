var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);
display_set_gui_size(_vx, _vy);

draw_set_colour(c_black);
draw_set_font(fnt_inventory_test);

if (inventoryActive == true)
{
	for (i = 0; i < inventoryWidth; i++;)
	{
		for (j = 0; j < inventoryHeight; j++;)
		{
			draw_rectangle(128 + (32 * i) - 16, 64 + (32 * j) - 16, 128 + (32 * i) + 16, 64 + (32 * j) + 16, true);
			draw_text(128 + (32 * i), 64 + (32 * j), string(ds_grid_get(slot, i, j)));
		}
	}
}