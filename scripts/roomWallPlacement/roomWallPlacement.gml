for (l = 0; l < ds_list_size(global.roomList); l++)
{
    currentRoom = instance_find(obj_room_base, l);
    
    if (!position_empty(currentRoom.x + currentRoom.sprite_width, currentRoom.y))
    {
        currentRoom.roomRight = 1;
    }
    else
    {
        currentRoom.roomRight = 0;
    }

    if (!position_empty(currentRoom.x - currentRoom.sprite_width, currentRoom.y))
    {
        currentRoom.roomLeft = 1;
    }
    else
    {
        currentRoom.roomLeft = 0;
    }

    if (!position_empty(currentRoom.x, currentRoom.y + currentRoom.sprite_height))
    {
        currentRoom.roomBottom = 1;
    }
    else
    {
        currentRoom.roomBottom = 0;
    }

    if (!position_empty(currentRoom.x, currentRoom.y - currentRoom.sprite_height))
    {
        currentRoom.roomTop = 1;
    }
    else
    {
        currentRoom.roomTop = 0;
    }
    
	getRoomType(l, currentRoom.roomRight, currentRoom.roomLeft, currentRoom.roomTop, currentRoom.roomBottom);
    //generateRoomWalls(l, currentRoom.roomRight, currentRoom.roomLeft, currentRoom.roomTop, currentRoom.roomBottom);
}
