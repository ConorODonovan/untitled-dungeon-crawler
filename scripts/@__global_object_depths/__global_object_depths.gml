// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_player
global.__objectDepths[1] = 0; // obj_room_base
global.__objectDepths[2] = 0; // obj_room_deleted
global.__objectDepths[3] = -9999; // obj_unreachable_room
global.__objectDepths[4] = 0; // obj_wall_parent
global.__objectDepths[5] = 0; // obj_wall_door_top
global.__objectDepths[6] = 0; // obj_wall_door_bottom
global.__objectDepths[7] = 0; // obj_wall_door_left
global.__objectDepths[8] = 0; // obj_wall_door_right
global.__objectDepths[9] = 0; // obj_wall_no_door_top
global.__objectDepths[10] = 0; // obj_wall_no_door_bottom
global.__objectDepths[11] = 0; // obj_wall_no_door_left
global.__objectDepths[12] = 0; // obj_wall_no_door_right
global.__objectDepths[13] = 0; // obj_enemy_swarm
global.__objectDepths[14] = 0; // obj_enemy_main_body
global.__objectDepths[15] = 0; // obj_enemy_main_arm
global.__objectDepths[16] = 0; // obj_enemy_swarm_spawner
global.__objectDepths[17] = 0; // obj_dungeon_generator
global.__objectDepths[18] = 0; // obj_game_controller


global.__objectNames[0] = "obj_player";
global.__objectNames[1] = "obj_room_base";
global.__objectNames[2] = "obj_room_deleted";
global.__objectNames[3] = "obj_unreachable_room";
global.__objectNames[4] = "obj_wall_parent";
global.__objectNames[5] = "obj_wall_door_top";
global.__objectNames[6] = "obj_wall_door_bottom";
global.__objectNames[7] = "obj_wall_door_left";
global.__objectNames[8] = "obj_wall_door_right";
global.__objectNames[9] = "obj_wall_no_door_top";
global.__objectNames[10] = "obj_wall_no_door_bottom";
global.__objectNames[11] = "obj_wall_no_door_left";
global.__objectNames[12] = "obj_wall_no_door_right";
global.__objectNames[13] = "obj_enemy_swarm";
global.__objectNames[14] = "obj_enemy_main_body";
global.__objectNames[15] = "obj_enemy_main_arm";
global.__objectNames[16] = "obj_enemy_swarm_spawner";
global.__objectNames[17] = "obj_dungeon_generator";
global.__objectNames[18] = "obj_game_controller";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for