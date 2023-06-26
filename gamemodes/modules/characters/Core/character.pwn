#include <YSI_Coding\y_hooks>

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
		mysql_format(Handle(), query, sizeof(query), "%s PosA = '%f',", query, R);
		mysql_format(Handle(), query, sizeof(query), "%s Health = '%f',", query, Character[playerid][char_health]);
		mysql_format(Handle(), query, sizeof(query), "%s Armour = '%f',", query, Character[playerid][char_armour]);
		mysql_format(Handle(), query, sizeof(query), "%s TanSo = '%d',", query, Character[playerid][char_tanso]);
		mysql_format(Handle(), query, sizeof(query), "%s Cash = '%d',", query, Character[playerid][char_Cash]);
		mysql_format(Handle(), query, sizeof(query), "%s AdminLevel = '%d',", query, Character[playerid][char_Admin]);
		mysql_format(Handle(), query, sizeof(query), "%s Interior = '%d',", query, Character[playerid][char_Interior]);
		mysql_format(Handle(), query, sizeof(query), "%s VW = '%d',", query, Character[playerid][char_VW]);
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
