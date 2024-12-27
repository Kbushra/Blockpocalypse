hit = false;

progX = 0;
progY = 0;
initialX = 0;
initialY = 0;

bounceLength = 10;

uses = maxUses;

breakSprite = -1;
normSprite = sprite_index;
broken = false;

if breakId != -1 && global.broken[breakId]
{
	uses = 0;
	image_alpha = 0;
	broken = true;
}