#include <YSI_Coding\y_hooks>

hook OnGameModeInit(){
	for(new i = 0 ; i < MAX_DYNAMIC_DOORS ; i++)
	{
		DoorInfo[i][door_id] = -1;
	}
	mysql_tquery(Handle(), "SELECT * FROM `doors`", "Doors_Load","");
	return 1;
}
forward Doors_Load();
public Doors_Load()
{
	new door_counts, count;
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

		ReloadDoor(i);

		count++;
	}
	printf("Da load thanh cong %d Door", count);
	return 1;
}
forward OnAdminDoorCreate(playerid, iddoor,name[], x,y,z,pickup);
public OnAdminDoorCreate(playerid, iddoor,name[], x,y,z,pickup)
{
	strcat(DoorInfo[iddoor][door_name], name, 40);
	DoorInfo[iddoor][door_id] = iddoor;
	DoorInfo[iddoor][door_ExPos][0] = x;
	DoorInfo[iddoor][door_ExPos][1] = y;
	DoorInfo[iddoor][door_ExPos][2] = z;
	DoorInfo[iddoor][door_pickup] = 19135;
	DoorInfo[iddoor][door_ExInterior] = GetPlayerInterior(playerid);
	DoorInfo[iddoor][door_ExVW] = GetPlayerVirtualWorld(playerid);

	printf("ID:%d | Name: %s | X:%f Y:%f Z:%f | VW: %d | Inter:%d | PickupID: %d", iddoor, DoorInfo[iddoor][door_name], DoorInfo[iddoor][door_ExPos][0],DoorInfo[iddoor][door_ExPos][1],DoorInfo[iddoor][door_ExPos][2], DoorInfo[iddoor][door_ExVW],DoorInfo[iddoor][door_ExInterior],DoorInfo[iddoor][door_pickup]);

	ReloadDoor(iddoor);

	return 1;

}
public OnLoadingFinish(playerid,loadingid) {
	switch(loadingid) {
		case 3: HienTextdraw(playerid, "Test xong", 2);
		case 1:
		{
			new door_id_load = GetPVarInt(playerid, "DoorLoading_");

			SetPlayerPos(playerid, DoorInfo[door_id_load][door_InPos][0], DoorInfo[door_id_load][door_InPos][1], DoorInfo[door_id_load][door_InPos][2]);
			SetPlayerVirtualWorld(playerid, DoorInfo[door_id_load][door_InVW]);
			SetPlayerInterior(playerid, DoorInfo[door_id_load][door_InInterior]);

			Character[playerid][char_Interior] = DoorInfo[door_id_load][door_InInterior];
			Character[playerid][char_VW] = DoorInfo[door_id_load][door_InVW];

			DeletePVar(playerid, "LoadingDynamic_");
			DeletePVar(playerid, "DoorLoading_");
			TogglePlayerControllable(playerid, 1);
		}
		case 2:
		{
			new door_id_out = GetPVarInt(playerid, "OutDoorLoading_");

			SetPlayerPos(playerid, DoorInfo[door_id_out][door_ExPos][0], DoorInfo[door_id_out][door_ExPos][1], DoorInfo[door_id_out][door_ExPos][2]);
			SetPlayerVirtualWorld(playerid, DoorInfo[door_id_out][door_ExVW]);
			SetPlayerInterior(playerid, DoorInfo[door_id_out][door_ExInterior]);

			Character[playerid][char_Interior] = DoorInfo[door_id_out][door_ExInterior];
			Character[playerid][char_VW] = DoorInfo[door_id_out][door_ExVW];

			DeletePVar(playerid, "LoadingOutDynamic_");
			DeletePVar(playerid, "OutDoorLoading_");
			TogglePlayerControllable(playerid, 1);
		}
	}
	return 1;
}