hook OnGameModeInit(){
	for(new i = 0 ; i < 3000 ; i++)
	{
		BizInfo[i][biz_id] = -1;
	}
	mysql_tquery(Handle(), "SELECT * FROM `biz`", "Biz_Load","");
	return 1;
}

forward Biz_Load();
public Biz_Load()
{
	new biz_count;
	cache_get_row_count(biz_count);
	for(new i = 0 ; i < biz_count; i++)
	{
		cache_get_value_name_int(i, "id", BizInfo[i][biz_id]);
		cache_get_value_name(i, "Name", BizInfo[i][biz_Name]);
		cache_get_value_name_float(i, "ExPosX", BizInfo[i][biz_ExPos][0]);
		cache_get_value_name_float(i, "ExPosY", BizInfo[i][biz_ExPos][1]);

		cache_get_value_name_float(i, "ExPosZ", BizInfo[i][biz_ExPos][2]);
		cache_get_value_name_float(i, "InPosX", BizInfo[i][biz_InPos][0]);
		cache_get_value_name_float(i, "InPosY", BizInfo[i][biz_InPos][1]);
		cache_get_value_name_float(i, "InPosZ", BizInfo[i][biz_InPos][2]);

		cache_get_value_name_int(i, "Locked", BizInfo[i][biz_Locked]);	

		cache_get_value_name_int(i, "Type", BizInfo[i][biz_Type]);
		cache_get_value_name(i, "OwnerName", BizInfo[i][biz_OwnerName]);
		cache_get_value_name_int(i, "PriceBiz", BizInfo[i][biz_PriceBiz]);
		cache_get_value_name_int(i, "PickupID", BizInfo[i][biz_PickupID]);

		cache_get_value_name_int(i, "ExVW", BizInfo[i][biz_ExVW]);
		cache_get_value_name_int(i, "InVW", BizInfo[i][biz_InVW]);
		cache_get_value_name_int(i, "ExInterior", BizInfo[i][biz_ExInterior]);
		cache_get_value_name_int(i, "InInterior", BizInfo[i][biz_Type]);

		if(BizInfo[i][biz_Type] == 1) // 24/7
		{
			new load_247[1290];
			mysql_format(Handle(), load_247, sizeof(load_247), "SELECT * FROM `biz_247` WHERE `BizID` = '%d'", BizInfo[i][biz_id]);
			mysql_tquery(Handle(), "Store_Load", "ii", BizInfo[i][biz_id]);
		}
	}
	printf("Da load thanh cong %d Biz", biz_count);
	return 1;
}

forward Store_Load(storeid);
public Store_Load(storeid)
{
	if(cache_num_rows())
	{
		cache_get_value_name_int(0, "id", StoreInfo[storeid][store_id]);
		cache_get_value_name_int(0, "BizID", StoreInfo[storeid][store_BizID]);
		cache_get_value_name_int(0, "Inventory", StoreInfo[storeid][store_inv]);
		for(new z = 1 ; z < 51; z++){
			new str_fm[128];
			format(str_fm, sizeof(str_fm), "PriceItem%d",z);
			cache_get_value_name_int(0, str_fm, StoreInfo[storeid][store_ItemSlot][z]);
		}
	}
	return 1;
}

