
//player 1
draw_rectangle_colour(20,20,480,230,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(20,20,480,230,c_lime,c_lime,c_lime,c_lime,true)
draw_set_font(font_oswald);
if global.turn = "player1"
{
	draw_set_colour(c_lime)
	draw_text(30,18,"UNIT 01: -ONLINE-");
}
else
{
	draw_set_colour(c_green)
	draw_text(30,18,"UNIT 01: -OFFLINE-");
}
draw_set_colour(c_lime)
draw_set_font(font_oswald_2);
draw_text(30,100,"HP:")
draw_text(90,100,global.player1_hp)
draw_text(30,150,"MV:")
draw_text(90,150,global.player1_move)
draw_text(160,100,"MATK:")
draw_text(260,100,global.player1_atk_a)
draw_text(160,150,"RATK:")
draw_text(260,150,global.player1_atk_b)
draw_text(320,100,"MDEF:")
draw_text(420,100,global.player1_def_a)
draw_text(320,150,"RDEF:")
draw_text(420,150,global.player1_def_b)

//player 2
draw_rectangle_colour(1120,20,1580,230,c_black,c_black,c_black,c_black,false);
draw_rectangle_colour(1120,20,1580,230,c_lime,c_lime,c_lime,c_lime,true);
draw_set_font(font_oswald);
if global.turn = "player2"
{
	draw_set_colour(c_lime)
	draw_text(1130,18,"UNIT 02: -ONLINE-");
}
else
{
	draw_set_colour(c_green)
	draw_text(1130,18,"UNIT 02: -OFFLINE-");
}
draw_set_colour(c_lime)
draw_set_font(font_oswald_2);
draw_text(1130,100,"HP:")
draw_text(1190,100,global.player2_hp)
draw_text(1130,150,"MV:")
draw_text(1190,150,global.player2_move)
draw_text(1260,100,"MATK:")
draw_text(1360,100,global.player2_atk_a)
draw_text(1260,150,"RATK:")
draw_text(1360,150,global.player2_atk_b)
draw_text(1420,100,"MDEF:")
draw_text(1520,100,global.player2_def_a)
draw_text(1420,150,"RDEF:")
draw_text(1520,150,global.player2_def_b)


//player 3
draw_rectangle_colour(20,670,480,880,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(20,670,480,880,c_lime,c_lime,c_lime,c_lime,true)
draw_set_font(font_oswald);
if global.turn = "player3"
{
	draw_set_colour(c_lime)
	draw_text(30,670,"UNIT 03: -ONLINE-");
}
else
{
	draw_set_colour(c_green)
	draw_text(30,670,"UNIT 03: -OFFLINE-");
}
draw_set_colour(c_lime)
draw_set_font(font_oswald_2);
draw_text(30,752,"HP:")
draw_text(90,752,global.player3_hp)
draw_text(30,802,"MV:")
draw_text(90,802,global.player3_move)
draw_text(160,752,"MATK:")
draw_text(260,752,global.player3_atk_a)
draw_text(160,802,"RATK:")
draw_text(260,802,global.player3_atk_b)
draw_text(320,752,"MDEF:")
draw_text(420,752,global.player3_def_a)
draw_text(320,802,"RDEF:")
draw_text(420,802,global.player3_def_b)

//player 4
draw_rectangle_colour(1120,670,1580,880,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(1120,670,1580,880,c_lime,c_lime,c_lime,c_lime,true)
draw_set_font(font_oswald);
if global.turn = "player4"
{
	draw_set_colour(c_lime)
	draw_text(1130,670,"UNIT 04: -ONLINE-");
}
else
{
	draw_set_colour(c_green)
	draw_text(1130,670,"UNIT 04: -OFFLINE-");
}
draw_set_colour(c_lime)
draw_set_font(font_oswald_2);
draw_text(1130,752,"HP:")
draw_text(1190,752,global.player4_hp)
draw_text(1130,802,"MV:")
draw_text(1190,802,global.player4_move)
draw_text(1260,752,"MATK:")
draw_text(1360,752,global.player4_atk_a)
draw_text(1260,802,"RATK:")
draw_text(1360,802,global.player4_atk_b)
draw_text(1420,752,"MDEF:")
draw_text(1520,752,global.player4_def_a)
draw_text(1420,802,"RDEF:")
draw_text(1520,802,global.player4_def_b)

//linescan
draw_set_alpha(0.15)
linescan +=4;
//linescan2 +=4;
if linescan >=900 {linescan = 0}
//if linescan2 >=900 {linescan2 = 0}
draw_set_colour(c_lime)
//draw_rectangle(0,linescan2-10,1600,linescan2+1,false)
draw_rectangle(0,linescan-10,1600,linescan+1,false)
draw_set_alpha(1)