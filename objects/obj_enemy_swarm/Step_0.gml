if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall_parent, false, false))
{
    alert = true;
}

if (alert == false)
{
    if (!place_meeting(x + hspeed, y + vspeed, obj_wall_parent))
    {
        speed = 4;
        direction = startDirection;
    }
    else
    {
        speed = 0;
    }
}


if (alert == true)
{
    if (instance_exists(obj_player))
    {
        motion_add(point_direction(x,y,obj_player.x,obj_player.y),random_range(0.1,0.2));
        
        if (speed > maxSpeed)
        {
            speed = maxSpeed;
        }
    }
    
    collisionChecks = 0;

    while (place_meeting(x + hspeed,y + vspeed,obj_wall_parent))
    {
        if (collisionChecks <= 4)
        {
            direction += 45;
            collisionChecks += 1;
            speed -= 1;
        }
        else
        {
            direction += random_range(160,200);
            speed -= 4;
        }
    }
}


// Get ID of room enemy is currently in

currentRoomId = instance_position(x, y, obj_room_base);


// Depth

depth = -999;
//depth = -(currentRoomId.y + (currentRoomId.y - y + 16));

