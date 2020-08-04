for (q = 0; q < ds_list_size(global.roomList); q++)
{
    currentRoom = instance_find(obj_room_base, q);

    path = path_add();
    
    if (!mp_grid_path(global.grid, path, currentRoom.x, currentRoom.y, middleRoomX, middleRoomY, 0))
    {
        instance_create(currentRoom.x, currentRoom.y, obj_unreachable_room);
    }
    
    path_delete(path);
}
