func:SaveDynamicBiz247(bizid)
{
	UpdateInteger("biz_247", "Inventory", StoreInfo[bizid][store_inv]);
	for(new i = 1; i < 51; i++)
	{
		new str_fmz[128];
		format(str_fmz, sizeof(str_fmz), "PriceItem%d",i);
		UpdateInteger("biz_247", str_fmz, StoreInfo[bizid][store_inv]);
	}
}
func:SaveDynamicBiz(bizid)
{
	new regquery[1280];
	mysql_format(Handle(),regquery,sizeof(regquery), "UPDATE `biz` SET \
	`Name` = '%s', \
	`ExPosX` = '%f', `ExPosY` = '%f', `ExPosZ` = '%f', \
	`Locked` = '%d', `OwnerName` = '%s', \
	`InPosX` = '%f', `InPosY` = '%f', `InPosZ` = '%f', \
	`PriceBiz` = '%d' , `PickupID` = '%d' , `ExVW` = '%d', `InVW` = '%d', \
	`ExInterior` = '%d', `InInterior` = '%d', `Type` = '%d' WHERE `id` = '%d'",
	BizInfo[bizid][biz_Name],
	BizInfo[bizid][biz_ExPos][0],
	BizInfo[bizid][biz_ExPos][1],
	BizInfo[bizid][biz_ExPos][2],
	BizInfo[bizid][biz_Locked],
	BizInfo[bizid][biz_OwnerName],
	BizInfo[bizid][biz_InPos][0],
	BizInfo[bizid][biz_InPos][1],
	BizInfo[bizid][biz_InPos][2],
	BizInfo[bizid][biz_PriceBiz],
	BizInfo[bizid][biz_PickupID],
	BizInfo[bizid][biz_ExVW],
	BizInfo[bizid][biz_InVW],
	BizInfo[bizid][biz_ExInterior],
	BizInfo[bizid][biz_InInterior],
	BizInfo[bizid][biz_InInterior],
	bizid);
	return 1;
}
func:GetTypeBiz(bizid)
{
	new type[128];
	switch(BizInfo[bizid][biz_Type])
	{
		case 1: type =  "Cua hang {43f773}24/7";
		case 2: type = "Cua hang {43f773}Car Dealership";
		default: type = "Khong xac dinh";
	}
	return type;
}
func:GetBizStatus(bizid)
{
	new status[1280];
	switch(BizInfo[bizid][biz_Locked])
	{
		case 0: status = "{03fc07}Mo cua{FFFFFF}";
		default: status = "{fc1403}Dong cua{FFFFFF}";

	}
	return status;
}

func:ReloadBiz(bizid)
{

	if(IsValidDynamic3DTextLabel(BizInfo[bizid][biz_label])) DestroyDynamic3DTextLabel(BizInfo[bizid][biz_label]);
	if(IsValidDynamicPickup(BizInfo[bizid][biz_Pickup])) DestroyDynamicPickup(BizInfo[bizid][biz_Pickup]);

	new Text_Reload[1280]; 
	format(Text_Reload, sizeof(Text_Reload), 
	"#%d \n\
	{e7f089}%s{FFFFFF}\n\
	Trang thai:%s", 
	BizInfo[bizid][biz_id],
	BizInfo[bizid][biz_Name],
	GetTypeBiz(bizid),
	GetBizStatus(bizid));

	BizInfo[bizid][biz_label] = CreateDynamic3DTextLabel(Text_Reload, -1,BizInfo[bizid][biz_ExPos][0],BizInfo[bizid][biz_ExPos][1],BizInfo[bizid][biz_ExPos][2],100, .worldid = BizInfo[bizid][biz_ExVW], .interiorid = BizInfo[bizid][biz_ExInterior]);
	BizInfo[bizid][biz_Pickup] = CreateDynamicPickup(BizInfo[bizid][biz_PickupID], 23, BizInfo[bizid][biz_ExPos][0],BizInfo[bizid][biz_ExPos][1],BizInfo[bizid][biz_ExPos][2]-0.5, .worldid = BizInfo[bizid][biz_ExVW], .interiorid = BizInfo[bizid][biz_ExInterior]);

	return 1;
}


func:INVALID_BIZ()
{
	for(new i = 0 ; i < 3000 ; i++)
	{
		if(BizInfo[i][biz_id] == -1)
		{
			return i;
		}
	}
	return 1;
}

func:LoadDynamicBiz(bizid)
{
	new query_load[1280];
	mysql_format(Handle(),query_load, sizeof(query_load), "SELECT * FROM `biz` WHERE `id` = '%d'", bizid);
	mysql_tquery(Handle(),query_load, "OnloadDynamic", "i", bizid);
}

forward OnloadDynamic(bizid);
public OnloadDynamic(bizid)
{
	if(cache_num_rows())
	{
		cache_get_value_name_int(bizid, "id", BizInfo[bizid][biz_id]);
		cache_get_value_name(bizid, "Name", BizInfo[bizid][biz_Name]);
		cache_get_value_name_float(bizid, "ExPosX", BizInfo[bizid][biz_ExPos][0]);
		cache_get_value_name_float(bizid, "ExPosY", BizInfo[bizid][biz_ExPos][1]);

		cache_get_value_name_float(bizid, "ExPosZ", BizInfo[bizid][biz_ExPos][2]);
		cache_get_value_name_float(bizid, "InPosX", BizInfo[bizid][biz_InPos][0]);
		cache_get_value_name_float(bizid, "InPosY", BizInfo[bizid][biz_InPos][1]);
		cache_get_value_name_float(bizid, "InPosZ", BizInfo[bizid][biz_InPos][2]);

		cache_get_value_name_int(bizid, "Locked", BizInfo[bizid][biz_Locked]);	

		cache_get_value_name_int(bizid, "Type", BizInfo[bizid][biz_Type]);
		cache_get_value_name(bizid, "OwnerName", BizInfo[bizid][biz_OwnerName]);
		cache_get_value_name_int(bizid, "PriceBiz", BizInfo[bizid][biz_PriceBiz]);
		cache_get_value_name_int(bizid, "PickupID", BizInfo[bizid][biz_PickupID]);

		cache_get_value_name_int(bizid, "ExVW", BizInfo[bizid][biz_ExVW]);
		cache_get_value_name_int(bizid, "InVW", BizInfo[bizid][biz_InVW]);
		cache_get_value_name_int(bizid, "ExInterior", BizInfo[bizid][biz_ExInterior]);
		cache_get_value_name_int(bizid, "InInterior", BizInfo[bizid][biz_Type]);
	}
	return 1;
}