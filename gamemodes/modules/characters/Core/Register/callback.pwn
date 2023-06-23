Register_ClickTextDraw(playerid, PlayerText:playertextid)
{
	if(playertextid == RegisterPTD[playerid][1]) // tuoi
	{
		ShowPlayerDialog(playerid, DLG_AGE, DIALOG_STYLE_INPUT, "Cai dat ( Tuoi )","Ban bao nhiu tuoi", ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][2]) // gioi tinh
	{
		ShowPlayerDialog(playerid, DLG_GIOITINH, DIALOG_STYLE_LIST, "Cai dat ( gioi tinh )", "Nam\nNu\nLGBT", ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][3]) // quoc tich
	{
		ShowPlayerDialog(playerid, DLG_NATION, DIALOG_STYLE_LIST, "Cai dat ( quoc tich )", "Viet Nam", ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][4]) // skin
	{
		ShowPlayerMenuRegister(playerid);
		SetPVarInt(playerid, "SelectSkin_", 1);
	}
	if(playertextid == MainRegisterPTD[playerid][6])
	{
		new login_string[1280];
		format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} den voi {3366ff}LS-RP{ffffff}", player_get_name(playerid, 1));
		ShowPlayerDialog(playerid, DLG_REGISTER,DIALOG_STYLE_PASSWORD, "Dang ky", login_string, ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][7]) // lui 
	{
		if(CharSkinSelect[playerid] > 1)
		{
			CharSkinSelect[playerid]-=1;
			PlayerTextDrawSetPreviewModel(playerid, RegisterPTD[playerid][6], CharSkinSelect[playerid]);
			PlayerTextDrawSetString(playerid, RegisterPTD[playerid][9], CharSkinSelect[playerid]);
			ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][6]);
			ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][9]);
		}
		else{
			SendClientMessage(playerid, -1, "Ban khong the thuc hien thao tac");
			HienTextdraw(playerid, "Ban khong the thuc hien thao tac", 3000);
		}
	}
	if(playertextid == RegisterPTD[playerid][8]) // toi 
	{
		if(CharSkinSelect[playerid] < 300)
		{
			CharSkinSelect[playerid]+=1;
			PlayerTextDrawSetPreviewModel(playerid, RegisterPTD[playerid][6], CharSkinSelect[playerid]);
			PlayerTextDrawSetString(playerid, RegisterPTD[playerid][9], CharSkinSelect[playerid]);
			ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][6]);
			ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][9]);
		}
		else{
			SendClientMessage(playerid, -1, "Ban khong the thuc hien thao tac");
			HienTextdraw(playerid, "Ban khong the thuc hien thao tac", 3000);
		}
	}
	if(playertextid == RegisterPTD[playerid][12])
	{
		if(GetPVarInt(playerid, "SelectSkin_")==1)
		{
			Character[playerid][char_Skin] = CharSkinSelect[playerid];
			SendClientMessage(playerid, -1, "[!] Cai dat thanh cong");
			HienTextdraw(playerid, "~g~Cai dat skin thanh cong", 3000);
			for(new skin_loop = 6; skin_loop < 12; skin_loop++){
				PlayerTextDrawHide(playerid, RegisterPTD[playerid][skin_loop]);
			}
			DeletePVar(playerid, "SelectSkin_");
		}
	}
	if(playertextid == RegisterPTD[playerid][5])
	{
		if(GetPVarInt(playerid, "SelectSkin_")==0)
		{
			ShowPlayerDialog(playerid, DLG_NOTE, DIALOG_STYLE_INPUT, "Cai dat ( mo ta nhan vat )", "Nhap mo ta", ">>", "<<");
		}
		else{
			SendClientMessage(playerid, -1, "[!] Ban dang chon skin , khong the thuc hien thao tac khac");
			HienTextdraw(playerid, "~r~Ban dang chon skin , khong the thuc hien thao tac khac", 3000);
		}
	}
	if(playertextid == MainRegisterPTD[playerid][8])
	{
		new pass_reg[128];
		GetPVarString(playerid, "UserPassReg_", pass_reg, sizeof(pass_reg));
		if(isnull(pass_reg))
		{
			HienTextdraw(playerid, "~r~Vui long nhap mat khau", 3000);
		}
		new 
			reg_query[320];
		
		mysql_format(Handle(), reg_query, 320, "INSERT INTO `accounts` (Username, Password) VALUES ('%s', '%s')", player_get_name(playerid, false), pass_reg);
		mysql_tquery(Handle(), reg_query, "OnAccountRegister", "i", playerid);

		new reg_queryzzz[1280], Cache:acc_cache;
		mysql_format(Handle(), reg_queryzzz, sizeof(reg_queryzzz), "SELECT * FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
		acc_cache = mysql_query(Handle(), reg_queryzzz);
		if(cache_num_rows())
		{
			cache_get_value_name_int(0,"id", Character[playerid][char_account_id]);
		}
		cache_delete(acc_cache);
		HidePlayerMainRegister(playerid);
	}
	if(playertextid == RegisterPTD[playerid][11])
	{
		if(isnull(Character[playerid][char_Note])) SendClientMessage(playerid, -1, "[!] Ban chua cai dat mo ta nhan vat");
		if(Character[playerid][char_Age] > 1) SendClientMessage(playerid, -1, "[!] Ban chua cai dat tuoi");
		if(Character[playerid][char_GioiTinh]!=1 && Character[playerid][char_GioiTinh]!=2 && Character[playerid][char_GioiTinh]!=3) SendClientMessage(playerid, -1, "[!] Ban chua cai dat gioi tinh");
		if(Character[playerid][char_Nation] != 1) SendClientMessage(playerid, -1, "[!] Ban chua cai dat quoc tich");
		if(Character[playerid][char_Skin] == 0) SendClientMessage(playerid, -1, "[!] Ban chua cai dat skin");
		new query_reg[1280];
		mysql_format(Handle(), query_reg, sizeof(query_reg), "UPDATE `players` SET \
			`Tuoi` = '%d', \
			`Gender` = '%d', \
			`QuocTich` = '%d',\
			`Skin` = '%d', `Note` = '%s' WHERE `id` = '%d'",
			Character[playerid][char_Age],
			Character[playerid][char_GioiTinh],
			Character[playerid][char_Nation],
			Character[playerid][char_Skin],
			Character[playerid][char_Note],
			Character[playerid][char_account_id]);
		mysql_tquery(Handle(), query_reg, "OnPlayerUpdateInfo", "i", playerid);
	}
	return 1;
}
forward OnPlayerUpdateInfo(playerid);
public OnPlayerUpdateInfo(playerid)
{
	ShowPlayerSpawnMenu(playerid);
	return 1;
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
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
			else Kick(playerid);
		}
		case DLG_NATION:
		{
			if(response)
			{
				Character[playerid][char_Nation] = 1;
				SendClientMessage(playerid, -1, "[!] Ban da cai dat quoc tinh thanh cong ( Viet Nam)");
				HienTextdraw(playerid, "~g~Ok, vat quoc tich cua ban la Viet Nam");
			}
			else Kick(playerid);
		}
		case DLG_AGE:
		{
			if(response)
			{
				if(isnull(inputtext)) HienTextdraw(playerid, "Ban vui long nhap tuoi", 3000);
				else {
					Character[playerid][char_Age] = strval(inputtext);
					SendClientMessage(playerid, -1, "[!] Cai dat tuoi thanh cong");
					HienTextdraw(playerid, "~g~Cai dat tuoi thanh cong", 3000);
				}
			}
			else Kick(playerid);
			
		}
		case DLG_GIOITINH:
		{
			if(response)
			{
				switch(listitem)
				{
					case 0: {
						Character[playerid][char_GioiTinh] = 1;
						SendClientMessage(playerid, -1, "~g~Ok, vay ban la nam");
						HienTextdraw(playerid, "~g~Ok, vay ban la nam", 3000);
					}
					case 1:
					{
						Character[playerid][char_GioiTinh] = 2;
						SendClientMessage(playerid, -1, "~g~Ok, vay ban la nu");
						HienTextdraw(playerid, "~g~Ok, vay ban la nu", 3000);
					}
					case 2:
					{
						Character[playerid][char_GioiTinh] = 3;
						SendClientMessage(playerid, -1, "~g~Ok, vay ban la LGBT");
						HienTextdraw(playerid, "~g~Ok, vay ban la LGBT", 3000);
					}
				}
			}
			else Kick(playerid);
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