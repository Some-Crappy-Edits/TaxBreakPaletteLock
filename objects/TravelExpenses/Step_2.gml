//	#region

//	var Travel1 = noone;
//	var Travel2 = noone;
//	var Travel3 = noone;
//	var List = ds_list_create();
//	var TravelCheck = instance_place_list(x,bbox_top,TravelExpenses,List,false)
	
//	if StopSign = 1 && DeadBlock = 1 && instance_furthest(x,y,TravelExpenses) {
//		for (var i = 0; i < TravelCheck; i++) {
//			var ListInst = List[| i]
	
//			if ListInst.bbox_top + ListInst.bbox_bottom {
		
//				if !instance_exists(Travel1) || ListInst.bbox_top < Travel1.bbox_top {
//					Travel1 = ListInst;
//				};
//			};
			
//			if Travel1.bbox_top + Travel1.bbox_bottom {
//				if !instance_exists(Travel2) || Travel1.bbox_top < Travel2.bbox_top {
//					Travel2 = ListInst;
//				};
//			};
			
//			if ListInst.bbox_top + ListInst.bbox_bottom {
//				if !instance_exists(Travel3) || Travel2.bbox_top < Travel3.bbox_top {
//					Travel3 = ListInst;
//				};
//			};
			
			
//		};
//	};

//	ds_list_destroy(List);

//#endregion

//if instance_exists(Travel1) {
//		ComboHit1 = 1;
//	};

//if instance_exists(Travel2) {
//		ComboHit2 = 1;
//	};

//if instance_exists(Travel3) {
//		ComboHit3 = 1;
//	};