currentRoomId = argument0;
roomRight = argument1;
roomLeft = argument2;
roomTop = argument3;
roomBottom = argument4;
roomType = argument5;

currentRoom = instance_find(obj_room_base, currentRoomId);


//draw_text(currentRoom.x, currentRoom.y, string(currentRoom.roomType)); // For testing