//Escape Molli (Moving Solid Platforms) when interacting during Begin Step
#region
	var _rightWall = noone;
	var _leftWall = noone;
	var _bottomWall = noone;
	var _topWall = noone;
	var _list = ds_list_create();
	var _listSize = instance_place_list(x,y,Molli,_list,false);

	//Loop through colliding Mollis
	for (var i = 0; i < _listSize; i++) {
		var _listInst = _list[| i];
	
		//Find closest walls in each direction
			//Right Walls
			if _listInst.bbox_left - _listInst.xspd >= bbox_right-1
			{
				if !instance_exists(_rightWall) || _listInst.bbox_left < _rightWall.bbox_left
				{
					_rightWall = _listInst;
				};
			};
		
			//Left Walls
			if _listInst.bbox_right - _listInst.xspd <= bbox_left+1
			{
				if !instance_exists(_leftWall) || _listInst.bbox_right > _leftWall.bbox_right
				{
					_leftWall = _listInst;
				};
			};
		
			//Bottom Walls
			if _listInst.bbox_top - _listInst.yspd <= bbox_bottom-1
			{
				if !instance_exists(_bottomWall) || _listInst.bbox_top < _bottomWall.bbox_top
				{
					_bottomWall = _listInst;
				};
			};
		
			//Top Walls
			if _listInst.bbox_bottom - _listInst.yspd <= bbox_top+1
			{
				if !instance_exists(_topWall) || _listInst.bbox_bottom > _topWall.bbox_bottom
				{
					_topWall = _listInst;
				};
			};
		};


	//Kill DS list (will cause Memory Leak if kept)
	ds_list_destroy(_list);

	//Get out of Walls
		//Right Wall
		if instance_exists(_rightWall) {
			var _rightDist = bbox_right - x;
			x = _rightWall.bbox_left - _rightDist;
		};

		//Left Wall
		if instance_exists(_leftWall) {
			var _leftDist = x - bbox_left;
			x = _leftWall.bbox_right + _leftDist;
		};
	
		//Bottom Wall
		if instance_exists(_bottomWall) {
			var _bottomDist = bbox_bottom - y;
			var _targetY = _bottomWall.bbox_top - _bottomDist;
			//Check if there's a wall in the way
			if !place_meeting(x, _targetY, Colli){
				y = _targetY;
			} //else {
				//game_restart();
			//};
		};
	
		// Top Wall (w/ Improved Collision and Crouching Ability)
		if instance_exists(_topWall) {
			var _upDist = y - bbox_top;
			var _targetY = _topWall.bbox_bottom + _upDist;
			//Check if there's a wall in the way
			if !place_meeting(x, _targetY, Colli){
				y = _targetY;
				} //else {
				//game_restart();
			};
#endregion

//Stay on Molli 
earlyMoveplatXspd = false;
if instance_exists(myFloorPlat) && myFloorPlat.xspd && !place_meeting(x, y+termVel+1, myFloorPlat)
{
	//Snap Back to Platform (w/ no Wall in Way)
	if !place_meeting(x+myFloorPlat.xspd,y,Colli)
	{
		x += myFloorPlat.xspd;
		earlyMoveplatXspd = true;
	};
}
	
	//Xspd
	xspd = moveDir * moveSpd[runType];
	

	//X Collision
	var _subPixel = .5;
	if place_meeting( x + xspd, y, Colli )
	{
		//Slope Check 
		if !place_meeting(x + xspd, y - abs(xspd)-1, Colli) {
			while place_meeting(x+xspd, y, Colli) {y-=_subPixel};
		} else {
			//Ceiling Slopes
			if !place_meeting(x + xspd, y + abs(xspd)+1, Colli) {
				while place_meeting(x+xspd, y, Colli) {y+=_subPixel};
			} else {
			//Precise Wall Colliding
			var _pixelCheck = _subPixel * sign(xspd);
			while !place_meeting (x + _pixelCheck, y, Colli){x += _pixelCheck;}
			//Collision value itself
			xspd = 0
			};
		};
	};
	
	//Going Down Slope
	downSlopeSemiSolids = noone;
	if yspd >= 0 && !place_meeting(x+xspd, y+1, Colli) && place_meeting (x+xspd, y+abs(xspd)+1, Colli){
		downSlopeSemiSolids = SemiSolidPlatCheck(x+xspd,y+abs(xspd)+1);
		if !instance_exists(downSlopeSemiSolids){
			while !place_meeting (x + xspd, y + _subPixel, Colli) {y += _subPixel};
		};
	};

	//Move
	x += xspd;
	
//Y Movement
	//Gravity
	//Kill Coyote
	if coyoteHangTimer > 0 {
		coyoteHangTimer--;
	} else {
		yspd += grav;
		//Ground Gone
		setOnGround(false);
	};
	
	if OnGround {
		jumpCount = 0;
		jumpHoldTimer = 0;
		coyoteJumpTimer = coyoteJumpFrames;
	} else {
		coyoteJumpTimer--;
		if jumpCount == 0 && coyoteJumpTimer <= 0{jumpCount = 1};
	};
	
	//Falling Speed
	if yspd > termVel { yspd = termVel; };
	
	//Jump based on the timer/holding the button
	
	//Falling Speed
	if yspd > termVel {yspd = termVel};
	//Y Collision
	var _subPixel = .5;	

	
	
	
	// Upwards Y Collision (Ceilings)
	if yspd < 0 && place_meeting( x, y + yspd, Colli ) {
		//Jump Into Sloped Ceilings
		var _slopedSlide = false;
		
		//UpLeft Slope
		if moveDir == 0 && !place_meeting(x-abs(yspd)-1, y+yspd, Colli) {
			while place_meeting(x,y+yspd,Colli) {x -= 1;};
			_slopedSlide = true;
		};
		
		//UpRight Slope
		if moveDir == 0 && !place_meeting(x+abs(yspd)+1, y+yspd, Colli) {
			while place_meeting(x,y+yspd,Colli) {x += 1;};
			_slopedSlide = true;
		};
		
		//Neutral Y Collision
		if !_slopedSlide {
			//Precise Wall Colliding
			var _pixelCheck = _subPixel * sign(yspd);
			while !place_meeting (x, y + _pixelCheck, Colli)
			{
				y += _pixelCheck;
			};
			//Bonk
			if yspd < 0 {
				jumpHoldTimer = 0;
			};
			//Collision value itself
			yspd = 0;
		};
	};
	
	// Floor Y Collision
	
	// Check for solid/semisolids under Goopy
	var _clampYspd = max(0,yspd);
	var _list = ds_list_create(); //DS List that stores all loaded objects
	var _array = array_create(0);
	array_push(_array, Colli, Lazii);
	
	//Check & Add Objects to List
	var _listSize = instance_place_list(x, y + 1 + _clampYspd + termVel, _array, _list, false);
	
	//Fix for HQ art, check for semisolid platform below Goopy
	var _yCheck = y+1 + _clampYspd;
	if instance_exists(myFloorPlat){_yCheck += max(0, myFloorPlat.yspd)};
	var _SemiSolid = SemiSolidPlatCheck(x, _yCheck);
	
	//Loop through instances colliding and only confirm one if its top is below Goopy
	for( var i = 0; i < _listSize; i++) {
		//Get instances of Colli or Lazii from list
		var _listInst = _list[| i];
		//Prevent Magnets
		if (_listInst != forgetSemiSolid
		&& (_listInst.yspd <= yspd || instance_exists(myFloorPlat))
		&& (_listInst.yspd > 0 || place_meeting(x,y+1+_clampYspd, _listInst)))
		|| _listInst == _SemiSolid //High Speed Fix
		{
			//Confirm solid/semisolid platform that's below Goopy
			if _listInst.object_index = Colli
			|| object_is_ancestor(_listInst.object_index, Colli)
			|| floor(bbox_bottom) <= ceil(_listInst.bbox_top - _listInst.yspd)
			{
				//Confirm "highest" wall object
				if !instance_exists(myFloorPlat)
				|| _listInst.bbox_top + _listInst.yspd <= myFloorPlat.bbox_top + myFloorPlat.yspd
				|| _listInst.bbox_top + _listInst.yspd <= bbox_bottom
				{
					myFloorPlat = _listInst;
				};
			};
		};
	};
	
	//Kill DS List (Memory Leak will happen if not)
	ds_list_destroy(_list);
	
	//Downslope Semisolid, prevents missing semisolids while going down slopes
	if instance_exists(downSlopeSemiSolids){myFloorPlat = downSlopeSemiSolids;};
	
	//Confirm Platform is Below Goopy
	if instance_exists(myFloorPlat) && !place_meeting(x, y + termVel, myFloorPlat){
		myFloorPlat = noone;
	};
	
	//Land on Potential Ground Platform
	if instance_exists(myFloorPlat) {
			//Scoot up wall precisely
			var _subPixel = .5
			while !place_meeting (x, y + _subPixel, myFloorPlat) && !place_meeting(x,y,Colli)
			{
					y += _subPixel;
			};
			
			//Prevent Clipping SemiSolid
			if myFloorPlat.object_index == Lazii || object_is_ancestor(myFloorPlat.object_index, Lazii)
			{
				while place_meeting(x,y,myFloorPlat) {y -= _subPixel};
			};
			
			//Ground the Y variable
			y = floor(y);
			
			//On Ground
			yspd = 0;
			setOnGround(true);
		};
	
	
	
	//On the Floor
	if yspd >= 0 && place_meeting(x, y+1, Colli){
		setOnGround(true);
	};
	
	//Move
	if !place_meeting(x, y + yspd, Colli){y += yspd;};
	
	//Reset forgetSemiSolid
	if instance_exists(forgetSemiSolid) && !place_meeting(x,y,forgetSemiSolid) {
		forgetSemiSolid = noone;
	};
	
	//Moving Collisions and Actions
		//X - moveplatXspd and Collision
		moveplatXspd = 0;
		if instance_exists(myFloorPlat){
		moveplatXspd = myFloorPlat.xspd
		};
		
		//Move with Xspd
		if !earlyMoveplatXspd {
			if place_meeting(x + moveplatXspd, y, Colli){
				var _subPixel = .5;
				var _pixelCheck = _subPixel * sign(moveplatXspd);
				while !place_meeting (x + _pixelCheck, y, Colli)
				{
					x += _pixelCheck;
				};
			
				//Kill Collision
				moveplatXspd = 0;
			};
			//Move
			x += moveplatXspd;
		};
		
		//Y Snap to Floor
		if instance_exists(myFloorPlat) 
		&& (myFloorPlat != 0 
		|| myFloorPlat.object_index == Molli
		|| object_is_ancestor(myFloorPlat.object_index, Molli)
		|| myFloorPlat.object_index == Lazii
		|| object_is_ancestor(myFloorPlat.object_index, Lazii)){
			
			//Snap to Top of Platform
			if !place_meeting(x, myFloorPlat.bbox_top, Colli)
			&& myFloorPlat.bbox_top >= bbox_bottom-termVel
			{
				y = myFloorPlat.bbox_top;
			};
			
			//Going Up on Soild Ground While On Semisolid
			//if myFloorPlat.yspd < 0 && place_meeting(x, y + myFloorPlat.yspd, Colli){
				//Phase Through Semisolid Floor
				//if myFloorPlat.object_index == Lazii || object_is_ancestor(myFloorPlat.object_index, Lazii)
				//{
					//Get Pushed Down
					//var _subPixel = .25;
					//while place_meeting(x, y + myFloorPlat.yspd, Colli) {y+=_subPixel};
					
					//Inside Wall, Push Out
					//while place_meeting(x, y, Colli) {y-=_subPixel};
					
					//y = round(y);
				//};
				
				//Kill myFloor variable
				//setOnGround(false);
			//};
		};
		
		if instance_exists(myFloorPlat)
		&& (myFloorPlat.object_index == Lazii || object_is_ancestor(myFloorPlat.object_index, Lazii))
		&& 	place_meeting (x, y, Colli) 
		{
			//if Goopy is already stuck in wall, push Goopy down
			//if still stuck, Goopy's dead
			//Don't look too far to not Warp below walls
			var _maxPushDist = 30;
			var _PushedDist = 0;
			var _startY = y;
			while place_meeting (x,y,Colli) && _PushedDist <= _maxPushDist 
			{
				y++;
				_PushedDist++;
			}
			setOnGround(false);
			
			if _PushedDist > _maxPushDist {y = _startY};
		};
		
	//Enemy Movement
	x += xspd;
	if OnGround {
		xspd = 1;
	};

//Sprites Functions

//Walk
//if abs(xspd) > 0 {sprite_index = walkSpr};
//Run
//if abs(xspd) >= moveSpd[1] {sprite_index = runSpr};
//Idle
if xspd == 0 {sprite_index = idleSpr};
//Jump
if !OnGround {sprite_index = jumpSpr};
//Crouch
//if crouching {sprite_index = crouchSpr};

//Mask Collision
//mask_index = maskSpr;
//if crouching{mask_index = crouchSpr};
