draw_set_font(dialogue_font);

draw_text(x-500,y, global.BlockSpawn);
draw_text(x-500,y-20, Boundarii.CurrentTurn);
draw_text(x-500,y-60, global.Score);
if instance_exists(Receipts) { draw_text(x-500,y-40, TickTock.IdleTimer); };
//draw_text(x-500,y-120, playAlly.termVel);
//draw_text(x-500,y-140, global.W_MarrowsTalk);
//draw_text(x-500,y-160, playAlly.AchieveTime);

//draw_text(x+600,y, "Apple")
//draw_text(x+600,y-20, "Ammo")
//raw_text(x+600,y-40, "Active Health")
//draw_text(x+600,y-60, "Marty X")
///draw_text(x+600,y-80, "Marty Y")
//draw_text(x+600,y-100, "isHit")
//draw_text(x+600,y-120, "Enemy Damage")
//draw_text(x+200,y-140, "Achievement Check");