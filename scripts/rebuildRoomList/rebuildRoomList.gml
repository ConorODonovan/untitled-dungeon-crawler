argument0 = maxHeight;
argument1 = maxWidth;
argument2 = roomSize;

ds_list_clear(global.roomList);

for (i = roomSize * 2; i < (roomSize * 2) + (roomSize * maxWidth); i += roomSize)
{
    countY += 1;
    countX = 0;
    
    for (j = roomSize * 2; j < (roomSize * 2) + (roomSize * maxHeight); j += roomSize)
    {
        countX += 1;
        if (position_meeting(i, j, obj_room_base))
        {
            stationRoom = instance_position(i, j, obj_room_base);
            ds_list_add(global.roomList, stationRoom.id);
        }
        
        if ((i == roomSize * (maxWidth/2 + 2)) and (j == roomSize * (maxHeight/2 + 2)))
        {
            middleRoomId = stationRoom.id;
            middleRoomX = stationRoom.x;
            middleRoomY = stationRoom.y;
        }
    }
}
