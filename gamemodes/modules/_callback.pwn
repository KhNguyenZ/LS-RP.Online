public OnPlayerConnect(playerid)
{
    CreateFadeEffectTextDraw(playerid);
    CreateHienTextDraw(playerid);
	SetPVarString(playerid, "Current_IC_@", player_get_name(playerid));
	TogglePlayerSpectating(playerid, 0);
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
// public OnPlayerRequestClass(playerid, classid)
// {
//     TogglePlayerSpectating(playerid, true);
//     return 1;
// }

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	for(new char_click = 4 ; char_click < 7; char_click++)
	{
		if(playertextid == SelectCharPTD[playerid][char_click])
		{
			if(IsLoadChar(playerid, char_click-4))
			{
				SetPVarInt(playerid,"CharSelected_", char_click-4);
				
				HideCharacterSelect(playerid);
				CreateActorSelect(playerid,char_click-4, CharSelectInfo[playerid][cs_skin][char_click-4]);
				ShowInfoCharacter(playerid, char_click-4);
			}
			else
			{
				HideCharacterSelect(playerid);
				SetPVarInt(playerid, "CharSelect_",char_click-4);
				ShowPlayerDialog(playerid, dialog_charCreate, DIALOG_STYLE_INPUT, "Tao nhan vat.", "Nhap ten nhan vat ban muon tao.", "Tao", "Tro lai");				
			}
		}
	}
	if(playertextid == InfoCharPTD[playerid][7])
	{
		new Char_Selected = GetPVarInt(playerid,"CharSelected_");
		HideInfoCharacter(playerid);

		SetPlayerName(playerid, character_Name_data[playerid][Char_Selected]);
				
		new query[240];
		format(query, sizeof(query), "SELECT * FROM `players` WHERE `PlayerName` = '%s'", player_get_name(playerid, false));
		mysql_tquery(Handle(), query, "OnCharacterLoad", "i", playerid);
		SetPVarInt(playerid,"CharSelected_", 1);
	}
	// if(IsOpenSpawnMenu(playerid))
	// {
	if(playertextid == SpawnLSRP[playerid][1]) // Home
	{
		HienTextdraw(playerid, "Tinh nang dang doc update, vui long chon vi tri khac.", 5000);
	}
	if(playertextid == SpawnLSRP[playerid][2]) // Hien tai
	{
		SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], Character[playerid][char_last_Pos][0], Character[playerid][char_last_Pos][1],Character[playerid][char_last_Pos][2],Character[playerid][char_last_Pos][3],0, 0,0, 0,0, 0);
		FadeOutPlayerScreen(playerid);
		SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
		HidePlayerSpawnMenu(playerid);
		PlayerSetupping[playerid] = 0;
	}
	if(playertextid == SpawnLSRP[playerid][3]) // Newbie Spawn
	{
		SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], 1754.7391,-1895.4344,13.5870,0,0, 0,0, 0,0, 0);
		FadeOutPlayerScreen(playerid);
  		SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
		HidePlayerSpawnMenu(playerid);
		PlayerSetupping[playerid] = 0;
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
