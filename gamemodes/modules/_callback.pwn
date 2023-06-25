public OnPlayerConnect(playerid)
{
	PlayerSelectSlot[playerid] = -1;
    InvWeight[playerid] = 0.0;
	InvMaxWeight[playerid] = 10.0;
    CreateFadeEffectTextDraw(playerid);
    CreateHienTextDraw(playerid);
	SetPVarString(playerid, "Current_IC_@", player_get_name(playerid));
	TogglePlayerSpectating(playerid, 0);
	return 1;
}


hook OnPlayerText(playerid, text[])
{
	return 0;
}

public OnPlayerText(playerid, text[])
{
	if(player_Login(playerid))
	{
		SendRangeMessage(playerid, 10, text);
		Log("log/chat.log", text);
		return 1;
	}
	else SendClientMessage(playerid, -1, "Ban vui long dang nhap");
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[]) {
	if(!player_Login(playerid))
	{
		SendClientMessage(playerid,0xFF0000FF, "Ban chua dang nhap");
		Log("log/cmd.log", cmdtext);
		return 0;
	}
	return 1;
}
// public OnPlayerRequestClass(playerid, classid)
// {
//     TogglePlayerSpectating(playerid, true);
//     return 1;
// }
public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if (clickedid == INVALID_TEXT_DRAW)
    {
    	if(GetPVarInt(playerid, #inventorystatus) == 1)
    	{
	    	if(GetPVarInt(playerid, #detailstatus) == 1)
	    	{
				for(new i = 5; i < 12; i++)
				{
					PlayerTextDrawHide(playerid, InvPTD[playerid][i]);
				}
				PlayerSelectSlot[playerid] = -1;
				SetPVarInt(playerid, #detailstatus, 0);
				SelectTextDraw(playerid, 0x0d142bAA);
				PlayerPlaySound(playerid, 1135, 0.0, 0.0, 0.0);
				inventory_show(playerid);
	    	}
	    	else{inventory_hide(playerid); PlayerPlaySound(playerid, 17803, 0.0, 0.0, 0.0);}
    	}

    	return 1;
    }
    return 0;
}
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{	
	if(GetPVarInt(playerid, #inventorystatus) == 1)
	{
		if(playertextid == InvPTD[playerid][4])
		{
	    	if(GetPVarInt(playerid, #inventorystatus) == 1)
	    	{
		    	if(GetPVarInt(playerid, #detailstatus) == 1)
		    	{
					for(new i = 5; i < 12; i++)
					{
						PlayerTextDrawHide(playerid, InvPTD[playerid][i]);
					}
					PlayerSelectSlot[playerid] = -1;
					SetPVarInt(playerid, #detailstatus, 0);
					SelectTextDraw(playerid, 0x0d142bAA);
					PlayerPlaySound(playerid, 1135, 0.0, 0.0, 0.0);
		    	}
		    	else{inventory_hide(playerid); PlayerPlaySound(playerid, 17803, 0.0, 0.0, 0.0);}
	    	}
		}
		if(playertextid == InvPTD[playerid][10])
		{
			ShowPlayerDialog(playerid, DLG_DeleteItem, DIALOG_STYLE_MSGBOX, "XOA VAT PHAM", "{ffffff}Ban co chac chan muon {B31312}XOA VAT PHAM{ffffff} nay khong\n\
				no se bien mat hoan toan, neu nhu xoa nham lan vui long bao ngay voi admin de nhan duoc su tro giup.", "Xac nhan", "Huy");
		}
		for(new i = 0; i < 20; i++)
		{
			if(playertextid == InvSlotPTD[playerid][i])
			{
				if(pInventory[playerid][invSlot][i] != 0 && GetPVarInt(playerid, #detailstatus) == 0)
				{
					new string[255];
					format(string, sizeof(string), "%s", iItem_info[pInventory[playerid][invSlot][i]][item_name]);
					PlayerTextDrawSetString(playerid, InvPTD[playerid][6], string);
					format(string, sizeof(string), "%s", iItem_info[pInventory[playerid][invSlot][i]][item_detail]);
					PlayerTextDrawSetString(playerid, InvPTD[playerid][8], string);
					format(string, sizeof(string), "%d", pInventory[playerid][invSlotAmount][i]);
					PlayerTextDrawSetString(playerid, InvPTD[playerid][7], string);
					format(string, sizeof(string), "%0.2f", iItem_info[pInventory[playerid][invSlot][i]][item_weight]*pInventory[playerid][invSlotAmount][i]);
					PlayerTextDrawSetString(playerid, InvPTD[playerid][11], string);
					PlayerPlaySound(playerid, 1130, 0.0, 0.0, 0.0);
					PlayerSelectSlot[playerid] = i;
					inventory_show(playerid);
					for(new j = 5; j < 12; j++)
					{
						PlayerTextDrawShow(playerid, InvPTD[playerid][j]);
					}
					SetPVarInt(playerid, #detailstatus, 1);
				}
				else if(pInventory[playerid][invSlot][i] == 0 && GetPVarInt(playerid, #detailstatus) == 1)
				{
					new tempAmount = pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]], tempItem = pInventory[playerid][invSlot][PlayerSelectSlot[playerid]];
					pInventory[playerid][invSlot][PlayerSelectSlot[playerid]] = 0;
					pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]] = 0;
					PlayerPlaySound(playerid, 1135, 0.0, 0.0, 0.0);
					for(new j = 5; j < 12; j++)
					{
						PlayerTextDrawHide(playerid, InvPTD[playerid][j]);
					}
					SetPVarInt(playerid, #detailstatus, 0);
					pInventory[playerid][invSlot][i] = tempItem;
					pInventory[playerid][invSlotAmount][i] = tempAmount;
					PlayerSelectSlot[playerid] = -1;
					inventory_show(playerid);
				}
				else if(pInventory[playerid][invSlot][PlayerSelectSlot[playerid]] != pInventory[playerid][invSlot][i] && pInventory[playerid][invSlot][PlayerSelectSlot[playerid]] != 0; && GetPVarInt(playerid, #detailstatus) == 1)
				{
					if(	iItem_info[pInventory[playerid][invSlot][i]][item_id] != iItem_info[PlayerSelectSlot[playerid]][item_id])
					{
						PlayerPlaySound(playerid, 1135, 0.0, 0.0, 0.0);
						new tempAmount = pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]], tempItem = pInventory[playerid][invSlot][PlayerSelectSlot[playerid]];
						pInventory[playerid][invSlot][PlayerSelectSlot[playerid]] = pInventory[playerid][invSlot][i];
						pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]] = pInventory[playerid][invSlotAmount][i];
						for(new j = 5; j < 12; j++)
						{
							PlayerTextDrawHide(playerid, InvPTD[playerid][j]);
						}
						SetPVarInt(playerid, #detailstatus, 0);
						pInventory[playerid][invSlot][i] = tempItem;
						pInventory[playerid][invSlotAmount][i] = tempAmount;
						PlayerSelectSlot[playerid] = -1;
						inventory_show(playerid);
					}
					else
					{
						if((pInventory[playerid][invSlotAmount][i]+pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]]) <= iItem_info[pInventory[playerid][invSlot][i]][item_maxamount])
						{
							new string[555];
							PlayerPlaySound(playerid, 1135, 0.0, 0.0, 0.0);
							pInventory[playerid][invSlot][PlayerSelectSlot[playerid]] = 0;
							pInventory[playerid][invSlotAmount][i] += pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]];
							pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]] = 0 ;
							for(new j = 5; j < 12; j++)
							{
								PlayerTextDrawHide(playerid, InvPTD[playerid][j]);
							}
							SetPVarInt(playerid, #detailstatus, 0);
							format(string, sizeof(string), "[{212C58}LS-RP{ffffff}] Ban da ghep thanh cong vat pham {B31312}%s {ffffff}so luong hien co {64CCC5}%d{ffffff}.", iItem_info[pInventory[playerid][invSlot][i]][item_name], pInventory[playerid][invSlotAmount][i]);
							SendClientMessage(playerid, -1, string);
							PlayerSelectSlot[playerid] = -1;
							inventory_show(playerid);
						}
						else
						{
							new string[555];	
							format(string, sizeof(string), "[{212C58}LS-RP{ffffff}] Ban da ghep {B31312}KHONG {ffffff}thanh cong vat pham {B31312}%s {ffffff}do chi duoc phep co toi da {64CCC5}%d/%d{ffffff}.", iItem_info[pInventory[playerid][invSlot][i]][item_name], pInventory[playerid][invSlotAmount][i]+pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]], iItem_info[pInventory[playerid][invSlot][i]][item_maxamount]);
							SendClientMessage(playerid, -1, string);
						}
					}

				}
			}
		}
	}
	if(playertextid == RegisterPTD[playerid][1]) // ngay sinh
	{
		new reg_day[1280], fm_reg[1280];
		for(new i = 1 ; i < 31 ; i++)
		{
			format(fm_reg, sizeof(fm_reg), "%d\n", i);
			strcat(reg_day, fm_reg);
		}
		strcat(reg_day, "31");
		ShowPlayerDialog(playerid, DLG_REG_DAY, DIALOG_STYLE_LIST, "Cai dat ngay sinh", reg_day, ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][2]) // gioi tinh
	{
		ShowPlayerDialog(playerid, DLG_GIOITINH, DIALOG_STYLE_LIST, "Cai dat ( gioi tinh )", "Nam\nNu\nLGBT", ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][3]) // quoc tich
	{
		ShowPlayerDialog(playerid, DLG_NATION, DIALOG_STYLE_LIST, "Cai dat ( quoc tich )", "Viet Nam", ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][4]) // skin
	{
		ShowPlayerMenuSkin(playerid);
		SetPVarInt(playerid, "SelectSkin_", 1);
	}
	if(playertextid == MainRegisterPTD[playerid][6])
	{
		new login_string[1280];
		format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} den voi {3366ff}LS-RP{ffffff}", player_get_name(playerid, 1));
		ShowPlayerDialog(playerid, DLG_REGISTER,DIALOG_STYLE_PASSWORD, "Dang ky", login_string, ">>", "<<");
	}
	if(playertextid == RegisterPTD[playerid][9]) // lui 
	{
		if(CharSkinSelect[playerid] > 1)
		{
			CharSkinSelect[playerid]-=1;
			PlayerTextDrawSetPreviewModel(playerid, RegisterPTD[playerid][8], CharSkinSelect[playerid]);
			ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][8]);
		}
		else{
			SendClientMessage(playerid, -1, "Ban khong the thuc hien thao tac");
			HienTextdraw(playerid, "Ban khong the thuc hien thao tac", 3000);
		}
	}
	if(playertextid == RegisterPTD[playerid][10]) // toi 
	{
		if(CharSkinSelect[playerid] < 300)
		{
			CharSkinSelect[playerid]+=1;
			PlayerTextDrawSetPreviewModel(playerid, RegisterPTD[playerid][8], CharSkinSelect[playerid]);
			ReloadPlayerTextDraw(playerid, RegisterPTD[playerid][8]);
		}
		else{
			SendClientMessage(playerid, -1, "Ban khong the thuc hien thao tac");
			HienTextdraw(playerid, "Ban khong the thuc hien thao tac", 3000);
		}
	}
	if(playertextid == RegisterPTD[playerid][11])
	{
		if(GetPVarInt(playerid, "SelectSkin_")==1)
		{
			ShowPlayerDialog(playerid, DLG_SKIN, DIALOG_STYLE_INPUT, "Cai dat skin","Nhap id skin ban muon chon:", ">>", "<<");
		}
	}
	if(playertextid == RegisterPTD[playerid][12])
	{
		if(GetPVarInt(playerid, "SelectSkin_")==1)
		{
			Character[playerid][char_Skin] = CharSkinSelect[playerid];
			SendClientMessage(playerid, -1, "[!] Cai dat thanh cong");
			HienTextdraw(playerid, "~g~Cai dat skin thanh cong", 3000);
			HidePlayerMenuSkin(playerid);
			DeletePVar(playerid, "SelectSkin_");
		}
	}
	if(playertextid == RegisterPTD[playerid][5])
	{
		if(GetPVarInt(playerid, "SelectSkin_")==0)
		{
			ShowPlayerDialog(playerid, DLG_NOTE, DIALOG_STYLE_INPUT, "Cai dat ( mo ta nhan vat )", "Nhap mo ta", ">>", "<<");
		}
		else{
			SendClientMessage(playerid, -1, "[!] Ban dang chon skin , khong the thuc hien thao tac khac");
			HienTextdraw(playerid, "~r~Ban dang chon skin , khong the thuc hien thao tac khac", 3000);
		}
	}
	if(playertextid == MainRegisterPTD[playerid][8])
	{
		new pass_reg[128];
		GetPVarString(playerid, "UserPassReg_", pass_reg, sizeof(pass_reg));
		if(isnull(pass_reg))
		{
			HienTextdraw(playerid, "~r~Vui long nhap mat khau", 3000);
		}
		new 
			reg_query[320];
		
		mysql_format(Handle(), reg_query, 320, "INSERT INTO `accounts` (Username, Password) VALUES ('%s', '%s')", player_get_name(playerid, false), pass_reg);
		mysql_tquery(Handle(), reg_query, "OnAccountRegister", "i", playerid);

		new reg_queryzzz[1280], Cache:acc_cache;
		mysql_format(Handle(), reg_queryzzz, sizeof(reg_queryzzz), "SELECT * FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
		acc_cache = mysql_query(Handle(), reg_queryzzz);
		if(cache_num_rows())
		{
			cache_get_value_name_int(0,"id", Character[playerid][char_account_id]);
		}
		cache_delete(acc_cache);
		HidePlayerMainRegister(playerid);
	}
	if(playertextid == RegisterPTD[playerid][6])
	{
		if(isnull(Character[playerid][char_Note])) SendClientMessage(playerid, -1, "[!] Ban chua cai dat mo ta nhan vat");
		if(Character[playerid][char_Birthday][0] <= 0 || Character[playerid][char_Birthday][1] <= 0 || Character[playerid][char_Birthday][2] <= 0) SendClientMessage(playerid, -1, "[!] Ban chua cai dat tuoi");
		if(Character[playerid][char_GioiTinh]!=1 && Character[playerid][char_GioiTinh]!=2 && Character[playerid][char_GioiTinh]!=3) SendClientMessage(playerid, -1, "[!] Ban chua cai dat gioi tinh");
		if(Character[playerid][char_Nation] != 1) SendClientMessage(playerid, -1, "[!] Ban chua cai dat quoc tich");
		if(Character[playerid][char_Skin] == 0) SendClientMessage(playerid, -1, "[!] Ban chua cai dat skin");
		new query_reg[1280];
		mysql_format(Handle(), query_reg, sizeof(query_reg), "UPDATE `players` SET \
			`BirthDay` = '%d', \
			`BirthMonth` = '%d', \
			`BirthYear` = '%d', \
			`Gender` = '%d', \
			`QuocTich` = '%d',\
			`Skin` = '%d', `Note` = '%s' WHERE `PlayerName` = '%s'",
			Character[playerid][char_Birthday][0],
			Character[playerid][char_Birthday][1],
			Character[playerid][char_Birthday][2],
			Character[playerid][char_GioiTinh],
			Character[playerid][char_Nation],
			Character[playerid][char_Skin],
			Character[playerid][char_Note],
			player_get_name(playerid, false));
		new Cache:UpdateCache;
		UpdateCache = mysql_query(Handle(), query_reg);
		SendClientMessage(playerid, -1, "Hoan tat cai dat");
		HidePlayerMenuRegister(playerid);
		
		new query[240];
		format(query, sizeof(query), "SELECT * FROM `players` WHERE `AccID` = '%s'", Character[playerid][char_account_id]);
		mysql_tquery(Handle(), query, "OnCharacterLoad", "i", playerid);

		ShowPlayerSpawnMenu(playerid);
		print(query_reg);
		cache_delete(UpdateCache);
	}

	//end

	for(new char_click = 4 ; char_click < 7; char_click++)
	{
		if(playertextid == SelectCharPTD[playerid][char_click])
		{
			if(IsLoadChar(playerid, char_click-4))
			{
				SetPVarInt(playerid,"CharSelected_", char_click-4);
				
				HideCharacterSelect(playerid);
				CreateActorSelect(playerid,char_click-4, CharSelectInfo[playerid][cs_skin][char_click-4]);
				ShowInfoCharacter(playerid, char_click-4);
			}
			else
			{
				HideCharacterSelect(playerid);
				SetPVarInt(playerid, "CharSelect_",char_click-4);
				ShowPlayerDialog(playerid, dialog_charCreate, DIALOG_STYLE_INPUT, "Tao nhan vat.", "Nhap ten nhan vat ban muon tao.", "Tao", "Tro lai");				
			}
		}
	}
	if(playertextid == InfoCharPTD[playerid][7])
	{
		new Char_Selected = GetPVarInt(playerid,"CharSelected_");
		HideInfoCharacter(playerid);

		SetPlayerName(playerid, character_Name_data[playerid][Char_Selected]);
				
		new query[240];
		format(query, sizeof(query), "SELECT * FROM `players` WHERE `PlayerName` = '%s'", player_get_name(playerid, false));
		mysql_tquery(Handle(), query, "OnCharacterLoad", "i", playerid);
		SetPVarInt(playerid,"CharSelected_", 1);
	}
	// if(IsOpenSpawnMenu(playerid))
	// {
	if(playertextid == SpawnLSRP[playerid][1]) // Home
	{
		HienTextdraw(playerid, "Tinh nang dang doc update, vui long chon vi tri khac.", 5000);
	}
	if(playertextid == SpawnLSRP[playerid][2]) // Hien tai
	{
		SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], Character[playerid][char_last_Pos][0], Character[playerid][char_last_Pos][1],Character[playerid][char_last_Pos][2],Character[playerid][char_last_Pos][3],0, 0,0, 0,0, 0);
		FadeOutPlayerScreen(playerid);
		SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
		HidePlayerSpawnMenu(playerid);
		PlayerSetupping[playerid] = 0;

		OnPlayerLoad(playerid);
	}
	if(playertextid == SpawnLSRP[playerid][3]) // Newbie Spawn
	{
		SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], 1754.7391,-1895.4344,13.5870,0,0, 0,0, 0,0, 0);
		FadeOutPlayerScreen(playerid);
  		SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
		HidePlayerSpawnMenu(playerid);
		PlayerSetupping[playerid] = 0;
		OnPlayerLoad(playerid);
	}
	if(playertextid == LoginPTD[playerid][6])
	{
		new login_string[1280];
		format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}", player_get_name(playerid, 1));
		ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_PASSWORD, "Dang Nhap", login_string, ">>", "<<");
	}
	if(playertextid == LoginPTD[playerid][8])
	{
		new Pass_str[128];
		GetPVarString(playerid, "UserPass_", Pass_str, sizeof(Pass_str));

		if(isnull(Pass_str))
		{
			SendClientMessage(playerid, -1, "[!] Ban chua nhap mat khau !");
		}

		if(!strcmp(account_get_password(player_get_name(playerid, false)), Pass_str))
		{
			new queryzzz[128], Cache:acc_cache;
			mysql_format(Handle(), queryzzz, sizeof(queryzzz), "SELECT * FROM `accounts` WHERE `Username` = '%s'", player_get_name(playerid, false));
			acc_cache = mysql_query(Handle(), queryzzz);
			if(cache_num_rows())
			{
				cache_get_value_name_int(0,"id", Character[playerid][char_account_id]);
			}
			cache_delete(acc_cache);
			character_Select(playerid);
			HideLoginPTD(playerid);

			Character[playerid][char_Login] = true;
		}
		else 
		{
            PlayerTextDrawSetString(playerid, LoginPTD[playerid][6], "Sai mat khau");
            HienTextdraw(playerid, "~r~Ban da nhap sai mat khau, vui long nhap lai.", 5000);
            ReloadPlayerTextDraw(playerid, LoginPTD[playerid][6]);
		}
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DLG_DeleteItem:
		{
			if(response)
			{
				new string[555];
				format(string, sizeof(string), "[{212C58}LS-RP{ffffff}] Ban da xoa thanh cong vat pham {B31312}%s {ffffff}ra khoi tui do.", iItem_info[pInventory[playerid][invSlot][PlayerSelectSlot[playerid]]][item_name]);
				SendClientMessage(playerid, -1, string);
				SendClientMessage(playerid, -1, "[{B31312}DELETE ITEM{ffffff}] {EA906C}Neu day la nham lan, hay nhanh chong chup man hinh lai va bao voi admin.");
				InvWeight[playerid] -= iItem_info[pInventory[playerid][invSlot][PlayerSelectSlot[playerid]]][item_weight];
				pInventory[playerid][invSlot][PlayerSelectSlot[playerid]] = 0;
				pInventory[playerid][invSlotAmount][PlayerSelectSlot[playerid]] = 0;
				for(new i = 5; i < 12; i++)
				{
					PlayerTextDrawHide(playerid, InvPTD[playerid][i]);
				}
				SetPVarInt(playerid, #detailstatus, 0);
				PlayerPlaySound(playerid, 1135, 0.0, 0.0, 0.0);
				inventory_show(playerid);
				PlayerSelectSlot[playerid] = -1;
			}
			else
			{
				SendClientMessage(playerid, -1, "[{212C58}LS-RP{ffffff}] Ban da khong xoa vat pham.");
			}
		}
		case DLG_LOGIN:
		{
			if(response)
			{
				if(isnull(inputtext))
				{
					new login_string[128];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}\nVui long nhap mat khau !", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
				}
				if(strlen(inputtext) < 64)
				{
					SetPVarString(playerid, "UserPass_", inputtext);
					new pass_string[128];
					for(new pass_hide = 0 ; pass_hide < strlen(inputtext); pass_hide++)
					{
						strcat(pass_string, ".");
					}
					PlayerTextDrawSetString(playerid, LoginPTD[playerid][6], pass_string);
					ReloadPlayerTextDraw(playerid, LoginPTD[playerid][6]);
				}
				else
				{
					new login_string[128];
					format(login_string, sizeof(login_string), "{ffffff}Chao mung {3366ff}%s{ffffff} tro lai voi {3366ff}LS-RP{ffffff}\nMat khau qua dai !", player_get_name(playerid, 1));
					ShowPlayerDialog(playerid, DLG_LOGIN,DIALOG_STYLE_INPUT, "Dang Nhap", login_string, ">>", "<<");
				}
			}
		}
	}
}
public OnPlayerUpdate(playerid)
{
	UpdateTextTime(playerid);
	return 1;
}
public OnPlayerSpawn(playerid)
{
	ShowPlayerTextTime(playerid);
	SetPlayerSkin(playerid,Character[playerid][char_Skin]);
	ResetPlayerWeapons(playerid);
	GivePlayerMoney(playerid, Character[playerid][char_Cash]);
	SetPlayerHealth(playerid, Character[playerid][char_health]);
	SetPlayerArmour(playerid, Character[playerid][char_armour]);
	SetPlayerVirtualWorld(playerid, Character[playerid][char_VW]);
	SetPlayerInterior(playerid, Character[playerid][char_Interior]);
	return 1;
}
forward OnPlayerLoad(playerid);
public OnPlayerLoad(playerid)
{
	TogglePlayerSpectating(playerid, 0);
	
	new sdm[1280];
	mysql_format(Handle(), sdm, sizeof(sdm), "[{212c58}LS-RP{ffffff}] Chao mung ban den voi may chu, {0066ff}%s.", player_get_name(playerid));
	SendClientMessage(playerid, -1, sdm);
	PlayerSetupping[playerid] = 0;
	if(Character[playerid][char_Admin] > 0)
	{
		new msgzz[1280];
		format(msgzz, sizeof(msgzz),"Xin Chao {0000EE}%s{FFFFFF}, ban la %s.", player_get_name(playerid), GetAdmin(playerid));
		SendClientMessage(playerid, -1, msgzz);
	}
	return 1;
}
forward ForceSpawn(playerid);
public ForceSpawn(playerid)
{
	SendClientMessage(playerid, -1, "Hi");
	SpawnPlayer(playerid);
}

public OnPlayerRequestClass(playerid, classid)
{
	if(Character[playerid][char_Login] == true){
		TogglePlayerSpectating(playerid, 0);
		SetTimerEx("ForceSpawn", 1000,0, "i", playerid);
	}
	if(Character[playerid][char_Login] == false)
	{
		TogglePlayerSpectating(playerid, 1);
		SetPlayerJoinCamera(playerid);
	}
	return 1;
}
