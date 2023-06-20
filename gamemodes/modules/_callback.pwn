public OnPlayerConnect(playerid)
{
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
	if(IsOpenLoginPTD(playerid))
	{
		if(playertextid == LoginPTD[playerid][6])
		{
			new login_string[1280];
			format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}", player_get_name(playerid, 1));
			ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
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
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}\nVui long nhap mat khau", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
				}
				else if(!strcmp(account_get_password(player_get_name(playerid, false)), inputtext))
				{
					new queryzzz[128], Cache:acc_cache;
					mysql_format(Handle(), queryzzz, sizeof(queryzzz), "SELECT * FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
					acc_cache = mysql_query(Handle(), queryzzz);
					if(cache_num_rows())
					{
						cache_get_value_name_int(0,"id", Character[playerid][char_account_id]);
					}
					cache_delete(acc_cache);
					HideLoginPTD(playerid);
					character_Select(playerid);
				}
				else 
				{
					new login_string[128];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}\n{FF0000FF}Mat khau sai !{FFFFFF}", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
				}
			}
		}
	}
}