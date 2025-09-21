


if global.BlockSpawn = true && !instance_exists(PlayerHighLight) {
		SpawnCheck = 0;
		var RandomNumber = irandom_range(0,BlockLength-1);
		CurrentTurn += 1;
		instance_create_depth(x,y-1,-80,CurBlock[RandomNumber]);
		global.BlockSpawn = false;
};