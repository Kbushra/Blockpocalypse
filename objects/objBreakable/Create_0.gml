hit = false;

uses = maxUses;

breakSprite = -1;
normSprite = sprite_index;
audio = -1;
broken = false;

wobbleTimer = 0;

if breakId != -1 && global.broken[breakId]
{
	uses = 0;
	image_alpha = 0;
	broken = true;
}