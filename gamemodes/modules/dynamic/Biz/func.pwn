func:SaveDynamicBiz(bizid)
{
	new query_save[1280];
	mysql_format(Handle(),query_save, sizeof(query_save), "UPDATE `biz` SET \
	`Name` = '%s', \
	`Type` = '%d',\
	`ExPosX` = '%f',\
	`ExPosY` = '%f',\
	`ExPosZ` = '%f',\
	`InPosX` = '%f',\
	`InPosY` = '%f',\
	`InPosZ` = '%f',\
	`Locked` = '%d',\
	`OwnerName` = '%s',\
	`ExVW` = '%d',\
	`InVW` = '%d',\
	`ExInterior` = '%d',\
	`InInterior` = '%d'\
	WHERE `id` = '%d'", 
	BizInfo[bizid][biz_Name],
	BizInfo[bizid][biz_Type],
	BizInfo[bizid][biz_ExPos][0],
	BizInfo[bizid][biz_ExPos][1],
	BizInfo[bizid][biz_ExPos][2],
	BizInfo[bizid][biz_InPos][0],
	BizInfo[bizid][biz_InPos][1],
	BizInfo[bizid][biz_InPos][2],
	BizInfo[bizid][biz_Locked],
	BizInfo[bizid][biz_OwnerName],
	BizInfo[bizid][biz_ExVW],
	BizInfo[bizid][biz_InVW],
	BizInfo[bizid][biz_ExInterior],
	BizInfo[bizid][biz_InInterior],
	bizid);
	mysql_query(Handle(), query_save);
}
func:GetTypeBiz(bizid)
{
	new type[128];
	switch(BizInfo[bizid][biz_Type])
	{
		case 1: type = "Cua hang {43f773}24/7{FFFFFF}";
		case 2: type = "Cua hang {43f773}Car Dealership{FFFFFF}";
		default: type = "Khong xac dinh";
	}
	return type;
}

func:GetStatusBiz(bizid)
{
	new status[128];
	switch(BizInfo[bizid][biz_Locked])
	{
		case 0: status = "{37fa2d}Open{FFFFFF}";
		case 1: status = "{f5290a}Closed{FFFFFF}";
		default: status = "Khong xac dinh";
	}
	return status;
}

func:ReloadBiz(bizid)
{

	if(IsValidDynamic3DTextLabel(BizInfo[bizid][biz_label])) DestroyDynamic3DTextLabel(BizInfo[bizid][biz_label]);
	if(IsValidDynamicPickup(BizInfo[bizid][biz_Pickup])) DestroyDynamicPickup(BizInfo[bizid][biz_Pickup]);
	new biz_str[1280];
	format(biz_str, sizeof(biz_str), 
	"#%d \n\
	{faf366}%s{FFFFFF} \n\
	%s \n\
	Trang thai: %s \n\
	Chu: %s",
	bizid, BizInfo[bizid][biz_Name],GetTypeBiz(bizid),GetStatusBiz(bizid),BizInfo[bizid][biz_OwnerName]);

	BizInfo[bizid][biz_label] = CreateDynamic3DTextLabel(biz_str, -1,BizInfo[bizid][biz_ExPos][0],BizInfo[bizid][biz_ExPos][1],BizInfo[bizid][biz_ExPos][2],100, .worldid = BizInfo[bizid][biz_ExVW], .interiorid = BizInfo[bizid][biz_ExInterior]);
	BizInfo[bizid][biz_Pickup] = CreateDynamicPickup(BizInfo[bizid][biz_PickupID], 23, BizInfo[bizid][biz_ExPos][0],BizInfo[bizid][biz_ExPos][1],BizInfo[bizid][biz_ExPos][2]-0.5, .worldid = BizInfo[bizid][biz_ExVW], .interiorid = BizInfo[bizid][biz_ExInterior]);
	return 1;
}

func:INVALID_BIZ()
{
	for(new i = 0 ; i < MAX_DYNAMIC_BIZ ; i++)
	{
		if(BizInfo[i][biz_id] == -1)
		{
			return i;
		}
	}
	return 1;
}