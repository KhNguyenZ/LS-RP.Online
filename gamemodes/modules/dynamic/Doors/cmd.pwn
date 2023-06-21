#include <a_samp>
#include <YSI_Coding\y_hooks>



CMD:dnext(playerid, params[])
{
	if(CheckAdmin(playerid, 4))
	{
		new szformat[1280];
		format(szformat, sizeof(szformat), "Next Door ID: %d", INVALID_DOORS());
		SendClientMessage(playerid, -1, szformat);
	}
	else SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
	return 1;
}

CMD:taodoor(playerid, params[])
{
	new name[1280], pickup;
	if(!CheckAdmin(playerid, 4)) return SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
	if(sscanf(params, "s[40]i", name,pickup)) return SendClientMessage(playerid, -1 ,"Su dung: /taodoor [name] [pickup id]");

	new Float:dPos[3], iddoor = INVALID_DOORS();
	GetPlayerPos(playerid, dPos[0],dPos[1],dPos[2]);
	new queryzzzzz[1280];
	mysql_format(Handle(), queryzzzzz, sizeof(queryzzzzz), "INSERT INTO `doors` SET \
		`id` = '%d' , `Name` = '%s', `ExPosX` = '%f' , `ExPosY` = '%f' , `ExPosZ` = '%f', `PickupID` = '%d' ",iddoor, name, dPos[0], dPos[1], dPos[2], pickup);
	mysql_tquery(Handle(),queryzzzzz, "OnAdminDoorCreate", "iisfffi", playerid, iddoor,name, dPos[0], dPos[1], dPos[2],pickup);
	return 1;
}


CMD:dedit(playerid, params[])
{
	new doorid, option[14], param[64];
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[14]S()[64]", doorid, option, param))
		{
		    SendClientMessage(playerid, -1, "Su dung: /dedit [door id] [option]");
		    SendClientMessage(playerid, -1, "Tuy chon co san: Exterior, Interior, Name, World, VW, Locked, AdminLevel");
		    SendClientMessage(playerid, -1, "Tuy chon co san: VIP , Group ");
		    return 1;
		}
		if(!strcmp(option, "interior", true))
		{
			GetPlayerPos(playerid, DoorInfo[doorid][door_InPos][0],DoorInfo[doorid][door_InPos][1],DoorInfo[doorid][door_InPos][2]);

			DoorInfo[doorid][door_InVW] = GetPlayerVirtualWorld(playerid);
			DoorInfo[doorid][door_InInterior] = GetPlayerInterior(playerid);
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
		}
		if(!strcmp(option, "exterior", true))
		{
			GetPlayerPos(playerid, DoorInfo[doorid][door_ExPos][0],DoorInfo[doorid][door_ExPos][1],DoorInfo[doorid][door_ExPos][2]);

			DoorInfo[doorid][door_ExVW] = GetPlayerVirtualWorld(playerid);
			DoorInfo[doorid][door_ExInterior] = GetPlayerInterior(playerid);
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
		}
	}
	else SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
	return 1;
}


CMD:enter(playerid, params[])
{
	EnterDoor(playerid);
	return 1;
}
CMD:exit(playerid, params[])
{
	ExitDoor(playerid);
	return 1;
}