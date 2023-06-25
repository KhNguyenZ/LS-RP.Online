public OnPlayerConnect(playerid)
{
    CreateFadeEffectTextDraw(playerid);
    CreateHienTextDraw(playerid);
	SetPVarString(playerid, "Current_IC_@", player_get_name(playerid));
	return 1;
}


public OnPlayerText(playerid, text[])
{
	if(player_Login(playerid))
	{
		SendRangeMessage(playerid, 10, text);
		Log("log/chat.log", text);
		return 1;
	}
	else SendClientMessage(playerid, -1, "Ban vui long dang nhap");
	return 0;
}


public OnPlayerCommandText(playerid, cmdtext[]) {
	if(!player_Login(playerid))
	{
		SendClientMessage(playerid,0xFF0000FF, "Ban chua dang nhap");
		Log("log/cmd.log", cmdtext);
		return 0;
	}
	return 1;
}
public OnPlayerRequestClass(playerid, classid)
{
 /*   SetSpawnInfo(playerid, 0, 0, 1958.33, 1343.12, 15.36, 269.15, 0, 0, 0, 0, 0, 0);
    SpawnPlayer(playerid);*/
    TogglePlayerSpectating(playerid, true);
    return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(IsOpenSpawnMenu(playerid))
	{
		if(playertextid == SpawnNewbiePTD[playerid][1]) // Home
		{
			HienTextdraw(playerid, "Tinh nang dang doc update, vui long chon vi tri khac.", 5000);
		}
		if(playertextid == SpawnNewbiePTD[playerid][2]) // Hien tai
		{
			SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], Character[playerid][char_last_Pos][0], Character[playerid][char_last_Pos][1],Character[playerid][char_last_Pos][2],Character[playerid][char_last_Pos][3],0, 0,0, 0,0, 0);
			FadeInPlayerScreen(playerid);
			SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
			HidePlayerSpawnMenu(playerid);
			SetPlayerSkin(playerid,Character[playerid][char_Skin]);
			ResetPlayerWeapons(playerid);
			GivePlayerMoney(playerid, Character[playerid][char_Cash]);
			SetPlayerHealth(playerid, Character[playerid][char_health]);
			SetPlayerArmour(playerid, Character[playerid][char_armour]);
			PlayerSetupping[playerid] = 0;
		}
		if(playertextid == SpawnNewbiePTD[playerid][3]) // Newbie Spawn
		{
			SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], 1754.7391,-1895.4344,13.5870,0,0, 0,0, 0,0, 0);
			FadeInPlayerScreen(playerid);
	  		SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
			HidePlayerSpawnMenu(playerid);
			SetPlayerSkin(playerid,Character[playerid][char_Skin]);
			ResetPlayerWeapons(playerid);
			GivePlayerMoney(playerid, Character[playerid][char_Cash]);
			SetPlayerHealth(playerid, Character[playerid][char_health]);
			SetPlayerArmour(playerid, Character[playerid][char_armour]);
			PlayerSetupping[playerid] = 0;
		}
	}
	if(playertextid == LoginPTD[playerid][6])
	{
		new login_string[1280];
		format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}", player_get_name(playerid, 1));
		ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
	}
	if(playertextid == LoginPTD[playerid][8])
	{
		new Pass_str[128];
		GetPVarString(playerid, "UserPass_", Pass_str, sizeof(Pass_str));

		if(isnull(Pass_str))
		{
			SendClientMessage(playerid, -1, "[!] Ban chua nhap mat khau !");
		}

		if(!strcmp(account_get_password(player_get_name(playerid, false)), Pass_str))
		{
			new queryzzz[128], Cache:acc_cache;
			mysql_format(Handle(), queryzzz, sizeof(queryzzz), "SELECT * FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
			acc_cache = mysql_query(Handle(), queryzzz);
			if(cache_num_rows())
			{
				cache_get_value_name_int(0,"id", Character[playerid][char_account_id]);
			}
			cache_delete(acc_cache);
			character_Select(playerid);
			HideLoginPTD(playerid);
		}
		else 
		{
            PlayerTextDrawSetString(playerid, LoginPTD[playerid][6], "Sai mat khau");
            HienTextdraw(playerid, "~r~Ban da nhap sai mat khau, vui long nhap lai.", 5000);
            ReloadPlayerTextDraw(playerid, LoginPTD[playerid][6]);
		}
	}
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DLG_LOGIN:
		{
			if(response)
			{
				if(isnull(inputtext))
				{
					new login_string[128];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}\nVui long nhap mat khau !", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
				}
				if(strlen(inputtext) < 64)
				{
					SetPVarString(playerid, "UserPass_", inputtext);
					new pass_string[128];
					for(new pass_hide = 0 ; pass_hide < strlen(inputtext); pass_hide++)
					{
						strcat(pass_string, ".");
					}
					PlayerTextDrawSetString(playerid, LoginPTD[playerid][6], pass_string);
					ReloadPlayerTextDraw(playerid, LoginPTD[playerid][6]);
				}
				else
				{
					new login_string[128];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}\nMat khau qua dai !", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
				}
			}
		}
	}
}
<<<<<<< Updated upstream
=======
public OnPlayerUpdate(playerid)
{
	UpdateTextTime(playerid);
	return 1;
}
public OnPlayerSpawn(playerid)
{
	ShowPlayerTextTime(playerid);
	SetPlayerSkin(playerid,Character[playerid][char_Skin]);
	ResetPlayerWeapons(playerid);
	GivePlayerMoney(playerid, Character[playerid][char_Cash]);
	SetPlayerHealth(playerid, Character[playerid][char_health]);
	SetPlayerArmour(playerid, Character[playerid][char_armour]);
	SetPlayerVirtualWorld(playerid, Character[playerid][char_VW]);
	SetPlayerInterior(playerid, Character[playerid][char_Interior]);
	return 1;
}
forward OnPlayerLoad(playerid);
public OnPlayerLoad(playerid)
{
	TogglePlayerSpectating(playerid, 0);
	
	new sdm[1280];
	mysql_format(Handle(), sdm, sizeof(sdm), "[{212c58}LS-RP{ffffff}] Chao mung ban den voi may chu, {0066ff}%s.", player_get_name(playerid));
	SendClientMessage(playerid, -1, sdm);
	PlayerSetupping[playerid] = 0;
	if(Character[playerid][char_Admin] > 0)
	{
		new msgzz[1280];
		format(msgzz, sizeof(msgzz),"Xin Chao {0000EE}%s{FFFFFF}, ban la %s.", player_get_name(playerid), GetAdmin(playerid));
		SendClientMessage(playerid, -1, msgzz);
	}

	if(isnull(Character[playerid][char_Note])){
		SendClientMessage(playerid, -1, "[!] Ban chua cai dat mo ta nhan vat");
		ShowPlayerMenuRegister(playerid);
	}

	if(Character[playerid][char_Birthday][0] <= 0 || Character[playerid][char_Birthday][1] <= 0 || Character[playerid][char_Birthday][2] <= 0) {
		SendClientMessage(playerid, -1, "[!] Ban chua cai dat tuoi");
		ShowPlayerMenuRegister(playerid);
	}
	if(Character[playerid][char_GioiTinh]!=1 && Character[playerid][char_GioiTinh]!=2 && Character[playerid][char_GioiTinh]!=3) {
		SendClientMessage(playerid, -1, "[!] Ban chua cai dat gioi tinh");
		ShowPlayerMenuRegister(playerid);
	}
	if(Character[playerid][char_Nation] != 1) {
		SendClientMessage(playerid, -1, "[!] Ban chua cai dat quoc tich");
		ShowPlayerMenuRegister(playerid);
	}
	if(Character[playerid][char_Skin] == 0) {
		SendClientMessage(playerid, -1, "[!] Ban chua cai dat skin");
		ShowPlayerMenuRegister(playerid);
	}

	return 1;
}
forward ForceSpawn(playerid);
public ForceSpawn(playerid)
{
	SendClientMessage(playerid, -1, "Hi");
	SpawnPlayer(playerid);
}

public OnPlayerRequestClass(playerid, classid)
{
	if(Character[playerid][char_Login] == true){
		TogglePlayerSpectating(playerid, 0);
		SetTimerEx("ForceSpawn", 1000,0, "i", playerid);
	}
	if(Character[playerid][char_Login] == false)
	{
		TogglePlayerSpectating(playerid, 1);
		SetPlayerJoinCamera(playerid);
	}
	return 1;
}
>>>>>>> Stashed changes
