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

CMD:dname(playerid, params[])
{
	new DoorID, DoorName[128] = EOS;
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[64]()", DoorID, DoorName))
		{
			SendClientMessage(playerid, -1, "SU DUNG: /dname [door id] [Name]");
		}
		if(DoorID > MAX_DYNAMIC_DOORS) SendClientMessage(playerid,-1, "[x] Invaild ID Door !");
		strcat((DoorInfo[DoorID][door_name] = 0,DoorInfo[DoorID][door_name]), DoorName, 128);
		SaveDynamicDoor(DoorID);
		ReloadDoor(DoorID);
		HienTextdraw(playerid, "Cap nhat ~y~Ten~w~ thanh cong");
	}
	return 1;
}
CMD:dedit(playerid, params[])
{
	new doorid, option[14], param[64], amount;
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[14]S()[64]", doorid, option, param))
		{
		    SendClientMessage(playerid, -1, "Su dung: /dedit [door id] [option] [amount]");
		    SendClientMessage(playerid, -1, "Tuy chon co san: Exterior, Interior,Locked, AdminLevel");
		    SendClientMessage(playerid, -1, "Tuy chon co san: VIP , Group ");
		    return 1;
		}
		if(!strcmp(option, "vip", true))
		{
			DoorInfo[doorid][door_vip] = amount;
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
			HienTextdraw(playerid, "Cap nhat ~y~VIP~w~ thanh cong");
		}
		if(!strcmp(option, "Group", true))
		{
			DoorInfo[doorid][door_group] = amount;
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
			HienTextdraw(playerid, "Cap nhat ~y~Group~w~ thanh cong");
		}
		if(!strcmp(option, "locked", true))
		{
			if(DoorInfo[doorid][door_lock] == 0) DoorInfo[doorid][door_lock] = 1;
			else DoorInfo[doorid][door_lock] = 1;
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
			HienTextdraw(playerid, "Cap nhat ~y~Lock~w~ thanh cong");
		}
		if(!strcmp(option, "AdminLevel", true))
		{
			DoorInfo[doorid][door_admin] = amount;
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
			HienTextdraw(playerid, "Cap nhat ~y~AdminLevel~w~ thanh cong");
		}
		if(!strcmp(option, "interior", true))
		{
			GetPlayerPos(playerid, DoorInfo[doorid][door_InPos][0],DoorInfo[doorid][door_InPos][1],DoorInfo[doorid][door_InPos][2]);

			DoorInfo[doorid][door_InVW] = GetPlayerVirtualWorld(playerid);
			DoorInfo[doorid][door_InInterior] = GetPlayerInterior(playerid);
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
			HienTextdraw(playerid, "Cap nhat ~y~toa do Interior~w~ thanh cong");
		}
		if(!strcmp(option, "exterior", true))
		{
			GetPlayerPos(playerid, DoorInfo[doorid][door_ExPos][0],DoorInfo[doorid][door_ExPos][1],DoorInfo[doorid][door_ExPos][2]);

			DoorInfo[doorid][door_ExVW] = GetPlayerVirtualWorld(playerid);
			DoorInfo[doorid][door_ExInterior] = GetPlayerInterior(playerid);
			SaveDynamicDoor(doorid);
			ReloadDoor(doorid);
			HienTextdraw(playerid, "Cap nhat ~y~toa do Exterior~w~ thanh cong");
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