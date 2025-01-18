if global.trainingSessions <= 6 { exit; }

if (global.trainingSessions - 3) % 7 == 0
{
	doorID = 20;
	roomID = rmSpeedNerf;
	exit;
}

if (global.trainingSessions - 5) % 7 == 0
{
	doorID = 21;
	roomID = rmHealthNerf;
	exit;
}

var rm = irandom_range(1, 5);
doorID = 10+rm;
roomID = asset_get_index($"rmTraining{rm}");