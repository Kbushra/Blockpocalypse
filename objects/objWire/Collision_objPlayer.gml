if iframes > 0 { exit; }
with (objPlayer) { hp--; sat = 255; other.iframes = 10; vMovement = floor(vMovement/2); }