func:SaveDynamicDoor(doorid)
{
	new door_query[1280];
	mysql_format(Handle(), door_query, sizeof(door_query),"UPDATE `doors` SET \
	`InPosX` = '%f', `InPosX` = '%f' , `InPosX` = '%f', `InInterior` = '%d', `InVW` = '%d ,\
	`ExPosX` = '%f', `ExPosY` = '%f' , `ExPosZ` = '%f', `ExInterior` = '%d', `ExVW` = '%d \
	`OwnerID` = '%d', `Locked` = '%d', `Admin` = '%d', `Group` = '%d', `VIP` = '%d'\
	`PickupID` = '%d' \
	WHERE `id` = '%d'",
	DoorInfo[doorid][door_InPos][0],
	DoorInfo[doorid][door_InPos][1],
	DoorInfo[doorid][door_InPos][2],
	DoorInfo[doorid][door_InInterior],
	DoorInfo[doorid][door_InVW],

	DoorInfo[doorid][door_ExPos][0],
	DoorInfo[doorid][door_ExPos][1],
	DoorInfo[doorid][door_ExPos][2],
	DoorInfo[doorid][door_ExInterior],
	DoorInfo[doorid][door_ExVW],

	DoorInfo[doorid][door_ownerid],
	DoorInfo[doorid][door_lock],
	DoorInfo[doorid][door_admin],
	DoorInfo[doorid][door_group],
	DoorInfo[doorid][door_vip],
	DoorInfo[doorid][door_pickup],
	doorid );

	new iCache:update_expos;
	update_expos = mysql_query(Handle(), door_query);
	if(cache_num_rows())
	{
		new door_str[1280];
		format(door_str, sizeof(door_str), "Luu thong tin Door ID %d thanh cong", doorid);
		LogConsole(door_str, "Door");
	}
	cache_delete(update_expos);
}

func:INVALID_DOORS()
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

func:EnterDoor(playerid)
{
	if(GetPVarInt(playerid, "LoadingDynamic_") == 0)
	{
		for(new i = 0; i < MAX_DYNAMIC_DOORS; i++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.0, DoorInfo[i][door_ExPos][0], DoorInfo[i][door_ExPos][1], DoorInfo[i][door_ExPos][2]))
			{
				if(DoorInfo[i][door_ownerid] != Character[playerid][char_account_id])
				{
					if(DoorInfo[i][door_lock] > 0)
					{
						HienTextdraw(playerid, "Door nay da bi khoa boi nguoi so huu no !", 5000);
					}
				}
				else if(DoorInfo[i][door_admin] > Character[playerid][char_Admin])
				{
					HienTextdraw(playerid, "Ban khong du quyen han de vao door nay !", 5000);
				}
				LoaderStarting(playerid, 1, "LOADING DYNAMIC", 1);
				SetPVarInt(playerid, "DoorLoading_", i);
				SetPVarInt(playerid, "LoadingDynamic_", 1);
				TogglePlayerControllable(playerid, 0);
			}
		}
	}
	else HienTextdraw(playerid, "Ban khong the thuc hien thao tac ngay luc nay", 3000);
	return 1;
}
func:ExitDoor(playerid)
{
	if(GetPVarInt(playerid, "LoadingOutDynamic_") == 0)
	{
		for(new i = 0; i < MAX_DYNAMIC_DOORS; i++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.0, DoorInfo[i][door_InPos][0], DoorInfo[i][door_InPos][1], DoorInfo[i][door_InPos][2]))
			{
				if(DoorInfo[i][door_ownerid] != Character[playerid][char_account_id])
				{
					if(DoorInfo[i][door_lock] > 0)
					{
						HienTextdraw(playerid, "Door nay da bi khoa boi nguoi so huu no !", 5000);
					}
				}
				else if(DoorInfo[i][door_admin] > Character[playerid][char_Admin])
				{
					HienTextdraw(playerid, "Ban khong du quyen han de vao door nay !", 5000);
				}
				LoaderStarting(playerid, 2, "LOADING", 1);
				SetPVarInt(playerid, "OutDoorLoading_", i);
				SetPVarInt(playerid, "LoadingOutDynamic_", 1);
				TogglePlayerControllable(playerid, 0);
			}
		}
	}
	else HienTextdraw(playerid, "Ban khong the thuc hien thao tac ngay luc nay", 3000);
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

