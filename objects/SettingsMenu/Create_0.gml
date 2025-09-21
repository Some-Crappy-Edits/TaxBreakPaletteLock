SwapConfigMode = 0;
SwapConfigTick = 0
SwapConfigTimer = 0;
SwapConfigResult = 10;

SwapConfig = "";

StopCheck = 0;

pos = 0;
posH = 0;
page = 0;

//Main Settings Menu

sprite[0, 0] = SaveBtn; //Volume
sprite[0, 1] = RtrnMenuBtn; //Gamepad Rebind
sprite[0, 2] = ExitBtn; //Exit back to pause

Xposition[0, 0] = 80;
Xposition[0, 1] = 100;
Xposition[0, 2] = 80;

Yposition[0, 0] = 450;
Yposition[0, 1] = 500;
Yposition[0, 2] = 550;

//Volume

sprite[1, 0] = SaveBtn; //Master Volume
sprite[1, 1] = RtrnMenuBtn; //Music Volume
sprite[1, 2] = ExitBtn; //SFX Volume
sprite[1, 3] = RtrnMenuBtn; //Return to Menu

Xposition[1, 0] = 80;
Xposition[1, 1] = 100;
Xposition[1, 2] = 80;
Xposition[1, 3] = 80;

Yposition[1, 0] = 450;
Yposition[1, 1] = 500;
Yposition[1, 2] = 550;
Yposition[1, 3] = 600;

//Controller Rebind Options
sprite[2, 0] = SaveBtn; //Remap
sprite[2, 1] = SaveRebindBtn; //Save Remap
sprite[2, 2] = DeleteRebindBtn; //Delete Remap
sprite[2, 3] = RtrnMenuBtn; //Return to Menu

Xposition[2, 0] = 80;
Xposition[2, 1] = 100;
Xposition[2, 2] = 80;
Xposition[2, 3] = 80;

Yposition[2, 0] = 450;
Yposition[2, 1] = 500;
Yposition[2, 2] = 550;
Yposition[2, 3] = 600;

//Controller Rebind

sprite[3, 0] = UpKBtn; //Up
sprite[3, 1] = DownKBtn; //Down
sprite[3, 2] = LeftKBtn; //Left
sprite[3, 3] = RightKBtn; //Right
sprite[3, 4] = RunKBtn; //Run
sprite[3, 5] = JumpKBtn; //Jump
sprite[3, 6] = ActionKBtn; //Action
sprite[3, 7] = PauseKBtn; //Pause
sprite[3, 8] = MenuActionKBtn; //Menu Action
sprite[3, 9] = TextSkipKBtn; //Fast Text
sprite[3, 10] = RtrnMenuBtn; //Return to Menu

buttonMap[0] = "up"; //Up
buttonMap[1] = "down"; //Down
buttonMap[2] = "left"; //Left
buttonMap[3] = "right"; //Right
buttonMap[4] = "run"; //Run
buttonMap[5] = "jump"; //Jump
buttonMap[6] = "action"; //Action
buttonMap[7] = "pause"; //Pause
buttonMap[8] = "menuaction"; //Menu Action
buttonMap[9] = "fasttext"; //Fast Text
buttonMap[10] = "ignore"; //Filler for array

buttonMapAlt[0] = "up"; //Walk Left
buttonMapAlt[1] = "down"; //Walk Right
buttonMapAlt[2] = "left"; //Wal
buttonMapAlt[3] = "right"; //Jump

Xposition[3, 0] = 100;
Xposition[3, 1] = 100;
Xposition[3, 2] = 100;
Xposition[3, 3] = 100;
Xposition[3, 4] = 700;
Xposition[3, 5] = 700;
Xposition[3, 6] = 700;
Xposition[3, 7] = 700;
Xposition[3, 8] = 700;
Xposition[3, 9] = 700;
Xposition[3, 10] = 90;


Yposition[3, 0] = 100;
Yposition[3, 1] = 200;
Yposition[3, 2] = 300;
Yposition[3, 3] = 400;
Yposition[3, 4] = 100;
Yposition[3, 5] = 200;
Yposition[3, 6] = 300;
Yposition[3, 7] = 400;
Yposition[3, 8] = 500;
Yposition[3, 9] = 600;
Yposition[3, 10] = 600;


sprite_length = array_length(sprite);
rebind_length = array_length(buttonMap);

alt_length = array_length(buttonMapAlt);