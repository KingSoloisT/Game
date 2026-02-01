depth = -y;
if place_free(obj_player1.x - 114,obj_player1.y - 57)
{
	canmoveup = true	
}

else

{
	
	canmoveup = false
}


if place_free(obj_player1.x + 114,obj_player1.y + 57)
{
	canmovedown = true	
}

else

{
	
	canmovedown = false
}

if place_free(obj_player1.x - 114,obj_player1.y + 57)
{
	canmoveleft = true	
}

else

{
	
	canmoveleft = false
}

if place_free(obj_player1.x + 114,obj_player1.y - 57)
{
	canmoveright = true	
}

else

{
	
	canmoveright = false
}

if place_meeting(x,y,obj_player2)
{
	room_goto(rm_battlescreen)
}


