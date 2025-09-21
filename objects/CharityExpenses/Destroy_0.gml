
global.Score -= 7000 * instance_number(BlockName);

if instance_exists(PlayerHighLight) {
	instance_destroy(PlayerHighLight);
}

global.WinCheck = true;

Griswald.WinHit = 1;

