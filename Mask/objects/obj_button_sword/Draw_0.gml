draw_self();
draw_set_colour(c_green);
draw_set_font(font_oswald);


if (selected)
{
		draw_text(x, y, "Selected!")
}
else
{
		draw_text(x, y, "Sword!")
}