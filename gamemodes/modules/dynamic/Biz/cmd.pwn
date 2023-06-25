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

			new type_biz = 1, 
				idbiz = INVALID_BIZ();

			new insert[1280];
			format(insert, sizeof(insert), "INSERT INTO `biz` SET \
			`id` = '%d', \
			`Name` = '%s', \
			`Type` = '%d', \
			`ExPosX` = '%f', \
			`ExPosY` = '%f', \
			`ExPosZ` = '%f'",
			idbiz,
			Name,
			type_biz,
			PlayerCrate[0], 
			PlayerCrate[1], 
			PlayerCrate[2]
			);
			// print(insert);
			mysql_tquery(Handle(), insert, "OnBizCreate","ii", playerid,idbiz);
		}
	}
	return 1;
}

forward OnBizCreate(playerid,bizid);
public OnBizCreate(playerid,bizid)
{
	new idbiz[1280];
	format(idbiz, sizeof(idbiz), "Tao ~y~Biz~w~ thanh cong | ID Biz: %d", bizid);
	HienTextdraw(playerid, idbiz);
	printf("Bedit id: %d", bizid);
	LoadDynamicBiz(bizid);
	return 1;
}

CMD:bowner(playerid, params[])
{
	new BizID, BizName[128] = EOS;
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[64]()", BizID, BizName))
		{
			SendClientMessage(playerid, -1, "SU DUNG: /dname [door id] [Name]");
		}
		if(BizID > MAX_DYNAMIC_BIZ) SendClientMessage(playerid,-1, "[x] Invaild ID Door !");
		strcat((BizInfo[BizID][biz_Name] = 0,BizInfo[BizID][biz_Name]), BizName, 128);
		SaveDynamicDoor(BizID);
		ReloadDoor(BizID);
		HienTextdraw(playerid, "Cap nhat ~y~Ten~w~ thanh cong");
	}
}

CMD:bedit(playerid, params[])
{
	new bizid, option[14], param[64];
	if(CheckAdmin(playerid, 4))
	{
		if(sscanf(params, "is[14]S()[64]", bizid, option, param))
		{
		    SendClientMessage(playerid, -1, "Su dung: /bedit [biz id] [option]");
		    SendClientMessage(playerid, -1, "Tuy chon co san: Exterior, Interior,Locked");
		    return 1;
		}
		if(!strcmp(option, "locked", true))
		{
			if(BizInfo[bizid][biz_Locked] == 0) BizInfo[bizid][biz_Locked] = 1;
			else BizInfo[bizid][biz_Locked] = 1;
			SaveDynamicBiz(bizid);
			ReloadBiz(bizid);

			HienTextdraw(playerid, "Cap nhat ~y~Lock~w~ thanh cong");
		}
		if(!strcmp(option, "interior", true))
		{
			GetPlayerPos(playerid, BizInfo[bizid][biz_InPos][0], BizInfo[bizid][biz_InPos][1], BizInfo[bizid][biz_InPos][2]);

			BizInfo[bizid][biz_InVW] = GetPlayerVirtualWorld(playerid);
			BizInfo[bizid][biz_InInterior] = GetPlayerInterior(playerid);
			SaveDynamicBiz(bizid);
			ReloadBiz(bizid);
			HienTextdraw(playerid, "Cap nhat ~y~toa do Interior~w~ thanh cong");
		}
		if(!strcmp(option, "exterior", true))
		{
			GetPlayerPos(playerid, BizInfo[bizid][biz_ExPos][0], BizInfo[bizid][biz_ExPos][1], BizInfo[bizid][biz_ExPos][2]);

			BizInfo[bizid][biz_ExVW] = GetPlayerVirtualWorld(playerid);
			BizInfo[bizid][biz_ExInterior] = GetPlayerInterior(playerid);
			SaveDynamicBiz(bizid);
			ReloadBiz(bizid);
			HienTextdraw(playerid, "Cap nhat ~y~toa do Exterior~w~ thanh cong");
		}
	}
	else SendClientMessage(playerid, -1, "Ban khong co quyen su dung lenh nay");
	return 1;
}

