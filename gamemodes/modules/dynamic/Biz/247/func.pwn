func:INVALID_ITEM(itemid)
{
	if(itemid > 10) return 0;
	else return 1;
}
func:ShowPlayerStore(playerid, page)
{
	StoreSlot[page]=0;
	TempVar[playerid] = 0.0;
	SelectTextDraw(playerid, -1);
	PlayerTextDrawShow(playerid, StorePTD[playerid][0]);
	SetPVarInt(playerid, "PlayerPage_", page);

	new pages = StoreSlot[page]/24;
	if(pages < 1) pages = 1;

	if(page>1)
	{
		PlayerTextDrawShow(playerid, StoreButton[playerid][0]);
		PlayerTextDrawShow(playerid, StoreButton[playerid][1]);
	}
	new page_str[128];
	format(page_str, sizeof(page_str), "%d/%d", page, pages);
	PlayerTextDrawSetString(playerid, StoreButton[playerid][2], page_str);
	PlayerTextDrawShow(playerid, StoreButton[playerid][2]);

	for(new i = 0; i < sizeof(ListStoreItem); i++)
	{
		CreateStoreItem(playerid, page, i);
	}
	return 1;
}
func:HidePlayerStore(playerid)
{
	PlayerTextDrawHide(playerid, StorePTD[playerid][0]);
	PlayerTextDrawHide(playerid, StoreButton[playerid][0]);
	PlayerTextDrawHide(playerid, StoreButton[playerid][1]);
	PlayerTextDrawHide(playerid, StoreButton[playerid][2]);

	for(new i = 0 ; i < StoreSlot[GetPVarInt(playerid,"PlayerPage_")]; i++)
	{
		PlayerTextDrawHide(playerid, StoreItem[playerid][StoreSlot[GetPVarInt(playerid,"PlayerPage_")]]);
	}
	for(new i = 0 ; i < 6; i++)
	{
		PlayerTextDrawHide(playerid, StoreItemInfo[playerid][i]);
	}
	DeletePVar(playerid, "PlayerPage_");	
	return 1;
}

CMD:store(playerid, params[])
{
	ShowPlayerStore(playerid, 1);
	return 1;
}
CMD:hidestore(playerid, params[])
{
	HidePlayerStore(playerid);
	return 1;
}