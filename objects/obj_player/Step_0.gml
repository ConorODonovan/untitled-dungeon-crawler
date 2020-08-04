// Controls

moveRight = keyboard_check(ord("D"));
moveLeft = keyboard_check(ord("A"));
moveUp = keyboard_check(ord("W"));
moveDown = keyboard_check(ord("S"));

interact = keyboard_check_pressed(ord("E"));


// Moving and collision

var bboxVer;
var bboxHor;

if (moveUp) bboxVer = bbox_top; 
if (moveDown) bboxVer = bbox_bottom;
if (moveRight) bboxHor = bbox_right;
if (moveLeft) bboxHor = bbox_left;

if (moveUp and !place_meeting(x, y -  4 - maxSpeed, obj_wall_parent) and !((tilemap_get_at_pixel(tilemap, bbox_left, bboxVer - 4 - maxSpeed)) or (tilemap_get_at_pixel(tilemap, bbox_right, bboxVer - 4 - maxSpeed))))
{
    speedUp = -maxSpeed;
    facing = 90;
}
else
{
    speedUp = 0;
}

if (moveDown and !place_meeting(x, y + 4 + maxSpeed, obj_wall_parent) and !((tilemap_get_at_pixel(tilemap, bbox_left, bboxVer + 4 + maxSpeed)) or (tilemap_get_at_pixel(tilemap, bbox_right, bboxVer + 4 + maxSpeed))))
{
    speedDown = maxSpeed;
    facing = 270;
}
else
{
    speedDown = 0;
}

if (moveRight and !place_meeting(x + 4 + maxSpeed, y, obj_wall_parent) and !((tilemap_get_at_pixel(tilemap, bboxHor + 4 + maxSpeed, bbox_top)) or (tilemap_get_at_pixel(tilemap, bboxHor + 4 + maxSpeed, bbox_bottom))))
{
    speedRight = maxSpeed;
    facing = 0;
}
else
{
    speedRight = 0;
}

if (moveLeft and !place_meeting(x - 4 - maxSpeed, y, obj_wall_parent) and !((tilemap_get_at_pixel(tilemap, bboxHor - 4 - maxSpeed, bbox_top)) or (tilemap_get_at_pixel(tilemap, bboxHor - 4 - maxSpeed, bbox_bottom))))
{
    speedLeft = -maxSpeed;
    facing = 180;
}
else
{
    speedLeft = 0;
}

x += speedRight + speedLeft;
y += speedUp + speedDown;


// Animation

if ((speedRight + speedLeft != 0) or (speedUp + speedDown != 0))
{
    moving = true
    
    if (animationFrame == 0)
    {
        animationFrame = 1;
    }

    animationFrameChange += 1;
    
    if (animationFrameChange >= animationSpeed)
    {
        animationFrameChange = 0;
        
        if (animationFrame < 8)
        {
            animationFrame += 1;
        }
        else
        {
            animationFrame = 1;
        }
    }
}
else
{
    moving = false;
    
    animationFrameChange = 0;
    animationFrame = 0;
}


// Get ID of room player is currently in

currentRoomId = instance_position(x, y, obj_room_base);//getCurrentRoomId(self);


// Picking up items

if (place_meeting(x, y, obj_item_parent))
{
	playerItem = instance_place(x, y, obj_item_parent);
	
	if (interact)
	{
		ds_grid_add(playerInventory.slot, 0, 0, 5);
		
		with (playerItem)
		{
			instance_destroy();
		}
	}
}


// Depth

if room = rm_main
{
	depth = -(currentRoomId.y + (currentRoomId.y - y + 16));
}
else
{
	depth = -999;
}


// Zooming in and out camera

if keyboard_check_pressed(ord("Z"))
{
	if viewZoomed == true
	{
		viewZoomed = false
	}
	else
	{
		viewZoomed = true;
	}
}

/*
if viewZoomed == true
{
	if (camera_get_view_width(view_camera[0] > 500))
	{
		camera_set_view_size(view_camera[0], 500, 500);
	}
}
else
{
	if (camera_get_view_width(view_camera[0] < room_width))
	{
		camera_set_view_size(view_camera[0], 4000, 4000);
	}
}*/