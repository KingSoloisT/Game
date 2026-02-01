//move fix
if global.turn == "player1"
{
	if movesup = 2
	{
		obj_player1.x -=0.5;
		movesup = 0;
	}

	if movesdown = 2
	{
		obj_player1.x +=0.5;
		movesdown = 0;
	}
}

if global.turn == "player2"
{
	if movesup = 2
	{
		obj_player2.x -=0.5;
		movesup = 0;
	}

	if movesdown = 2
	{
		obj_player2.x +=0.5;
		movesdown = 0;
	}
}

if global.turn == "player3"
{
	if movesup = 2
	{
		obj_player3.x -=0.5;
		movesup = 0;
	}

	if movesdown = 2
	{
		obj_player3.x +=0.5;
		movesdown = 0;
	}
}

if global.turn == "player4"
{
	if movesup = 2
	{
		obj_player4.x -=0.5;
		movesup = 0;
	}

	if movesdown = 2
	{
		obj_player4.x +=0.5;
		movesdown = 0;
	}
}


//movement
if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) 
{
	
	if global.turn == "player1" && global.player1_move > 0 && obj_player1.canmoveup = true
	{
			obj_player1.y -= 56;
			obj_player1.x -= 111;
			global.player1_move -= 1;
			movesup ++;
			
		
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
		if global.turn = "player1" && global.player1_move > 0 && obj_player1.canmovedown = true
	{
		obj_player1.y += 56;
		obj_player1.x += 111;
		global.player1_move -= 1;
		movesdown ++;
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
		if global.turn = "player1" && global.player1_move > 0 && obj_player1.canmoveleft = true
	{
			obj_player1.y += 56;
			obj_player1.x -= 111;
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
		if global.turn = "player1" && global.player1_move > 0 && obj_player1.canmoveright = true
	{
		obj_player1.y -= 56;
		obj_player1.x += 111;
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

if global.turn = "enemy"
{	
	camera_set_view_target(view_camera[0],obj_enemy);
}

//enemy
if global.turn = "enemy"
{
	//enemy_target = choose("player1","player2","player3","player4");
	enemy_target = "player1"
	global.turn = "enemymove"
}

if global.turn = "enemymove"
{
	if enemy_target = "player1"	
	{
		obj_enemy.y -= 56;
		obj_enemy.x -= 111;
	}
}