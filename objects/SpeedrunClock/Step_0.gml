if room = Menu ||
room = SaveFiles ||
room = ClickRoom {
	Timer = 0;
} else if room = Congrats || room = CongratsEasterEgg {
	var PB = Timer;
	Timer = PB;
} else if Timer >= TimerMax {
	Timer = TimerMax;
} else if !instance_exists(warp) {
	Timer++;
};