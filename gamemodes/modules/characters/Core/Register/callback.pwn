hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DLG_REG_DAY:
		{
			if(response){
				Character[playerid][char_Birthday][0] = listitem+1;
				new reg_day[1280], fm_reg[1280];
				for(new i = 1 ; i < 12 ; i++)
				{
					format(fm_reg, sizeof(fm_reg), "%d\n", i);
					strcat(reg_day, fm_reg);
				}
				strcat(reg_day, "12");
				ShowPlayerDialog(playerid, DLG_REG_MONTH, DIALOG_STYLE_LIST, "Cai dat thang sinh", reg_day, ">>", "<<");

			}
			else{
				new reg_day[1280], fm_reg[1280];
				for(new i = 1 ; i < 31 ; i++)
				{
					format(fm_reg, sizeof(fm_reg), "%d\n", i);
					strcat(reg_day, fm_reg);
				}
				strcat(reg_day, "31");
				ShowPlayerDialog(playerid, DLG_REG_DAY, DIALOG_STYLE_LIST, "Cai dat ngay sinh", reg_day, ">>", "<<");
			}
		}
		case DLG_REG_MONTH:
		{
			if(response)
			{
				Character[playerid][char_Birthday][1] = listitem+1;
				new reg_day[1280], fm_reg[1280];
				for(new i = 2010 ; i > 1980 ; i--)
				{
					format(fm_reg, sizeof(fm_reg), "%d\n", i);
					strcat(reg_day, fm_reg);
				}
				strcat(reg_day, "1980");
				ShowPlayerDialog(playerid, DLG_REG_YEAR, DIALOG_STYLE_LIST, "Cai dat nam sinh", reg_day, ">>", "<<");
			}
			else{
				new reg_day[1280], fm_reg[1280];
				for(new i = 1 ; i < 12 ; i++)
				{
					format(fm_reg, sizeof(fm_reg), "%d\n", i);
					strcat(reg_day, fm_reg);
				}
				strcat(reg_day, "12");
				ShowPlayerDialog(playerid, DLG_REG_MONTH, DIALOG_STYLE_LIST, "Cai dat thang sinh", reg_day, ">>", "<<");
			}
		}
		case DLG_REG_YEAR:
		{
			if(response)
			{
				Character[playerid][char_Birthday][2] = 2010-listitem;
				SendClientMessage(playerid, -1, "[!] Cai dat ngay sinh nhan vat thanh cong");
				HienTextdraw(playerid, "~g~Cai dat ngay sinh nhan vat thanh cong", 3000);
			}
			else {
				new reg_day[1280], fm_reg[1280];
				for(new i = 2010 ; i > 1980 ; i--)
				{
					format(fm_reg, sizeof(fm_reg), "%d\n", i);
					strcat(reg_day, fm_reg);
				}
				strcat(reg_day, "1980");
				ShowPlayerDialog(playerid, DLG_REG_YEAR, DIALOG_STYLE_LIST, "Cai dat nam sinh", reg_day, ">>", "<<");
			}
		}
		case DLG_SKIN:
		{
			if(response){

				PlayerTextDrawSetPreviewModel(playerid, RegisterPTD[playerid][8], strval(inputtext));
				ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][8]);

				Character[playerid][char_Skin] = strval(inputtext);
				SendClientMessage(playerid, -1, "[!] Cai dat skin nhan vat thanh cong");
				HienTextdraw(playerid, "~g~Cai dat skin nhan vat thanh cong", 3000);
			}
			else Kick(playerid);
		}
		case DLG_NOTE:
		{
			if(response)
			{
				if(isnull(inputtext))
				{
					SendClientMessage(playerid, -1, "[!] Vui long nhap mo ta nhan vat");
					HienTextdraw(playerid, "~r~Vui long nhap mo ta nhan vat", 3000);
				}
				strcat(Character[playerid][char_Note], inputtext);
				SendClientMessage(playerid, -1, "[!] Cai dat mo ta nhan vat thanh cong");
				HienTextdraw(playerid, "~g~Cai dat mo ta nhan vat thanh cong", 3000);
			}
			else {
				ShowPlayerDialog(playerid, DLG_NOTE, DIALOG_STYLE_INPUT, "Cai dat ( mo ta nhan vat )", "Nhap mo ta", ">>", "<<");
			}
		}
		case DLG_NATION:
		{
			if(response)
			{
				Character[playerid][char_Nation] = 1;
				SendClientMessage(playerid, -1, "[!] Ban da cai dat quoc tinh thanh cong ( Viet Nam)");
				HienTextdraw(playerid, "~g~Ok, vat quoc tich cua ban la Viet Nam");
			}
			else{
				ShowPlayerDialog(playerid, DLG_NATION, DIALOG_STYLE_LIST, "Cai dat ( quoc tich )", "Viet Nam", ">>", "<<");
			}
		}
		case DLG_GIOITINH:
		{
			if(response)
			{
				switch(listitem)
				{
					case 0: {
						Character[playerid][char_GioiTinh] = 1;
						SendClientMessage(playerid, -1, "Ok, vay ban la nam");
						HienTextdraw(playerid, "~g~Ok, vay ban la nam", 3000);
					}
					case 1:
					{
						Character[playerid][char_GioiTinh] = 2;
						SendClientMessage(playerid, -1, "Ok, vay ban la nu");
						HienTextdraw(playerid, "~g~Ok, vay ban la nu", 3000);
					}
					case 2:
					{
						Character[playerid][char_GioiTinh] = 3;
						SendClientMessage(playerid, -1, "Ok, vay ban la LGBT");
						HienTextdraw(playerid, "~g~Ok, vay ban la LGBT", 3000);
					}
				}
			}
			else {
				ShowPlayerDialog(playerid, DLG_GIOITINH, DIALOG_STYLE_LIST, "Cai dat ( gioi tinh )", "Nam\nNu\nLGBT", ">>", "<<");
			}
		}
		case DLG_REGISTER:{
			if(response) {
				if(isnull(inputtext))
				{
					new login_string[1280];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} den voi {3366ff}LS-RP{ffffff}\n{FF0000}Vui long nhap mat khau", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_REGISTER,DIALOG_STYLE_PASSWORD, "Dang ky", login_string, ">>", "<<");
					HienTextdraw(playerid, "~r~Vui long nhap mat khau", 3000);
				}
				if(strlen(inputtext) < 6 || strlen(inputtext) > 64)
				{
					new login_string[1280];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} den voi {3366ff}LS-RP{ffffff}\n{FF0000}Mat khau phai dai hon 6 ki tu va ngan hon 64 ki tu", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_REGISTER,DIALOG_STYLE_PASSWORD, "Dang ky", login_string, ">>", "<<");
					HienTextdraw(playerid, "~r~Mat khau phai dai hon 6 ki tu va ngan hon 64 ki tu", 3000);
				}
				else{
					SetPVarString(playerid, "UserPassReg_", inputtext);
					new pass_string[128];
					for(new pass_hide = 0 ; pass_hide < strlen(inputtext); pass_hide++)
					{
						strcat(pass_string, ".");
					}
					PlayerTextDrawSetString(playerid, MainRegisterPTD[playerid][6], pass_string);
					ReloadPlayerTextDraw(playerid, MainRegisterPTD[playerid][6]);
				}
			}
			else Kick(playerid);
		}
	}
}