if global.trainingSessions < 6 { exit; }

var rm = irandom_range(1, 5);
doorID = 10+rm;
roomID = asset_get_index($"rmTraining{rm}");