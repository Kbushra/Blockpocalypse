if type == 1 { exit; }

timer--;
if timer <= 0 { image_alpha -= 0.1; if image_alpha <= 0 { instance_destroy(); } }