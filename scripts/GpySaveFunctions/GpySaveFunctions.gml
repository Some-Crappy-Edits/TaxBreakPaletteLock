	//Saving Rooms is not being included as everything in Ally is global anyway
	//This is being kept as comments in case of future use
	
	
//function save_room()
//{
	//var AllyPos = instance_exists(playAlly)
	
	//var RoomStruct = {
		
		//AllyPosition : AllyPos,
		//AllyData : array_create(AllyPos),
		
	//}
	
	//for (var i = 0; i < AllyPos; i++) {
		
		//var Ally = instance_find(playAlly, i)
		
		//Ally.AllyData[i] = {
			
			//x : Ally.x,
			//y : Ally.y,
			//Inventory : global.inventory,
			//Apl : global.apple,
			//Ol : global.oil,
			//Frg : global.frog,
			//Hrb : global.herb,
			//MrwInteract : global.ConvoDad,
		//}
	//}
	
	//if room == AllyRoom {global.LevelData.AllyR = RoomStruct}
	//if room == MainRoom {global.LevelData.MainR = RoomStruct}
	//if room == Outside {global.LevelData.Outs = RoomStruct}
	//if room == MainRoom10 {global.LevelData.OilR = RoomStruct}
//}

//function load_room()
//{
	//var RoomStruct = 0
	
	//if room == AllyRoom {RoomStruct = global.LevelData.AllyR}
	//if room == MainRoom {RoomStruct = global.LevelData.MainR}
	//if room == Outside {RoomStruct = global.LevelData.Outs}
	//if room == MainRoom10 {RoomStruct = global.LevelData.OilR}
	
	//Failsafe if Roomstruct isnt a struct
	//if !is_struct(RoomStruct) { exit; }
	
	//for (var i = 0; i < RoomStruct.AllyPosition; i++) {
		
		//global.inventory = RoomStruct.AllyData[i].Inventory
		//global.apple = RoomStruct.AllyData[i].Apl
		//global.oil = RoomStruct.AllyData[i].Ol
		//global.herb = RoomStruct.AllyData[i].Hrb
		
		//global.ConvoDad = RoomStruct.AllyData[i].MrwInteract
//}
//}

//function save_rebind() {
	
//	var Rebind = input_player_export(0);

//	var buffer = buffer_create(string_byte_length(Rebind) + 1, buffer_fixed, 1);
//	buffer_write(buffer,buffer_string,Rebind);
	
//	buffer_save(buffer,"allyprotoRebind.sav");
//	buffer_delete(buffer);
	
//}

//function load_rebind() {
	
//	//Load Save
//	var filename = "allyprotoRebind.sav";
//	if !file_exists(filename) { exit; }
	
//	//Load Buffer, get JSON, Delete Buffer
//	var buffer = buffer_load(filename);
//	var json = buffer_read(buffer,buffer_string);
//	buffer_delete(buffer);
	
//	//Make JSON text into data array
//	var Rebind = json_parse(json);
	
//    if !input_player_verify(Rebind,0)
//    {
//        //We've gotten invalid data for some reason, force a reset
//        input_player_reset();
//    }
//    else
//    {
//        //Otherwise load as planned
//        input_player_import(Rebind,0);
//    };
	
//};


function save_settings() {
	
	var saveArray = array_create(0);
	
	global.SettingData.MasterVolume = global.masterVolume;
	global.SettingData.MusicVolume = global.musicVolume;
	global.SettingData.SFXVolume = global.sfxVolume;
	
	array_push(saveArray, global.SettingData);
	
	//(saveArray, global.LevelData)
	
	//Create Save Data
	var filename = "taxbreakprotoSettings.sav";
	var json = json_stringify(saveArray);
	var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
	buffer_write(buffer,buffer_string,json);
	
	buffer_save(buffer,filename);
	buffer_delete(buffer);
	
};

function load_settings() {
	
	//Load Save
	var filename = "taxbreakprotoSettings.sav";
	if !file_exists(filename) { exit; }
	
	//Load Buffer, get JSON, Delete Buffer
	var buffer = buffer_load(filename);
	var json = buffer_read(buffer,buffer_string);
	buffer_delete(buffer);
	
	//Make JSON text into data array
	var loadArray = json_parse(json);
	
	
	global.SettingData = array_get(loadArray,0);
	
	global.masterVolume = global.SettingData.MasterVolume;
	global.musicVolume = global.SettingData.MusicVolume;
	global.sfxVolume = global.SettingData.SFXVolume;
	
	
	
};

function save_score() {
	
	var saveArray = array_create(0);
	
	global.ScoreData.Score = global.HighScore;
	array_push(saveArray, global.ScoreData);
	
	//(saveArray, global.LevelData)
	
	//Create Save Data
	var filename = "taxbreakproto.sav";
	var json = json_stringify(saveArray);
	var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
	buffer_write(buffer,buffer_string,json);
	
	buffer_save(buffer,filename);
	buffer_delete(buffer);
	
};

function load_score() {
	
	//Load Save
	var filename = "taxbreakproto.sav";
	if !file_exists(filename) { exit; }
	
	//Load Buffer, get JSON, Delete Buffer
	var buffer = buffer_load(filename);
	var json = buffer_read(buffer,buffer_string);
	buffer_delete(buffer);
	
	//Make JSON text into data array
	var loadArray = json_parse(json);
	
	
	global.ScoreData = array_get(loadArray,0);
	
	global.HighScore = global.ScoreData.Score;
	
	
};



//function temp_save() {
	
//	var saveArray = array_create(0);

//	global.StatData.AllyX = playAlly.x;
//	global.StatData.AllyY = playAlly.y;
//	global.StatData.AllyFace = playAlly.face;
//	global.StatData.SaveRoom = room_get_name(room);
	
	
//	array_push(saveArray, global.StatData);
	
//	//(saveArray, global.LevelData)
	
//	//Create Save Data
//	var filename = "allyprotoTemp.sav";
//	var json = json_stringify(saveArray);
//	var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
//	buffer_write(buffer,buffer_string,json);
	
//	buffer_save(buffer,filename);
//	buffer_delete(buffer);
	
//};

//function temp_load() {
	
//	//Load Save
//	var filename = "allyprotoTemp.sav";
//	if !file_exists(filename) { exit; }
	
//	//Load Buffer, get JSON, Delete Buffer
//	var buffer = buffer_load(filename);
//	var json = buffer_read(buffer,buffer_string);
//	buffer_delete(buffer);
	
//	//Make JSON text into data array
//	var loadArray = json_parse(json);
	
//	global.StatData = array_get(loadArray,0);
	
//	//Go to Room
//	var LoadRoom = asset_get_index(global.StatData.SaveRoom);
//	room_goto(LoadRoom);
	
//	global.NoPauseButton = false;
	
//	SpeedrunClock.Timer = 99999999;
	
//	if instance_exists(playAlly) {instance_destroy(playAlly)}
	
//	instance_create_layer(global.StatData.AllyX,global.StatData.AllyY,layer,playAlly);
		
//	playAlly.face = global.StatData.AllyFace;
	
//	file_delete(filename);
	
//};
	


//function save_game(fileNum = 0) {
	
//	instance_create_depth(300,600,-9999,SaveTxtStart);
	
//	var saveArray = array_create(0);
	
//	//Saving Rooms is not being included as everything in Ally is global anyway
//	//Save Room Data is kept for future use
	
//	//save_room()
	
//	global.StatData.AllyX = playAlly.x;
//	global.StatData.AllyY = playAlly.y;
//	global.StatData.AllyFace = playAlly.face;
//	global.StatData.SaveRoom = room_get_name(room);
	
//	global.StatData.inventory = global.inventory;
//	global.StatData.apple = global.apple;
//	global.StatData.frog = global.frog;
//	global.StatData.herb = global.herb;
//	global.StatData.oil = global.oil;
	
//	global.StatData.MrwsInteract = global.ConvoDad;
	
//	array_push(saveArray, global.StatData)
	
//	//(saveArray, global.LevelData)
	
//	//Create Save Data
//	var filename = "allyproto" + string(fileNum) + ".sav";
//	var json = json_stringify(saveArray);
//	var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
//	buffer_write(buffer,buffer_string,json);
	
//	buffer_save(buffer,filename);
//	buffer_delete(buffer);
	
//	instance_create_depth(300,600,-9999,SaveTxtEnd);
//}

//function load_game(fileNum = 0) {
	
//	//Load Save
//	var filename = "allyproto" + string(fileNum) + ".sav";
//	if !file_exists(filename) { exit; }
	
//	//Load Buffer, get JSON, Delete Buffer
//	var buffer = buffer_load(filename);
//	var json = buffer_read(buffer,buffer_string);
//	buffer_delete(buffer);
	
//	//Make JSON text into data array
//	var loadArray = json_parse(json);
	
	
//	global.StatData = array_get(loadArray,0);
//	//global.LevelData = array_get(loadArray,1);
	
//	global.inventory = global.StatData.inventory;
//	global.apple = global.StatData.apple;
//	global.frog = global.StatData.frog;
//	global.herb = global.StatData.herb;
//	global.oil = global.StatData.oil;
	
//	SpeedrunClock.Timer = 99999999;
	
//	global.ConvoDad = global.StatData.MrwsInteract;
	
//	global.ReloadGameCheck += 1;
	
//	//Go to Room
//	var LoadRoom = asset_get_index(global.StatData.SaveRoom);
//	room_goto(LoadRoom);
	
//	//GameSave.skipRoomSave = true
	
//	if instance_exists(playAlly) {instance_destroy(playAlly)}
	
//	instance_create_layer(global.StatData.AllyX,global.StatData.AllyY,layer,playAlly);
	
//	global.NoPauseButton = false;
	
//	//playAlly.face = global.StatData.AllyFace
	
//	//global.PauseState = false;
	
//}