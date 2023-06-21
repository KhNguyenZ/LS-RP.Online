#include <YSI\y_hooks>

hook OnPlayerDisconnect(playerid, reason)
{
	if(player_Login(playerid))
	{
		new 
			query[300] = "UPDATE `players` SET";
		
		new 
			Float:X, Float:Y, Float:Z, Float:R;
		
		GetPlayerPos(playerid, X, Y, Z);
		GetPlayerFacingAngle(playerid, R);

		mysql_format(MySQL:Handle(), query, sizeof(query), "%s PosX = '%f',", query, X);
		mysql_format(Handle(), query, sizeof(query), "%s PosY = '%f',", query, Y);
		mysql_format(Handle(), query, sizeof(query), "%s PosZ = '%f',", query, Z);
		mysql_format(Handle(), query, sizeof(query), "%s PosR = '%f',", query, R);
		mysql_format(Handle(), query, sizeof(query), "%s Health = '%f',", query, Character[playerid][char_health]);
		mysql_format(Handle(), query, sizeof(query), "%s Armor = '%f',", query, Character[playerid][char_armour]);
		mysql_format(Handle(), query, sizeof(query), "%s TanSo = '%d',", query, Character[playerid][char_tanso]);
		mysql_format(Handle(), query, sizeof(query), "%s Cash = '%d',", query, Character[playerid][char_Cash]);
		mysql_format(Handle(), query, sizeof(query), "%s AdminLevel = '%d',", query, Character[playerid][char_Admin]);
		mysql_format(Handle(), query, sizeof(query), "%s Skin = %d WHERE `id` = '%d' LIMIT 1", query, Character[playerid][char_Skin], Character[playerid][char_player_id]);
		if(mysql_tquery(Handle(), query))
		{
			Character[playerid][char_Login] = false;
			printf("Character Save: %s | AccountID: %d", player_get_name(playerid), Character[playerid][char_player_id]);
		}
		else printf("Character Save Error: %s",player_get_name(playerid));
	}
	return 1;
}

hook OnPlayerSpawn(playerid)
{
	if(PlayerSetupping[playerid] == 1) {


		new sdm[1280];
		mysql_format(Handle(), sdm, sizeof(sdm), "Chao mung den voi may chu, {0066ff}%s", player_get_name(playerid));
		SendClientMessage(playerid, -1, sdm);
		HienTextdraw(playerid, sdm, 5000);
		PlayerSetupping[playerid] = 0;
		SetPlayerVirtualWorld(playerid, 0);
	}
	if(Character[playerid][char_Admin] > 0)
	{
		new msgzz[1280];
		format(msgzz, sizeof(msgzz),"Xin Chao {0000EE}%s{FFFFFF} , Ban dang la %s", player_get_name(playerid), GetAdmin(playerid));
		SendClientMessage(playerid, -1, msgzz);		
	}
	return 1;
}