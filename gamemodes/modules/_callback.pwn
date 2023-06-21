public OnPlayerConnect(playerid)
{
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

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
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
