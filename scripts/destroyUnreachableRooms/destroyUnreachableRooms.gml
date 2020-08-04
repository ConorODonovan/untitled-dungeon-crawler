with (obj_room_base)
{
    if (position_meeting(x, y, obj_unreachable_room))
    {
        unreachableRoomMarker = instance_position(x, y, obj_unreachable_room);
        
        with (unreachableRoomMarker)
        {
            instance_destroy();
        }
        
        instance_destroy();
    }
}
