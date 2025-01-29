draw_self();
if canDash && global.spwnRoom == rmSubway { draw_sprite(sprPlayerArrows, 0, x, y); }

if room == rmTrainingTutorial
{
	draw_set_halign(fa_center);
	draw_text(156, 94, $"HIGH SCORE:\n{global.highScore}");
}