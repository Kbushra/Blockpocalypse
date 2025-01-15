hp = 15;
sat = 0;

iframes = 5;

hMovement = 0;
vMovement = 0;

grounded = true;

dir = choose(-1, 1);

depth = objPlayer.depth + 1;

if global.training { sprite_index = sprEnemyTrain; }
image_speed = 0;

timer = irandom_range(120, 240);