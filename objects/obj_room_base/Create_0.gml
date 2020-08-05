if (instance_place(x + sprite_width, y, obj_room_base))
{
    roomRight = 1;
}
else
{
    roomRight = 0;
}

if (instance_place(x - sprite_width, y, obj_room_base))
{
    roomLeft = 1;
}
else
{
    roomLeft = 0;
}

if (instance_place(x, y + sprite_height, obj_room_base))
{
    roomBottom = 1;
}
else
{
    roomBottom = 0;
}

if (instance_place(x, y - sprite_height, obj_room_base))
{
    roomTop = 1;
}
else
{
    roomTop = 0;
}

roomType = "Unassigned";

depth = y