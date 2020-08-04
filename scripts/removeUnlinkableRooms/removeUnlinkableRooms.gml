argument0 = maxHeight;
argument1 = maxWidth;
argument2 = roomSize;

global.grid = mp_grid_create((roomSize * 2) - (roomSize/2), (roomSize * 2) - (roomSize/2), maxWidth, maxHeight, roomSize, roomSize);
mp_grid_add_instances(global.grid, obj_room_deleted, 0);

for (k = 0; k < ds_list_size(global.roomList); k++)
{
    show_debug_message("Room ID: " + string(ds_list_find_value(global.roomList, k)));
    
    currentRoom = instance_find(obj_room_base, k);
        
    if (position_empty(currentRoom.x + roomSize, currentRoom.y) and position_empty(currentRoom.x - roomSize, currentRoom.y) and position_empty(currentRoom.x, currentRoom.y + roomSize) and position_empty(currentRoom.x, currentRoom.y - roomSize))
    { 
        with (currentRoom)
        {
            instance_destroy();
        }
        
        ds_list_delete(global.roomList, k);
    }
}
