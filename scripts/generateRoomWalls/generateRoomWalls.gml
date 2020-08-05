currentRoomId = argument0;
roomRight = argument1;
roomLeft = argument2;
roomTop = argument3;
roomBottom = argument4;
roomType = argument5;

currentRoom = instance_find(obj_room_base, currentRoomId);

with currentRoom
{
	switch (roomType)
	{
		case "1Room":
			if (roomRight == 1 and roomLeft == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_TLR);
			else if (roomRight == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_TR);
			else if (roomRight == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_LR);
			else if (roomLeft == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_TL);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_T);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_L);
			else if (roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_R);
			else instance_create_depth(x, y, y - 8, obj_Top_Room_1_0);
		
			if (roomRight == 1 and roomLeft == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_BLR);
			else if (roomRight == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_BR);
			else if (roomRight == 1 and roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_LR);
			else if (roomLeft == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_BL);
			else if (roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_B);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_L);
			else if (roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_R);
			else instance_create_depth(x, y, y - 64, obj_Bottom_Room_1_0);
		
			break;
	
		case "1Hall":
			if (roomRight == 1 and roomLeft == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Hall_TLR);
			else if (roomRight == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Hall_TR);
			else if (roomRight == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Hall_LR);
			else if (roomLeft == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Hall_TL);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Hall_T);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Hall_L);
			else instance_create_depth(x, y, y - 8, obj_Top_Hall_R);
		
			if (roomRight == 1 and roomLeft == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Hall_BLR);
			else if (roomRight == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Hall_BR);
			else if (roomRight == 1 and roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Hall_LR);
			else if (roomLeft == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Hall_BL);
			else if (roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Hall_B);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_Hall_L);
			else instance_create_depth(x, y, y - 64, obj_Bottom_Hall_R);
		
			break;
	
		case "4TopLeft":
			if (roomTop == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_TopL_TL);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_TopL_T);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_TopL_L);
			else instance_create_depth(x, y, y - 8, obj_Top_TopL_0);
		
			if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_TopL_L);
			else instance_create_depth(x, y, y - 64, obj_Bottom_TopL_0);
		
			break;
	
		case "4TopRight":
			if (roomTop == 1 and roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_TopR_TR);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_TopR_T);
			else if (roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_TopR_R);
			else instance_create_depth(x, y, y - 8, obj_Top_TopR_0);
		
			if (roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom_TopR_R);
			else instance_create_depth(x, y, y - 64, obj_Bottom_TopR_0);
		
			break;
	
		case "4BottomLeft":
			if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_BottomL_L);
			else instance_create_depth(x, y, y - 8, obj_Top_BottomL_0);
		
			if (roomBottom == 1 and roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_BL);
			else if (roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_B);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_L);
			else instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_0);
		
			break;
	
		case "4BottomRight":
			if (roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_BottomR_R);
			else instance_create_depth(x, y, y - 8, obj_Top_BottomR_0);
		
			if (roomBottom == 1 and roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_BR);
			else if (roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_B);
			else if (roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_R);
			else instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_0);
		
			break;
	
		case "2Left":
			if (roomLeft == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_TopL_TL);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_TopL_L);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_TopL_T);
			else instance_create_depth(x, y, y - 8, obj_Top_TopL_0);
		
			if (roomLeft == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_BL);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_L);
			else if (roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_B);
			else instance_create_depth(x, y, y - 64, obj_Bottom_BottomL_0);
		
			break;
	
		case "2Right":
			if (roomRight == 1 and roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_TopR_TR);
			else if (roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_TopR_R);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_TopR_T);
			else instance_create_depth(x, y, y - 8, obj_Top_TopR_0);
		
			if (roomRight == 1 and roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_BR);
			else if (roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_R);
			else if (roomBottom == 1) instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_B);
			else instance_create_depth(x, y, y - 64, obj_Bottom_BottomR_0);
		
			break;
	
		case "2Top":
			if (roomTop == 1 and roomRight == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_TLR);
			else if (roomTop == 1 and roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_TR);
			else if (roomTop == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_TL);
			else if (roomLeft == 1 and roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_LR);
			else if (roomTop == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_T);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_L);
			else if (roomRight == 1) instance_create_depth(x, y, y - 8, obj_Top_Room_1_R);
			else instance_create_depth(x, y, y - 8, obj_Top_Room_1_0);
		
			if (roomLeft == 1 and roomRight == 1) instance_create_depth(x, y, y - 64, obj_Top2_Bottom_LR);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Top2_Bottom_L);
			else if (roomRight == 1) instance_create_depth(x, y, y - 64, obj_Top2_Bottom_R);
			else instance_create_depth(x, y, y - 64, obj_Top2_Bottom_0);
		
			break;
	
		case "2Bottom":
			if (roomBottom == 1 and roomRight == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_BLR);
			else if (roomBottom == 1 and roomRight == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_BR);
			else if (roomBottom == 1 and roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_BL);
			else if (roomLeft == 1 and roomRight == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_LR); 
			else if (roomBottom == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_B);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_L);
			else if (roomRight == 1) instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_R);
			else instance_create_depth(x, y, y - 8, obj_Bottom_Room_1_0);
		
			if (roomLeft == 1 and roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom2_Top_LR);
			else if (roomLeft == 1) instance_create_depth(x, y, y - 64, obj_Bottom2_Top_L);
			else if (roomRight == 1) instance_create_depth(x, y, y - 64, obj_Bottom2_Top_R);
			else instance_create_depth(x, y, y - 64, obj_Bottom2_Top_0);
		
			break;
			
	}
}