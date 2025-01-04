if active { y += 20; }
if y >= room_height { instance_destroy(objFlimsyGround); exploded = true; }

x = objPlayer.x;