argument0 = maxHeight;
argument1 = maxWidth;
argument2 = roomSize;
argument3 = middleRoomId;
argument4 = stationRoom;


// Randomisation pass 1 - delete some of the outer rooms
if ((stationRoom.x < (roomSize * 4) or stationRoom.x > (roomSize * maxWidth)) or (stationRoom.y < (roomSize * 4) or stationRoom.y > (roomSize * maxHeight)))
{
    destroyRoom = random_range(0,100);
    
    if (destroyRoom < 60)
    {                
        if (stationRoom.id != middleRoomId)
        {
            ds_list_delete(global.roomList, ds_list_size(global.roomList) - 1);
            instance_create(stationRoom.x, stationRoom.y, obj_room_deleted);
            instance_destroy(stationRoom);
        }
    }
}

// Randomisation pass 2 - remove some of the inner rooms
else
{
    destroyRoom = random_range(0,100);

    if (destroyRoom < 40)
    {
        if (stationRoom.id != middleRoomId)
        {
            ds_list_delete(global.roomList, ds_list_size(global.roomList) - 1);
            instance_create(stationRoom.x, stationRoom.y, obj_room_deleted);
            instance_destroy(stationRoom);
        }
    }
}
