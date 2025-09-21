//Keyboard Inputs
Dedelay();

AchieveTime = 0;
AchieveResult = 3600;

LenientDelayTimer = 0;
LenientDelay = 20;

//TipTapTimer = 0;
//TipTapResult = 30;

global.W_FlyHigh = 0;

//WingTimer = 0;
//WingResult = 100;

//Sprites
maskSpr = aly_idle
idleSpr = aly_idle
walkSpr = aly_walk
runSpr = aly_fly
jumpSpr = aly_fly
crouchSpr = aly_idle
hitSpr = aly_idle

//Functions
function setOnGround(_val = true) {
	if _val = true {
		OnGround = true;
		coyoteHangTimer = coyoteHangFrames;
	} else {
		OnGround = false;
		myFloorPlat = noone;
		coyoteHangTimer = 0;
	};
};

function SemiSolidPlatCheck(_x, _y){
	//Return Variable
	var _rtrn = noone;
	
	//Not Going Upwards, Check for Normal Collision
	if yspd >= 0 && place_meeting(_x,_y,Lazii)
	{
		//Check & Add Objects to List
		var _list = ds_list_create(); //DS List that stores all loaded objects
		var _listSize = instance_place_list(x, y, Lazii, _list, false);
		
		//Loop through instances colliding and only confirm one if its top is below Goopy
		for( var i = 0; i < _listSize; i++) {
			//Get instances of Lazii from list
			var _listInst = _list[| i];
			if _listInst != forgetSemiSolid && floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.yspd)
			{
				_rtrn = _listInst;
				//End Loop Early
				i = _listSize;
			};
		};
		//Kill DS List (Memory Leak will happen if not)
		ds_list_destroy(_list);
	};
		return _rtrn;
};

depth = -30;

//Health
starHealth = 3;
maxHealth = 3;
isHit = 0;
knockback = 0
rip = false;
EnmDmg = 0;
BadGHit = 0;


//Knockback
HitCount = 0;
HitTimer = 20;

//Count Hit
HipCheck = 0;
HipResult = 100;

//Movement
face = 1;
moveDir = 0;
moveSpd[0] = 3;
moveSpd[1] = 6;
crawlSpd = 2;
runType = 0;
xspd = 0;
yspd = 0;

//States
crouching = false;


//Jump
grav = .200;
termVel = 11;

//Jump Gravity Values
jspd[0] = -5;
jspd[1] = -1.15;
jspd[2] = -2.15;
jspd[3] = -3.15;
jumpMax = 3;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames[0] = 18;
jumpHoldFrames[1] = 20;
jumpHoldFrames[2] = 30;
jumpHoldFrames[3] = 40;

//Coyote Time (Momentary Hover)
//Hang Time
coyoteHangFrames = 2;
coyoteHangTimer = 0;
//Jump Buffer
coyoteJumpFrames = 5;
coyoteJumpTimer = 0;

//Moving Platforms
myFloorPlat = noone;
earlyMoveplatXspd = false;
downSlopeSemiSolids = noone;
forgetSemiSolid = noone;
moveplatXspd = 0;

//Grounded
OnGround = true;

