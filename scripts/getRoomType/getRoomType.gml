currentRoomId = argument0;
roomRight = argument1;
roomLeft = argument2;
roomTop = argument3;
roomBottom = argument4;

currentRoom = instance_find(obj_room_base, currentRoomId);
var tempType;
var tempRoom;


if (currentRoom.roomType == "Unassigned")
{
	// Check if dead end
	if (roomRight + roomLeft + roomTop + roomBottom == 1)
	{
		currentRoom.roomType = "1Room";
	}
	else
	{
		if (roomRight == 1 and roomBottom == 1)
		{
			if (instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y + currentRoom.sprite_height, obj_room_base))
			{
				tempRoom = instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base);
			
				if (tempRoom.roomType == "Unassigned")
				{
					tempType = choose(0, 0, 0, 4);
				}
				else
				{
					tempType = 0;
				}
				
				if (tempType == 4)
				{
					currentRoom.roomType = "4TopLeft";
					
					with (instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base))
					{
						roomType = "4TopRight";
					}
					
					with (instance_position(currentRoom.x, currentRoom.y + currentRoom.sprite_height, obj_room_base))
					{
						roomType = "4BottomLeft";
					}
					
					with (instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y + currentRoom.sprite_height, obj_room_base))
					{
						roomType = "4BottomRight";
					}
				}
				else
				{
					tempRoom = instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base);
			
					if (tempRoom.roomType == "Unassigned")
					{
						currentRoom.roomType = choose("1Room", "1Hall", "1Hall", "1Hall", "2Left", "2Top");
					}
					else
					{
						currentRoom.roomType = choose("1Room", "1Hall", "1Hall", "1Hall", "2Top");
					}
					
					if (currentRoom.roomType == "2Left")
					{
						with (instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base))
						{
							roomType = "2Right";
						}
					}
					else if (currentRoom.roomType == "2Top")
					{
						with (instance_position(currentRoom.x, currentRoom.y + currentRoom.sprite_width, obj_room_base))
						{
							roomType = "2Bottom";
						}
					}
				}
			}
			else
			{
				tempRoom = instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base);
			
				if (tempRoom.roomType == "Unassigned")
				{
					currentRoom.roomType = choose("1Room", "1Hall", "1Hall", "1Hall", "2Left", "2Top");
				}
				else
				{
					currentRoom.roomType = choose("1Room", "1Hall", "1Hall", "1Hall", "2Top");
				}
					
				if (currentRoom.roomType == "2Left")
				{
					with (instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base))
					{
						roomType = "2Right";
					}
				}
				else if (currentRoom.roomType == "2Top")
				{
					with (instance_position(currentRoom.x, currentRoom.y + currentRoom.sprite_width, obj_room_base))
					{
						roomType = "2Bottom";
					}
				}
			}
		}
		else
		{
			tempType = choose(1, 1, 2);
			
			if (tempType == 1)
			{
				currentRoom.roomType = choose("1Room", "1Hall");
			}
			else
			{
				if (roomRight == 1)
				{
					tempRoom = instance_position(currentRoom.x + sprite_width, currentRoom.y, obj_room_base);
			
					if (tempRoom.roomType == "Unassigned")
					{
						currentRoom.roomType = "2Left";
						
						with (instance_position(currentRoom.x + currentRoom.sprite_width, currentRoom.y, obj_room_base))
						{
							roomType = "2Right";
						}
					}
					else
					{
						currentRoom.roomType = "1Hall";
					}
				}
				else if (roomBottom == 1)
				{
					currentRoom.roomType = choose("1Hall", "2Top");
					
					if (currentRoom.roomType == "2Top")
					{
						with (instance_position(currentRoom.x, currentRoom.y + currentRoom.sprite_width, obj_room_base))
						{
							roomType = "2Bottom";
						}
					}
				}
				else
				{
					roomType = "1Room";
				}
			}
		}
	}
	
	if (currentRoom.roomType == "Unassigned")
	{
		currentRoom.roomType = choose("1Hall", "1Room");
	}
}

generateRoomWalls(currentRoomId, roomRight, roomLeft, roomTop, roomBottom, currentRoom.roomType);