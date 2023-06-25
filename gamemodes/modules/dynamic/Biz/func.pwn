func:SaveDynamicBiz(bizid)
{
	UpdateInteger("biz_247", "Inventory", StoreInfo[bizid][store_inv]);
	for(new i = 1; i < 51; i++)
	{
		new str_fm[128];
		format(str_fm, sizeof(str_fm), "ItemSlot%d",i);
		UpdateInteger("biz_247", str_fm, StoreInfo[bizid][store_inv]);

		new str_fmz[128];
		format(str_fmz, sizeof(str_fmz), "PriceItem%d",i);
		UpdateInteger("biz_247", str_fmz, StoreInfo[bizid][store_inv]);
	}
}
func:GetTypeBiz(bizid)
{
	switch(BizInfo[bizid][biz_Type]):
	{
		case 1: return "Cua hang {43f773}24/7";
		case 2: return "Cua hang {43f773}Car Dealership";
		default: return "Khong xac dinh";
	}
}

func:ReloadBiz(bizid)
{

	if(IsValidDynamic3DTextLabel(BizInfo[bizid][biz_label])) DestroyDynamic3DTextLabel(BizInfo[bizid][biz_label]);
	if(IsValidDynamicPickup(BizInfo[bizid][biz_Pickup])) DestroyDynamicPickup(BizInfo[bizid][biz_Pickup]);
	
	BizInfo[bizid][biz_label] = CreateDynamic3DTextLabel(BizInfo[bizid][biz_name], -1,BizInfo[bizid][biz_ExPos][0],BizInfo[bizid][biz_ExPos][1],BizInfo[bizid][biz_ExPos][2],100, .worldid = BizInfo[bizid][biz_ExVW], .interiorid = BizInfo[bizid][biz_ExInterior]);
	BizInfo[bizid][biz_Pickup] = CreateDynamicPickup(BizInfo[bizid][biz_PickupID], 23, BizInfo[bizid][biz_ExPos][0],BizInfo[bizid][biz_ExPos][1],BizInfo[bizid][biz_ExPos][2]-0.5, .worldid = BizInfo[bizid][biz_ExVW], .interiorid = BizInfo[bizid][biz_ExInterior]);
	return 1;
}

