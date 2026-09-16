if keyboard_check(vk_escape)
{
	QuitTimer++
	draw_set_font(Font1)
	draw_set_colour(c_red)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	if QuitTimer < 60 draw_text(10,10, "QUITTING _ _ _")
	if QuitTimer >= 60 && QuitTimer < 120 {draw_text(10, 10, "QUITTING x _ _")}
	if QuitTimer >= 120 {draw_text(10, 10, "QUITTING x x _")}
	if QuitTimer == QuitTime {game_end()}
}
else {QuitTimer = 0}

draw_flush()