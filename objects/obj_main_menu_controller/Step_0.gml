// Selecting options

if (keyboard_check_pressed(vk_up))
{
	if menuOptionSelected > 0
	{
		menuOptionSelected -= 1;
	}
	else
	{
		menuOptionSelected = 2;
	}
}

if (keyboard_check_pressed(vk_down))
{
	if menuOptionSelected < 2
	{
		menuOptionSelected += 1;
	}
	else
	{
		menuOptionSelected = 0;
	}
}

if (menuOptionSelected == 0)
{
	if (keyboard_check_pressed(vk_enter))
	{
		room_goto(rm_island);
	}
}

if (menuOptionSelected == 2)
{
	if (keyboard_check_pressed(vk_enter))
	{
		game_end();
	}
}


// Flashing text effect

if (textAlphaIncrease == true)
{
	if (textAlpha < 1)
	{
		textAlpha += fadeAmount;
	}
	else
	{
		textAlphaIncrease = false;
	}
}
else
{
	if (textAlpha > 0.2)
	{
		textAlpha -= fadeAmount;
	}
	else
	{
		textAlphaIncrease = true;
	}
}