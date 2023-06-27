CMD:bcreate(playerid, params[])
{
	new Type[20], Name[128];
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "s[20]s[128]", Type, Name))
		{
			SendClientMessage(playerid, -1, "SU DUNG: /bcreate [Type] [Ten Cua Hang]");
			SendClientMessage(playerid, -1, "LOAI: 24/7");
			SendClientMessage(playerid, -1, "LOAI: Car");
		}
		if(!strcmp(Type, "24/7", true))
		{
			new Float:PlayerCrate[3];
			GetPlayerPos(playerid, PlayerCrate[0], PlayerCrate[1], PlayerCrate[2]);

			new insert[1280], typeBiz=1;
			new bizid=INVALID_BIZ();
			new ExVWz = GetPlayerVirtualWorld(playerid), ExInteriorz = GetPlayerInterior(playerid);
			format(insert, sizeof(insert), "INSERT INTO `biz` SET \
			`id` = '%d', \
			`Name` = '%s', \
			`Type` = '%d', \
			`ExPosX` = '%f', \
			`ExPosY` = '%f', \
			`ExPosZ` = '%f'",
			bizid,
			Name,
			typeBiz,
			PlayerCrate[0], 
			PlayerCrate[1], 
			PlayerCrate[2]);
			mysql_tquery(Handle(), insert, "OnBizCreate", "iisifffii",playerid,bizid, Name, typeBiz, PlayerCrate[0], PlayerCrate[1], PlayerCrate[2],ExVWz,ExInteriorz);
		}
	}
	return 1;
}

forward OnBizCreate(playerid, bizid,name[], type, Float:BizX, Float:BizY, Float:BizZ, VW, Interior);
public OnBizCreate(playerid,bizid,name[], type, Float:BizX, Float:BizY, Float:BizZ, VW, Interior)
{
	BizInfo[bizid][biz_id] = bizid;
	strcat(BizInfo[bizid][biz_Name], name);
	BizInfo[bizid][biz_ExPos][0] = BizX;
	BizInfo[bizid][biz_ExPos][1] = BizY;
	BizInfo[bizid][biz_ExPos][2] = BizZ;

	BizInfo[bizid][biz_Locked] = bizid;
	strcat(BizInfo[bizid][biz_OwnerName], "Khong co chu");
	BizInfo[bizid][biz_PriceBiz] = 0;
	BizInfo[bizid][biz_PickupID] = 1274;
	BizInfo[bizid][biz_ExVW] = VW;
	BizInfo[bizid][biz_ExInterior] = Interior;

	new create_str[1280];
	format(create_str, sizeof(create_str), "Ban da {37fa2d}tao thanh cong biz{FFFFFF} ID: {f5290a}%d{FFFFFF}", bizid);
	SendClientMessage(playerid, -1, create_str);

	SaveDynamicBiz(bizid);
	ReloadBiz(bizid);
	return 1;
}
CMD:bedit(playerid, params[])
{
	new BizID, Name[128];
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[128]", BizID, Name))
		{
			SendClientMessage(playerid, -1, "SU DUNG: /bcreate [Biz ID] [Option]");
			SendClientMessage(playerid, -1, "Tuy chon co san: Exterior, Interior,Locked");
		}
		if(!strcmp(Name, "Exterior", true))
		{
			GetPlayerPos(playerid, BizInfo[BizID][biz_ExPos][0], BizInfo[BizID][biz_ExPos][1], BizInfo[BizID][biz_ExPos][2]);

			BizInfo[BizID][biz_ExVW] = GetPlayerVirtualWorld(playerid);
			BizInfo[BizID][biz_ExInterior] = GetPlayerInterior(playerid);
			SaveDynamicBiz(BizID);
			ReloadBiz(BizID);
			HienTextdraw(playerid, "Cap nhat ~y~toa do Exterior~w~ thanh cong");
		}
		if(!strcmp(Name, "Interior", true))
		{
			GetPlayerPos(playerid, BizInfo[BizID][biz_InPos][0], BizInfo[BizID][biz_InPos][1], BizInfo[BizID][biz_InPos][2]);

			BizInfo[BizID][biz_InVW] = GetPlayerVirtualWorld(playerid);
			BizInfo[BizID][biz_InInterior] = GetPlayerInterior(playerid);
			SaveDynamicBiz(BizID);
			ReloadBiz(BizID);
			HienTextdraw(playerid, "Cap nhat ~y~toa do Interior~w~ thanh cong");
		}
		if(!strcmp(Name, "Locked", true))
		{
			if(BizInfo[BizID][biz_Locked] == 0 ) BizInfo[BizID][biz_Locked] = 1;
			else BizInfo[BizID][biz_Locked] = 0;
			SaveDynamicBiz(BizID);
			ReloadBiz(BizID);
			HienTextdraw(playerid, "Cap nhat ~y~Locked~w~ thanh cong");
		}
	}
	else SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
	return 1;
}