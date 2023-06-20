#include <a_samp>
#include <YSI\y_hooks>


#define   						MAX_DYNAMIC_DOORS					3000

enum door_e
{
	door_id,
	door_name[1280],
	Text3D:door_label,
	door_ownerid,
	Float:door_ExPos[3],
	Float:door_InPos[3],
	door_lock,
	door_vip,
	door_admin,
	door_group,
	door_pickup,
	door_ExVW,
	door_InVW,
	door_ExInterior,
	door_InInterior
}
new DoorInfo[MAX_DYNAMIC_DOORS][door_e];

hook OnGameModeInit(){
	for(new i = 0 ; i < MAX_DYNAMIC_DOORS ; i++)
	{
		DoorInfo[i][door_id] = -1;
	}
	mysql_tquery(Handle(), "SELECT * FROM `doors`", "Doors_Load","");
	return 1;
}
stock ReloadDoor(doorid)
{
	DestroyDynamic3DTextLabel(DoorInfo[doorid][door_label]);
	DestroyDynamicPickup(DoorInfo[doorid][door_pickup]);
	DoorInfo[doorid][door_label] = CreateDynamic3DTextLabel(DoorInfo[doorid][door_name], -1,DoorInfo[doorid][door_ExPos][0],DoorInfo[doorid][door_ExPos][1],DoorInfo[doorid][door_ExPos][2],5, .worldid = DoorInfo[doorid][door_ExVW], .interiorid = DoorInfo[doorid][door_ExInterior]);

	DoorInfo[doorid][door_pickup] = CreateDynamicPickup(DoorInfo[doorid][door_pickup], 1,DoorInfo[doorid][door_ExPos][0],DoorInfo[doorid][door_ExPos][1],DoorInfo[doorid][door_ExPos][2]-1, .worldid = DoorInfo[doorid][door_ExVW], .interiorid = DoorInfo[doorid][door_ExInterior]);
	return 1;
}
callback:Doors_Load()
{
	new door_counts;
	cache_get_row_count(door_counts);

	for(new i = 0 ; i < door_counts; i++)
	{
		cache_get_value_name_int(i, "id", DoorInfo[i][door_id]);
		cache_get_value_name(i, "Name", DoorInfo[i][door_name]);
		cache_get_value_name_int(i, "OwnerID", DoorInfo[i][door_ownerid]);
		cache_get_value_name_int(i, "Locked", DoorInfo[i][door_lock]);
		cache_get_value_name_int(i, "Admin", DoorInfo[i][door_admin]);
		cache_get_value_name_int(i, "Group", DoorInfo[i][door_group]);
		cache_get_value_name_int(i, "VIP", DoorInfo[i][door_vip]);
		cache_get_value_name_float(i, "ExPosX", DoorInfo[i][door_ExPos][0]);
		cache_get_value_name_float(i, "ExPosY", DoorInfo[i][door_ExPos][1]);
		cache_get_value_name_float(i, "ExPosZ", DoorInfo[i][door_ExPos][2]);
		cache_get_value_name_float(i, "InPosX", DoorInfo[i][door_InPos][0]);
		cache_get_value_name_float(i, "InPosY", DoorInfo[i][door_InPos][1]);
		cache_get_value_name_float(i, "InPosZ", DoorInfo[i][door_InPos][2]);
		cache_get_value_name_int(i, "PickupID", DoorInfo[i][door_pickup]);
		cache_get_value_name_int(i, "ExVW", DoorInfo[i][door_ExVW]);
		cache_get_value_name_int(i, "InVW", DoorInfo[i][door_InVW]);
		cache_get_value_name_int(i, "ExInterior", DoorInfo[i][door_ExInterior]);
		cache_get_value_name_int(i, "InInterior", DoorInfo[i][door_InInterior]);

		DoorInfo[i][door_label] = CreateDynamic3DTextLabel(DoorInfo[i][door_name], -1,DoorInfo[i][door_ExPos][0],DoorInfo[i][door_ExPos][1],DoorInfo[i][door_ExPos][2],5, .worldid = DoorInfo[i][door_ExVW], .interiorid = DoorInfo[i][door_ExInterior]);

		DoorInfo[i][door_pickup] = CreateDynamicPickup(DoorInfo[i][door_pickup], 1,DoorInfo[i][door_ExPos][0],DoorInfo[i][door_ExPos][1],DoorInfo[i][door_ExPos][2]-1, .worldid = DoorInfo[i][door_ExVW], .interiorid = DoorInfo[i][door_ExInterior]);

		printf("Loaded Door ID:%d", DoorInfo[i][door_id]);
	}
}

stock INVALID_DOORS()
{
	for(new i = 0 ; i < MAX_DYNAMIC_DOORS ; i++)
	{
		if(DoorInfo[i][door_id] == -1)
		{
			return i;
		}
	}
	return 1;
}

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
	new name[1280];
	if(!CheckAdmin(playerid, 4)) return SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
	if(sscanf(params, "s[40]", name)) return SendClientMessage(playerid, -1 ,"Su dung: /taodoor [name]");

	new Float:dPos[3], iddoor = INVALID_DOORS();
	GetPlayerPos(playerid, dPos[0],dPos[1],dPos[2]);
	new queryzzzzz[1280];
	mysql_format(Handle(), queryzzzzz, sizeof(queryzzzzz), "INSERT INTO `doors` SET \
		`id` = '%d' , `Name` = '%s', `ExPosX` = '%f' , `ExPosY` = '%f' , `ExPosZ` = '%f' ",iddoor, name, dPos[0], dPos[1], dPos[2]);
	mysql_tquery(Handle(),queryzzzzz, "OnAdminDoorCreate", "iisfff", playerid, iddoor,name, dPos[0], dPos[1], dPos[2]);
	return 1;
}
callback:OnAdminDoorCreate(playerid, iddoor,name[], x,y,z)
{
	strcat(DoorInfo[iddoor][door_name], name, 40);
	DoorInfo[iddoor][door_id] = iddoor;
	DoorInfo[iddoor][door_ExPos][0] = x;
	DoorInfo[iddoor][door_ExPos][1] = y;
	DoorInfo[iddoor][door_ExPos][2] = z;
	DoorInfo[iddoor][door_pickup] = 19135;
	DoorInfo[iddoor][door_ExInterior] = GetPlayerInterior(playerid);
	DoorInfo[iddoor][door_ExVW] = GetPlayerVirtualWorld(playerid);

	printf("ID:%d | Name: %s | X:%f Y:%f Z:%f | VW: %d | Inter:%d", iddoor, DoorInfo[iddoor][door_name], DoorInfo[iddoor][door_ExPos][0],DoorInfo[iddoor][door_ExPos][1],DoorInfo[iddoor][door_ExPos][2], DoorInfo[iddoor][door_ExVW],DoorInfo[iddoor][door_ExInterior]);

	CreateDynamic3DTextLabel(DoorInfo[iddoor][door_name], -1,DoorInfo[iddoor][door_ExPos][0],DoorInfo[iddoor][door_ExPos][1],DoorInfo[iddoor][door_ExPos][2],100, .worldid = DoorInfo[iddoor][door_ExVW], .interiorid = DoorInfo[iddoor][door_ExInterior]);
	CreateDynamicPickup(DoorInfo[iddoor][door_pickup], 1,DoorInfo[iddoor][door_ExPos][0],DoorInfo[iddoor][door_ExPos][1],DoorInfo[iddoor][door_ExPos][2]-1, .worldid = DoorInfo[iddoor][door_ExVW], .interiorid = DoorInfo[iddoor][door_ExInterior]);

	return 1;

}
/*CMD:dedit(playerid, params[])
{
	new doorid, option[14], param[64];
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[14]S()[64]", entranceid, option, param))
		{
		    SendClientMessage(playerid, -1, "Su dung: /ddedit [entranceid] [option]");
		    SendClientMessage(playerid, -1, "Tuy chon co san: Exterior, Interior, Name, World, VW, Locked, AdminLevel");
		    SendClientMessage(playerid, -1, "Tuy chon co san: VIP , Group ")
		    return 1;
		}
		if(!strcmp(option, "exterior", true))
		{
			GetPlayerPos(playerid, DoorInfo[i][door_ExPos][0],DoorInfo[i][door_ExPos][1],DoorInfo[i][door_ExPos][2]);

			DoorInfo[doorid][door_ExVW] = GetPlayerVirtualWorld(playerid);
			DoorInfo[doorid][door_ExInterior] = GetPlayerInterior(playerid);

			new query[1280];
			format(query, sizeof(query), "")
		}
	}
	else SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
}*/