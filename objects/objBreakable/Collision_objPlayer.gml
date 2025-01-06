if !objPlayer.dashing || broken || hit { exit; }

if !infUses { uses -= 1; if uses > 0 { objPlayer.dashLength = 0; } }

hit = true;

wobbleTimer = 20;

objPlayer.stuck = sticky;
objPlayer.initialY = objPlayer.y;