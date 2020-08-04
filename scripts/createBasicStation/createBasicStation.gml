maxWidth = argument0;
maxHeight = argument1;
roomSize = argument2;
middleRoomId = 0;
countX = 0;
countY = 0;

for (i = roomSize * 2; i < (roomSize * 2) + (roomSize * maxWidth); i += roomSize)
{
    countY += 1;
    countX = 0;
    
    for (j = roomSize * 2; j < (roomSize * 2) + (roomSize * maxHeight); j += roomSize)
    {
        countX += 1;
        stationRoom = instance_create(j, i, obj_room_base);
        ds_list_add(global.roomList, stationRoom.id);
        
        if ((i == roomSize * (maxWidth/2 + 2)) and (j == roomSize * (maxHeight/2 + 2)))
        {
            middleRoomId = stationRoom.id;
            middleRoomX = stationRoom.x;
            middleRoomY = stationRoom.y;
        }
        
        removeRooms(maxHeight, maxWidth, roomSize, middleRoomId, stationRoom);
    }
}
