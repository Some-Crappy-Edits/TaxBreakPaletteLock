function text_default_align() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	blabber_spr[page_number] = blabber_main;
	speaker_font[page_number] = dialogue_font;
	//nametag_spr[page_number] = blabber_nametag;
	speaker_spr[page_number] = noone;
	speaker_idle_spr[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = TypeClick;
	//nametag[page_number] = "";
	
	game_crash = noone;
};


/// @param [character]
function text_scr(_text){
	
	text_default_align()
	
	text[page_number] = _text
	
	//Get Character Info
	if argument_count > 1 {
		switch(argument[1]) {
			
			case "Ally":
			
			speaker_spr[page_number] = allydialog;
			snd[page_number] = AllyTxt;
			//nametag[page_number] = "Ally";
			
			break
			
			case "Ally Nervous":
			
			speaker_spr[page_number] = allydialognervous;
			snd[page_number] = AllyTxt;
			//nametag[page_number] = "Ally";
			
			break
			
			case "Ally Shock":
			
			speaker_spr[page_number] = allydialogshocked;
			snd[page_number] = AllyTxt;
			//nametag[page_number] = "Ally";
			
			break
			
			case "Ally Bruh":
			
			speaker_spr[page_number] = allydialogwtf;
			snd[page_number] = AllyTxt;
			//nametag[page_number] = "Ally";
			
			break

			case "Ally Curious":
			
			speaker_spr[page_number] = allydialogcurious;
			snd[page_number] = AllyTxt;
			//nametag[page_number] = "Ally";
			
			break
			
			case "Ally Doe":
			
			speaker_spr[page_number] = allydialogdoe;
			snd[page_number] = AllyTxt;
			//nametag[page_number] = "Ally";
			
			break


			case "MRW":
			
			speaker_spr[page_number] = marrowsdialog;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			case "MRW Serious":
			
			speaker_spr[page_number] = marrowsdialogserious;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			
			case "MRW Bruh":
			
			speaker_spr[page_number] = marrowsdialogbruh;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			
			case "MRW Pissed":
			
			speaker_spr[page_number] = marrowsdialogangry;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			case "MRW Hands 1":
			
			speaker_spr[page_number] = marrowsdialoghands1;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			case "MRW Hands 2":
			
			speaker_spr[page_number] = marrowsdialoghands2;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			//Outside NPCs
			
			
			
			case "Lil Shit 1":
			
			speaker_spr[page_number] = lilshit1dialog;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			case "Lil Shit 2":
			
			speaker_spr[page_number] = lilshit2dialog;
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			break
			
			case "Oil":
		
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			case "Teen Girl":
		
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			
			case "Teen Boy":
		
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			case "Fat Man":
		
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			
			case "Skinny Man":
		
			snd[page_number] = MsMarrowsTxt;
			//nametag[page_number] = "Ms.Marrows";
			
			
			
			
			
			
			//Lucky Rabbit Missions
			
			//Ally in Lucky Missions
			
				case "AllyL":
			
				speaker_spr[page_number] = L_allydialog;
				snd[page_number] = AllyTxt;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ally";
			
				break
			
				case "AllyL Worried":
			
				speaker_spr[page_number] = L_allydialogworried;
				snd[page_number] = AllySecretTxt;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ally";
			
				break
			
			//Lucky Intro

				case "Lucky":
			
				snd[page_number] = LuckyTxt;
				blabber_spr[page_number] = Sprite117;
				speaker_font[page_number] = html_dialogue_font;
				//nametag[page_number] = "Ms.Marrows";
			
				break
			
			//Queen Room NPCs

				case "Spirit Man":
			
				snd[page_number] = LuckyTxt;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ms.Marrows";
				
				break;

			    case "Jumpscare":
			
				snd[page_number] = jumpscarenormal;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ms.Marrows";
			
				break
			
				case "Spirit Boy":
			
				snd[page_number] = LuckyTxt;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ms.Marrows";
			
				break
			
			
				case "Spirit Girl":
			
				snd[page_number] = LuckyTxt;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ms.Marrows";
			
				break
			
			
				case "Spirit Marrows":
			
				snd[page_number] = MsMarrowsTxt;
				blabber_spr[page_number] = blabber_lucky;
				//nametag[page_number] = "Ms.Marrows";
			
				break
			
			
		}
	};

	page_number++
};