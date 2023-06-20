#include <a_samp>
#include <YSI_Coding\y_hooks>



stock GetAdmin(playerid)
{
	new name[1280];
	switch(Character[playerid][char_Admin])
	{
		case 1: name = "{0000EE}Admin Thu Viec{FFFFFF}";
		case 2: name = "{0000EE}Admin Chinh Thuc{FFFFFF}";
		case 3: name = "{0000EE}Ban Dieu Hanh (Mod){FFFFFF}";
		case 4: name = "{0000EE}Ban Dieu Hanh Tong{FFFFFF}";
		case 5: name = "{FFFF66}Thanh Vien BQT Cap Cao";
		case 6: name = "{FF0000}Porject Mangeer{FFFFFF}";
		case 7: name = "{FF0000}Founder{FFFFFF}";
	}
	return name;
}

hook OnPlayerConnect(playerid)
{
	return 1;
}

stock SendAdminMessage(playerid, string[], level_admin)
{
	for(new i = 0 ; i < MAX_PLAYERS ; i++)
	{
		if(IsPlayerConnected(i) &&Character[i][char_Admin] >= level_admin)
		{
			new msgadmin[1280];
			format(msgadmin, sizeof(msgadmin),"[Admin Channel]: %s {0000EE}%s : %s", GetAdmin(playerid), player_get_name(playerid), string);
			SendClientMessage(playerid, 0x0000EEFF, msgadmin);
		}
	}
	return 1;
}

CMD:ac(playerid, params[])
{
	if(isnull(params)) return SendClientMessage(playerid, -1, "SU DUNG: /ac [chat]");

	if(Character[playerid][char_Admin] > 0)
	{
		SendAdminMessage(playerid, params, 1);
	}
	else SendClientMessage(playerid, -1, "Ban khong phai admin");
	return 1;
}

CMD:makeao(playerid, params[])
{
	Character[playerid][char_Admin] = strval(params);
	return 1;
}

stock CheckAdmin(playerid, level)
{
	if(Character[playerid][char_Admin] >= level) return 1;
	else return 0;
}