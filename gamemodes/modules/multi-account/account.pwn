const MAX_PASSWORD_LEN = 32;

#include <YSI_Coding\y_hooks>
hook OnGameModeInit()
{
	return 1;
}

hook OnPlayerConnect(playerid) 
{
	ResetPlayerMoney(playerid);
	Clear_Chat(playerid);
	new query[1280];
	format(query, sizeof(query), "SELECT `Username`, `Password` FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
	mysql_tquery
	(
		Handle(), query,
		"OnAccountCheck",
		"d",
		playerid
	);
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) 
{
	new result = 0;
	switch(dialogid) 
	{
		case dialog_Register: // Dang ky
		{
			result = response ? 1 : -1;
			if(response) 
			{
				new 
					len = strlen(inputtext);
				
				if(len >= MAX_PASSWORD_LEN || inputtext[0] == EOS || len < 6) 
				{
					HienTextdraw(playerid, "Do dai mat khau tu 6 den 32 ki tu", 10000);
					connectForm_Show(playerid, dialog_Register);
				}
				else 
				{
					new 
						query[320];
					
					mysql_format(Handle(), query, 320, "INSERT INTO `accounts` (Username, Password) VALUES ('%s', '%s')", player_get_name(playerid, false), inputtext);
					mysql_tquery(Handle(), query, "OnAccountRegister", "i", playerid);
					new queryzzz[1280], Cache:acc_cache;
					mysql_format(Handle(), queryzzz, sizeof(queryzzz), "SELECT * FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
					acc_cache = mysql_query(Handle(), queryzzz);
					if(cache_num_rows())
					{
						cache_get_value_name_int(0,"id", Character[playerid][char_account_id]);
					}
					cache_delete(acc_cache);
				}
			}
		}
	}
	if(result == -1) Kick(playerid);
}

connectForm_Show(const playerid, const _case)
{
	if(_case == dialog_Login) 
	{
		ShowPlayerDialog(playerid, dialog_Login, 3, "Nhap mat khau","{ffffff}Vui long nhap mat khau tai khoan cua ban.{ffffff}", "Xac nhan", "Huy bo");
	}
	else 
	{
		ShowPlayerDialog(playerid, dialog_Register, 3, "Dang ky","{ffffff}Chao mung den voi may chu {3366ff}OMPVN{ffffff}\n\
			Vui long nhap mat khau dang ky.", "Dang ky", "Thoat");		
	}
}

account_get_password(const username[])
{
	new 
		Cache:iCache, Key[129] = "Invalid User", query[128];

	mysql_format
	(
		Handle(), query, sizeof(query), 
		"SELECT `Password` FROM `accounts` WHERE `Username` = '%s'", username
	);
	iCache = mysql_query(Handle(), query);
	if(cache_num_rows())
	{
		cache_get_value_name(0, "Password", Key);
	}
	cache_delete(iCache);
	return Key;
}

forward OnAccountCheck(const playerid);
public OnAccountCheck(const playerid) 
{
	if(cache_num_rows()) 
	{
		ShowLoginPTD(playerid);
	}
	else 
	{
		// connectForm_Show(playerid, dialog_Register);
		ShowPlayerMainRegister(playerid);
	}
	return 1;
}

forward OnAccountRegister(const playerid);
public OnAccountRegister(const playerid) 
{
	character_Select(playerid);
	HienTextdraw(playerid, "Dang ky tai khoan thanh cong.", 5000);
	return 1;
}
