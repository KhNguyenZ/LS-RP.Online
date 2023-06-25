CMD:bcreate(playerid, params[])
{
	new Type[20], Name[128];
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "s[20]s[128]", Type, Name))
		{
			SendClientMessage(playerid, -1, "SU DUNG: /bcreate [Type] [Ten Cua Hang]");
			SendClientMessage(playerid, -1, "LOAI: 24/7");
			SendClientMessage(playerid, -1, "LOAI: Car");
		}
		if(!strcmp(Type, "24/7", true))
		{
			new Float:PlayerCrate[3];
			GetPlayerPos(playerid, PlayerCrate[0], PlayerCrate[1], PlayerCrate[2]);

			new insert[1280];
			format(insert, sizeof(insert), "INSERT INTO `biz` SET \
			`Name` = '%d', \
			`Type` = '1', \
			`ExPosX` = '%f', \
			`ExPosY` = '%f', \
			`ExPosZ` = '%f'",
			Name,
			Type,
			PlayerCrate[0], 
			PlayerCrate[1], 
			PlayerCrate[2]);
			new Cache:InsertCache;
			InsertCache = mysql_query(Handle(), insert);
			cache_delete(InsertCache);
		}
	}
	return 1;
}
