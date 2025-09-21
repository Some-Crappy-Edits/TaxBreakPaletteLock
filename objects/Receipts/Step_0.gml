Controllers();

MoveDir = rightKeyPressed - leftKeyPressed;

if leftKeyPressed || rightKeyPressed {
	DJ_SFXManager.click = true
};

var CurX = floor(x);
var CurY = floor(y);

if place_meeting(x,y,Crossii) && DeadBlock = 1 {
	Crossii.CloseCheck = 1
} else {
	Crossii.CloseCheck = 0;
};



if place_meeting(x,y-Boundarii.bbox_bottom,Boundarii) {
	StopSign = 1;
	OnGround = 1;
};

if StopSign = 1 {
	KillPlayer = 1;
};

if KillPlayer = 1 && DeadBlock = 0 {
	instance_destroy(PlayerHighLight);
	DeadBlock = 1;
};

if PlayerActive = true && DeadBlock = 0 {
	
	if MoveTimer <= MoveResult {
		MoveTimer++;
	};
	
	//if downKey && StopSign = 0 && !place_meeting(x,y-Boundarii.bbox_bottom,Boundarii) {
	//	yspd += 1;
	//	y = yspd
	//} else {
	//	y = CurY
	//};
	
	if MoveTimer >= MoveResult && StopSign = 0 {
		x += MoveDir*grid;
		MoveTimer = 0;
	} else {
		x = CurX;
	};
	
} else if DeadBlock = 1 {
	x = CurX;
};


if ReceiptTimer >= ReceiptResult && StopSign = 0 && OnGround = 0 && DeadBlock = 0 {
		yspd += 9;
		y = yspd;
		
		ReceiptTimer = 0;
} else if place_meeting(x,y-1,Receipts) || place_meeting(x,bbox_top,Boundarii) {
		y = CurY;
};

var subPixel = .5

if !place_meeting(x,y,Boundarii) {
	x = CurX;
};


if place_meeting(x,y+1,Receipts) {
	x = CurX;
	y = CurY;
	StopSign = 1;
} else if !place_meeting(x,y+1,Receipts) && DeadBlock = 1 && OnGround = 0 {
	y += 9;
};


if ReceiptTimer <= ReceiptResult {
	ReceiptTimer++;
};	