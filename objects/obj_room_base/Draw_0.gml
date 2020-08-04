draw_sprite(spr_room_base, 0, x, y);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
//draw_text(x, y, string(roomType));
//draw_text(x, y + 32, string(id));

switch (roomType)
{
	case "1Room":
		if (roomRight == 1 and roomLeft == 1 and roomTop == 1) draw_sprite(Top_Room_1_TLR, 0, x, y);
		else if (roomRight == 1 and roomTop == 1) draw_sprite(Top_Room_1_TR, 0, x, y);
		else if (roomRight == 1 and roomLeft == 1) draw_sprite(Top_Room_1_LR, 0, x, y);
		else if (roomLeft == 1 and roomTop == 1) draw_sprite(Top_Room_1_TL, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_Room_1_T, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Top_Room_1_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Top_Room_1_R, 0, x, y);
		else draw_sprite(Top_Room_1_0, 0, x, y);
		
		if (roomRight == 1 and roomLeft == 1 and roomBottom == 1) draw_sprite(Bottom_Room_1_BLR, 0, x, y);
		else if (roomRight == 1 and roomBottom == 1) draw_sprite(Bottom_Room_1_BR, 0, x, y);
		else if (roomRight == 1 and roomLeft == 1) draw_sprite(Bottom_Room_1_LR, 0, x, y);
		else if (roomLeft == 1 and roomBottom == 1) draw_sprite(Bottom_Room_1_BL, 0, x, y);
		else if (roomBottom == 1) draw_sprite(Bottom_Room_1_B, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Bottom_Room_1_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Bottom_Room_1_R, 0, x, y);
		else draw_sprite(Bottom_Room_1_0, 0, x, y);
		
		break;
	
	case "1Hall":
		if (roomRight == 1 and roomLeft == 1 and roomTop == 1) draw_sprite(Top_Hall_TLR, 0, x, y);
		else if (roomRight == 1 and roomTop == 1) draw_sprite(Top_Hall_TR, 0, x, y);
		else if (roomRight == 1 and roomLeft == 1) draw_sprite(Top_Hall_LR, 0, x, y);
		else if (roomLeft == 1 and roomTop == 1) draw_sprite(Top_Hall_TL, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_Hall_T, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Top_Hall_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Top_Hall_R, 0, x, y);
		
		if (roomRight == 1 and roomLeft == 1 and roomBottom == 1) draw_sprite(Bottom_Hall_BLR, 0, x, y);
		else if (roomRight == 1 and roomBottom == 1) draw_sprite(Bottom_Hall_BR, 0, x, y);
		else if (roomRight == 1 and roomLeft == 1) draw_sprite(Bottom_Hall_LR, 0, x, y);
		else if (roomLeft == 1 and roomBottom == 1) draw_sprite(Bottom_Hall_BL, 0, x, y);
		else if (roomBottom == 1) draw_sprite(Bottom_Hall_B, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Bottom_Hall_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Bottom_Hall_R, 0, x, y);
		
		break;
	
	case "4TopLeft":
		if (roomTop == 1 and roomLeft == 1) draw_sprite(Top_TopL_TL, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_TopL_T, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Top_TopL_L, 0, x, y);
		else draw_sprite(Top_TopL_0, 0, x, y);
		
		if (roomLeft == 1) draw_sprite(Bottom_TopL_L, 0, x, y);
		else draw_sprite(Bottom_TopL_0, 0, x, y);
		
		break;
	
	case "4TopRight":
		if (roomTop == 1 and roomRight == 1) draw_sprite(Top_TopR_TR, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_TopR_T, 0, x, y);
		else if (roomRight == 1) draw_sprite(Top_TopR_R, 0, x, y);
		else draw_sprite(Top_TopR_0, 0, x, y);
		
		if (roomRight == 1) draw_sprite(Bottom_TopR_R, 0, x, y);
		else draw_sprite(Bottom_TopR_0, 0, x, y);
		
		break;
	
	case "4BottomLeft":
		if (roomLeft == 1) draw_sprite(Top_BottomL_L, 0, x, y);
		else draw_sprite(Top_BottomL_0, 0, x, y);
		
		if (roomBottom == 1 and roomLeft == 1) draw_sprite(Bottom_BottomL_BL, 0, x, y);
		else if (roomBottom == 1) draw_sprite(Bottom_BottomL_B, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Bottom_BottomL_L, 0, x, y);
		else draw_sprite(Bottom_BottomL_0, 0, x, y);
		
		break;
	
	case "4BottomRight":
		if (roomRight == 1) draw_sprite(Top_BottomR_R, 0, x, y);
		else draw_sprite(Top_BottomR_0, 0, x, y);
		
		if (roomBottom == 1 and roomRight == 1) draw_sprite(Bottom_BottomR_BR, 0, x, y);
		else if (roomBottom == 1) draw_sprite(Bottom_BottomR_B, 0, x, y);
		else if (roomRight == 1) draw_sprite(Bottom_BottomR_R, 0, x, y);
		else draw_sprite(Bottom_BottomR_0, 0, x, y);
		
		break;
	
	case "2Left":
		if (roomLeft == 1 and roomTop == 1) draw_sprite(Top_TopL_TL, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Top_TopL_L, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_TopL_T, 0, x, y);
		else draw_sprite(Top_TopL_0, 0, x, y);
		
		if (roomLeft == 1 and roomBottom == 1) draw_sprite(Bottom_BottomL_BL, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Bottom_BottomL_L, 0, x, y);
		else if (roomBottom == 1) draw_sprite(Bottom_BottomL_B, 0, x, y);
		else draw_sprite(Bottom_BottomL_0, 0, x, y);
		
		break;
	
	case "2Right":
		if (roomRight == 1 and roomTop == 1) draw_sprite(Top_TopR_TR, 0, x, y);
		else if (roomRight == 1) draw_sprite(Top_TopR_R, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_TopR_T, 0, x, y);
		else draw_sprite(Top_TopR_0, 0, x, y);
		
		if (roomRight == 1 and roomBottom == 1) draw_sprite(Bottom_BottomR_BR, 0, x, y);
		else if (roomRight == 1) draw_sprite(Bottom_BottomR_R, 0, x, y);
		else if (roomBottom == 1) draw_sprite(Bottom_BottomR_B, 0, x, y);
		else draw_sprite(Bottom_BottomR_0, 0, x, y);
		
		break;
	
	case "2Top":
		if (roomTop == 1 and roomRight == 1 and roomLeft == 1) draw_sprite(Top_Room_1_TLR, 0, x, y);
		else if (roomTop == 1 and roomRight == 1) draw_sprite(Top_Room_1_TR, 0, x, y);
		else if (roomTop == 1 and roomLeft == 1) draw_sprite(Top_Room_1_TL, 0, x, y);
		else if (roomLeft == 1 and roomRight == 1) draw_sprite(Top_Room_1_LR, 0, x, y);
		else if (roomTop == 1) draw_sprite(Top_Room_1_T, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Top_Room_1_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Top_Room_1_R, 0, x, y);
		else draw_sprite(Top_Room_1_0, 0, x, y);
		
		if (roomLeft == 1 and roomRight == 1) draw_sprite(Top2_Bottom_LR, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Top2_Bottom_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Top2_Bottom_R, 0, x, y);
		else draw_sprite(Top2_Bottom_0, 0, x, y);
		
		break;
	
	case "2Bottom":
		if (roomBottom == 1 and roomRight == 1 and roomLeft == 1) draw_sprite(Bottom_Room_1_BLR, 0, x, y);
		else if (roomBottom == 1 and roomRight == 1) draw_sprite(Bottom_Room_1_BR, 0, x, y);
		else if (roomBottom == 1 and roomLeft == 1) draw_sprite(Bottom_Room_1_BL, 0, x, y);
		else if (roomLeft == 1 and roomRight == 1) draw_sprite(Bottom_Room_1_LR, 0, x, y); 
		else if (roomBottom == 1) draw_sprite(Bottom_Room_1_B, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Bottom_Room_1_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Bottom_Room_1_R, 0, x, y);
		else draw_sprite(Bottom_Room_1_0, 0, x, y);
		
		if (roomLeft == 1 and roomRight == 1) draw_sprite(Bottom2_Top_LR, 0, x, y);
		else if (roomLeft == 1) draw_sprite(Bottom2_Top_L, 0, x, y);
		else if (roomRight == 1) draw_sprite(Bottom2_Top_R, 0, x, y);
		else draw_sprite(Bottom2_Top_0, 0, x, y);
		
		break;
}