//movement
if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) 
{
	if global.turn = "player1" && place_empty(obj_player1.x - 114, obj_player1.y - 57) && global.player1_move > 0
	{
		obj_player1.y -= 57;
		obj_player1.x -= 114;
		global.player1_move -= 1;
	}
	
	if global.turn = "player2" && global.player2_move > 0
	{
		obj_player2.y -= 57;
		obj_player2.x -= 114;
		global.player2_move -= 1;
	}
	
		if global.turn = "player3" && global.player3_move > 0
	{
		obj_player3.y -= 57;
		obj_player3.x -= 114;
		global.player3_move -= 1;
	}
	
		if global.turn = "player4" && global.player4_move > 0
	{
		obj_player4.y -= 57;
		obj_player4.x -= 114;
		global.player4_move -= 1;
	}
		
		
}




if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
{
		if global.turn = "player1" && global.player1_move > 0
	{
		obj_player1.y += 57;
		obj_player1.x += 114;
		global.player1_move -= 1;
	}
	
		if global.turn = "player2" && global.player2_move > 0
	{
		obj_player2.y += 57;
		obj_player2.x += 114;
		global.player2_move -= 1;
	}
	
		if global.turn = "player3" && global.player3_move > 0
	{
		obj_player3.y += 57;
		obj_player3.x += 114;
		global.player3_move -= 1;
	}
	
		if global.turn = "player4" && global.player4_move > 0
	{
		obj_player4.y += 57;
		obj_player4.x += 114;
		global.player4_move -= 1;
	}
}

if keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
{
		if global.turn = "player1" && global.player1_move > 0
	{
			obj_player1.y += 57;
			obj_player1.x -= 114;
			global.player1_move -= 1;
	}
	
		if global.turn = "player2" && global.player2_move > 0
	{
		obj_player2.y += 57;
		obj_player2.x -= 114;
		global.player2_move -= 1;
	}
	
		if global.turn = "player3" && global.player3_move > 0
	{
		obj_player3.y += 57;
		obj_player3.x -= 114;
		global.player3_move -= 1;
	}
	
		if global.turn = "player4" && global.player4_move > 0
	{
		obj_player4.y += 57;
		obj_player4.x -= 114;
		global.player4_move -= 1;
	}
}


if keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
{
		if global.turn = "player1" && global.player1_move > 0
	{
		obj_player1.y -= 57;
		obj_player1.x += 114;
		global.player1_move -= 1;
	}
	
		if global.turn = "player2" && global.player2_move > 0
	{
		obj_player2.y -= 57;
		obj_player2.x += 114;
		global.player2_move -= 1;
	}
	
		if global.turn = "player3" && global.player3_move > 0
	{
		obj_player3.y -= 57;
		obj_player3.x += 114;
		global.player3_move -= 1;
	}
	
		if global.turn = "player4" && global.player4_move > 0
	{
		obj_player4.y -= 57;
		obj_player4.x += 114;
		global.player4_move -= 1;
	}
}

//turn order check
if global.player1_move = 0
{
	global.turn = "player2"
	global.player1_move = global.player1_maxmove
}

if global.player2_move = 0
{
	global.turn = "player3"
	global.player2_move = global.player2_maxmove
}

if global.player3_move = 0
{
	global.turn = "player4"
	global.player3_move = global.player3_maxmove
}

if global.player4_move = 0
{
	global.turn = "enemy"
	global.player4_move = global.player4_maxmove
}

//camera
if global.turn = "player1"
{	
	camera_set_view_target(view_camera[0],obj_player1);
}

if global.turn = "player2"
{	
	camera_set_view_target(view_camera[0],obj_player2);
}

if global.turn = "player3"
{	
	camera_set_view_target(view_camera[0],obj_player3);
}

if global.turn = "player4"
{	
	camera_set_view_target(view_camera[0],obj_player4);
}