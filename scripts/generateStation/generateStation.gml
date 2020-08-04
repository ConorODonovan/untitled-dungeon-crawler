maxWidth = argument0;
maxHeight = argument1;
roomSize = argument2;

global.roomList = ds_list_create();

// Create basic station
createBasicStation(maxWidth, maxHeight, roomSize);

// Cleaning up unlinkable rooms
removeUnlinkableRooms(maxWidth, maxHeight, roomSize);

// Find unreachable rooms
findUnreachableRooms();

// Destroy unreachable rooms
destroyUnreachableRooms();

// Rebuild roomList
rebuildRoomList(maxWidth, maxHeight, roomSize);

// Destroying temporary deleted room bases
with (obj_room_deleted)
{
    instance_destroy();
}

// Ensuring there are enough rooms
if (ds_list_size(global.roomList) < (maxWidth * maxHeight)/3)
{
    room_restart();
}

// Generate room walls
roomWallPlacement();

// Generate player
if (!instance_exists(obj_player))
{
    instance_create(middleRoomX, middleRoomY, obj_player);
}

// Generate main enemy (this is just for testing)
if (!instance_exists(obj_enemy_main_body))
{
    instance_create(middleRoomX, middleRoomY, obj_enemy_main_body);
}
