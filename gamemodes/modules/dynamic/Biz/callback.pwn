hook OnGameModeInit(){
	for(new i = 0 ; i < MAX_DYNAMIC_DOORS ; i++)
	{
		BizInfo[i][biz_id] = -1;
	}
	mysql_tquery(Handle(), "SELECT * FROM `biz`", "Biz_Load","");
	return 1;
}

forward Biz_Load();
public Biz_Load()
{
	new biz_count, count;
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

		cache_get_value_name_int(i, "ExVW", BizInfo[i][biz_ExVW]);
		cache_get_value_name_int(i, "InVW", BizInfo[i][biz_InVW]);
		cache_get_value_name_int(i, "ExInterior", BizInfo[i][biz_ExInterior]);
		cache_get_value_name_int(i, "InInterior", BizInfo[i][biz_InInterior]);

		SaveDynamicBiz(i);
		ReloadBiz(i);
	}
	return 1;
}

