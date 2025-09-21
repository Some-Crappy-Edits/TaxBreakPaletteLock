UIControls();

if !os_browser {
	SFXVolume = global.sfxVolume * global.masterVolume;
} else {
	SFXVolume = global.masterVolume;
};

textbox_x = camera_get_view_x( view_camera[0] ) + 37;
textbox_y = camera_get_view_y( view_camera[0] ) + 8;


//setup
if setup = false {
			
	setup = true
	draw_set_font(speaker_font[page])
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
	//Page Loop
	page_number = array_length(text);
	
	for (var p = 0; p < page_number; p++) {
		
		//Count number of characters in page, store it in text_length array
		text_length[p] = string_length(text[p]);
		
		//Character Offset
		
			//Character Left
			
			text_x_offset[p] = 89;
			speaker_x_offset[p] = 25;
			
			//Character Right (Not gonna be used, just adding for Griswald
			if speaker_side[p] = -1 {
				text_x_offset[p] = 0;
				speaker_x_offset[p] = 0;
			};
			
			//No Character
			if speaker_spr[p] = noone {
				text_x_offset[p] = 57
			};
			
		//Setting Individual Letters
		for (var i = 0; i < text_length[p]; i++) 
		{
			var charpos = i+1;
			
			//Store Individual Letters in char array
			char[i,p] = string_char_at(text[p], charpos);
			
			//Get Current Width of Line
			var txtUpTochar = string_copy(text[p], 1, charpos);
			var curtextW = string_width(txtUpTochar) - string_width(char[i,p]);
			
			//Find Last Free Space
			if char[i,p] == " " { last_free_space = charpos+1 };
			
			//Get Line Break  
			if curtextW - line_break_offset[p] > line_width {
				line_break_pos[ line_break_num[p], p] = last_free_space;
				line_break_num[p]++;
				var txtUpToLastSpace = string_copy( text[p], 1, last_free_space);
				var LastFreeSpaceString = string_char_at( text[p], last_free_space);
				line_break_offset[p] = string_width(txtUpToLastSpace) - string_width(LastFreeSpaceString);
			};
		};
		
		//Character Coordinates
		for (var i = 0; i < text_length[p]; i++) {
			var charpos = i+1;
			var txtW = text_x_offset[p] + border;
			var txtH = border;
			
			//Get Current Width of Line
			var txtUpTochar = string_copy(text[p], 1, charpos);
			var curtextW = string_width(txtUpTochar) - string_width(char[i,p]);
			
			var txtLine = 0;
			
			//Compensate String
			for (var fu = 0; fu < line_break_num[p]; fu++) {
				if charpos >= line_break_pos[fu, p]
				{
					var strCopy = string_copy(text[p],line_break_pos[fu,p], charpos - line_break_pos[fu,p]);
					curtextW = string_width(strCopy);
					
					//Record the line each character should be on
					txtLine = fu+1; //Adding 1 since it starts at zero
				};
			};
			
			//Add X and Y to coordinates based on loop
			charX[i,p] = txtW + curtextW;
			charY[i,p] = txtH + txtLine*line_sep;
			
		};	

	};
};
	
//Typewriter
if txt_pause_timer <= 0 {
	
	
	if draw_char < text_length[page] {
		draw_char += text_spd;
		draw_char = clamp(draw_char,0,text_length[page]);
	
		var CheckChar = string_char_at(text[page], draw_char)
	
		if CheckChar == "?"
	    || CheckChar == "," {
			txt_pause_timer = txt_pause
			if !audio_is_playing(snd[page]) {
				var SoundPlay = audio_play_sound(snd[page],8,false);
				audio_sound_gain(SoundPlay,SFXVolume,0);
			}
		} else {
			if snd_count < snd_delay { 
				snd_count++;
			} else {
				snd_count = 0;
				var SoundPlay = audio_play_sound(snd[page],8,false);
				audio_sound_gain(SoundPlay,SFXVolume,0);
			};
		};
	};
} else {
	txt_pause_timer--
}


		
//Flip through pages

if interactKey  {
	//if typing is done
	if draw_char == text_length[page] {
		//Move on to next page
		if page < page_number-1 {
			page++
			draw_char = 0;
		} else {
		//Kill Textbox
		instance_destroy()
		}
	}
}  else if txtskipKey {
	draw_char = text_length[page]
} //else if esctxtKey {
	//instance_destroy()
//};


//draw_nametag = text_length[page];
	
//Draw Textbox
blabber_img += blabber_img_spd
blabber_width = sprite_get_width(blabber_spr[page])
blabber_height = sprite_get_height(blabber_spr[page])

draw_sprite_ext(blabber_spr[page],blabber_img, textbox_x + text_x_offset[page],textbox_y,Bwidth/blabber_width,Bheight/blabber_height,0,c_white,1);

//Draw Icons

if speaker_spr[page] != noone {
	sprite_index = speaker_spr[page]
	if draw_char = text_length[page] { image_index = 0; };
	
	var speakerX = textbox_x + speaker_x_offset[page]
	if speaker_side[page] = -1 {speakerX = sprite_width}

	
	//This is bg textbox, not to be used in Ally
	//draw_sprite_ext(blabber_spr[page],blabber_img,textbox_x + speaker_x_offset[page],textbox_y,sprite_width/blabber_width,sprite_height/blabber_height,0,c_white,1);
	
	//Icon
	draw_sprite_ext(sprite_index,image_index,speakerX,textbox_y,speaker_side[page],1,0,c_white,1);
}

//Draw Nametag

//if nametag[page] != noone {
	
	//var nametagX = textbox_x + speaker_x_offset[page] + 69
	//var nametagY = textbox_y + 30 - 28
	
	///var Pollen8 = make_color_rgb(255,167,165)
	
	//nametag_width = sprite_get_width(nametag_spr[page])
	//nametag_height = sprite_get_height(nametag_spr[page])
	
	//draw_sprite_ext(nametag_spr[page],blabber_img, nametagX,nametagY, sprite_width/nt_width, sprite_height/nt_height,0,c_white,1);
	//draw_text_color(nametagX,nametagY,nametag[page],Pollen8,Pollen8,Pollen8,Pollen8,1);
//}
	
	

//Draw Text New

for (var i = 0; i < draw_char; i++) 
{
	draw_text(charX[i,page] + textbox_x, charY[i,page] + textbox_y, char[i,page]);
};

//Draw Text
//var _drawText = string_copy(text[page],1,draw_char);
//draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border,_drawText,line_sep,line_width)


//Draw Nametag
//var _drawcharText = string_copy(name[CharSelect],1,draw_nametag);
//draw_text_ext(textbox_x + text_x_offset[page] + charborder, textbox_y + charborder - 10,_drawcharText,line_sep,line_width)
