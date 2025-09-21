var CurReceipt = Receipts;


if instance_exists(PlayerHighLight) && !instance_exists(Receipts) {
	instance_destroy(PlayerHighLight);
};

if instance_exists(CurReceipt) && CurReceipt.DeadBlock = 1 && SpawnCheck = 0 {
	global.BlockSpawn = true;
	SpawnCheck = 1;
} else if !instance_exists(Receipts) && SpawnCheck = 0 {
	global.BlockSpawn = true;
	SpawnCheck = 1;
};