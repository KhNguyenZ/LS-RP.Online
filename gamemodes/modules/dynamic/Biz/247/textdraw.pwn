#include <YSI_Coding\y_hooks>
hook OnGameModeInit()
{
	for(new i = 0 ; i < MAX_STORE_PAGE; i++)
	{
		StoreSlot[i] = 0;
	}
	return 1;
}
hook OnPlayerConnect(playerid)
{
	StorePTD[playerid][0] = CreatePlayerTextDraw(playerid, 109.000, 64.000, "mdl-2006:main");
	PlayerTextDrawTextSize(playerid, StorePTD[playerid][0], 256.000, 350.000);
	PlayerTextDrawAlignment(playerid, StorePTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, StorePTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, StorePTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, StorePTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, StorePTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, StorePTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, StorePTD[playerid][0], 1);	

	StoreButton[playerid][0] = CreatePlayerTextDraw(playerid, 312.000, 373.000, "LD_BEAT:right");
	PlayerTextDrawTextSize(playerid, StoreButton[playerid][0], 33.000, 28.000);
	PlayerTextDrawAlignment(playerid, StoreButton[playerid][0], 1);
	PlayerTextDrawColor(playerid, StoreButton[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, StoreButton[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, StoreButton[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreButton[playerid][0], 255);
	PlayerTextDrawFont(playerid, StoreButton[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, StoreButton[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, StoreButton[playerid][0], 1);

	StoreButton[playerid][1] = CreatePlayerTextDraw(playerid, 123.000, 373.000, "LD_BEAT:left");
	PlayerTextDrawTextSize(playerid, StoreButton[playerid][1], 33.000, 28.000);
	PlayerTextDrawAlignment(playerid, StoreButton[playerid][1], 1);
	PlayerTextDrawColor(playerid, StoreButton[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, StoreButton[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, StoreButton[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreButton[playerid][1], 255);
	PlayerTextDrawFont(playerid, StoreButton[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, StoreButton[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, StoreButton[playerid][1], 1);

	StoreButton[playerid][2] = CreatePlayerTextDraw(playerid, 220.000, 377.000, "1/100");
	PlayerTextDrawLetterSize(playerid, StoreButton[playerid][2], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, StoreButton[playerid][2], 1);
	PlayerTextDrawColor(playerid, StoreButton[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, StoreButton[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, StoreButton[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreButton[playerid][2], 150);
	PlayerTextDrawFont(playerid, StoreButton[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, StoreButton[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, StoreButton[playerid][2], 1);

	StoreInfo[playerid][0] = CreatePlayerTextDraw(playerid, 358.000, 68.500, "mdl-2006:thongtin");
	PlayerTextDrawTextSize(playerid, StoreInfo[playerid][0], 173.000, 197.000);
	PlayerTextDrawAlignment(playerid, StoreInfo[playerid][0], 1);
	PlayerTextDrawColor(playerid, StoreInfo[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, StoreInfo[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, StoreInfo[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreInfo[playerid][0], 255);
	PlayerTextDrawFont(playerid, StoreInfo[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, StoreInfo[playerid][0], 1);

	StoreInfo[playerid][1] = CreatePlayerTextDraw(playerid, 391.000, 109.000, "CON ME MAY PHAT BEO");
	PlayerTextDrawLetterSize(playerid, StoreInfo[playerid][1], 0.310, 2.198);
	PlayerTextDrawAlignment(playerid, StoreInfo[playerid][1], 1);
	PlayerTextDrawColor(playerid, StoreInfo[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, StoreInfo[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, StoreInfo[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreInfo[playerid][1], 150);
	PlayerTextDrawFont(playerid, StoreInfo[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, StoreInfo[playerid][1], 1);

	StoreInfo[playerid][2] = CreatePlayerTextDraw(playerid, 358.000, 68.500, "mdl-2006:thongtin");
	PlayerTextDrawTextSize(playerid, StoreInfo[playerid][2], 173.000, 197.000);
	PlayerTextDrawAlignment(playerid, StoreInfo[playerid][2], 1);
	PlayerTextDrawColor(playerid, StoreInfo[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, StoreInfo[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, StoreInfo[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreInfo[playerid][2], 255);
	PlayerTextDrawFont(playerid, StoreInfo[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, StoreInfo[playerid][2], 1);

	StoreInfo[playerid][3] = CreatePlayerTextDraw(playerid, 374.000, 165.000, "DUNG DE DAM CHET ME THANG PHAT BEO NGU SI DAN DON | LS-RP.Online | Roleplay dinh cao | Aafasfbhasfbabhfasbfbasfasfasfasadavsdga");
	PlayerTextDrawLetterSize(playerid, StoreInfo[playerid][3], 0.189, 1.699);
	PlayerTextDrawTextSize(playerid, StoreInfo[playerid][3], 513.000, 0.000);
	PlayerTextDrawAlignment(playerid, StoreInfo[playerid][3], 1);
	PlayerTextDrawColor(playerid, StoreInfo[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, StoreInfo[playerid][3], 1);
	PlayerTextDrawSetOutline(playerid, StoreInfo[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreInfo[playerid][3], 150);
	PlayerTextDrawFont(playerid, StoreInfo[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, StoreInfo[playerid][3], 1);

	StoreInfo[playerid][4] = CreatePlayerTextDraw(playerid, 403.500, 237.000, "MUA");
	PlayerTextDrawLetterSize(playerid, StoreInfo[playerid][4], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, StoreInfo[playerid][4], 16.000, 57.000);
	PlayerTextDrawAlignment(playerid, StoreInfo[playerid][4], 2);
	PlayerTextDrawColor(playerid, StoreInfo[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, StoreInfo[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, StoreInfo[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreInfo[playerid][4], 150);
	PlayerTextDrawFont(playerid, StoreInfo[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, StoreInfo[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, StoreInfo[playerid][4], 1);

	StoreInfo[playerid][5] = CreatePlayerTextDraw(playerid, 480.500, 237.000, "HUY");
	PlayerTextDrawLetterSize(playerid, StoreInfo[playerid][5], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, StoreInfo[playerid][5], 16.000, 57.000);
	PlayerTextDrawAlignment(playerid, StoreInfo[playerid][5], 2);
	PlayerTextDrawColor(playerid, StoreInfo[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, StoreInfo[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, StoreInfo[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreInfo[playerid][5], 150);
	PlayerTextDrawFont(playerid, StoreInfo[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, StoreInfo[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, StoreInfo[playerid][5], 1);
	return 1;
}

func:CreateStoreItem(page,itemid)
{
	if(INVALID_ITEM(itemid))
	{
		if(StoreSlot[page] < 12)
		{
			StoreItem[playerid][StoreSlot[page]] = CreatePlayerTextDraw(playerid, 292.000, 109.000+(StoreSlot[page]*21), StoreListItem[itemid][1]);
			PlayerTextDrawLetterSize(playerid, StoreItem[playerid][1], 0.300, 1.500);
			PlayerTextDrawTextSize(playerid, StoreItem[playerid][1], 11.000, 101.000);
			PlayerTextDrawAlignment(playerid, StoreItem[playerid][1], 2);
			PlayerTextDrawColor(playerid, StoreItem[playerid][1], -1);
			PlayerTextDrawSetShadow(playerid, StoreItem[playerid][1], 1);
			PlayerTextDrawSetOutline(playerid, StoreItem[playerid][1], 0);
			PlayerTextDrawBackgroundColor(playerid, StoreItem[playerid][1], 150);
			PlayerTextDrawFont(playerid, StoreItem[playerid][1], 1);
			PlayerTextDrawSetProportional(playerid, StoreItem[playerid][1], 1);
			PlayerTextDrawSetSelectable(playerid, StoreItem[playerid][1], 1);
			StoreSlot[page]+=1;
		}
		else if(StoreSlot[page] < 24)
		{
			StoreItem[playerid][StoreSlot[page]] = CreatePlayerTextDraw(playerid, 175.000, 109.000+(StoreSlot[page]*21), "ITEM_1_MAX_10_ZAD");
			PlayerTextDrawLetterSize(playerid, StoreItem[playerid][StoreSlot[page]], 0.300, 1.500);
			PlayerTextDrawTextSize(playerid, StoreItem[playerid][StoreSlot[page]], 11.000, 101.000);
			PlayerTextDrawAlignment(playerid, StoreItem[playerid][StoreSlot[page]], 2);
			PlayerTextDrawColor(playerid, StoreItem[playerid][StoreSlot[page]], -1);
			PlayerTextDrawSetShadow(playerid, StoreItem[playerid][StoreSlot[page]], 1);
			PlayerTextDrawSetOutline(playerid, StoreItem[playerid][StoreSlot[page]], 0);
			PlayerTextDrawBackgroundColor(playerid, StoreItem[playerid][StoreSlot[page]], 150);
			PlayerTextDrawFont(playerid, StoreItem[playerid][StoreSlot[page]], 1);
			PlayerTextDrawSetProportional(playerid, StoreItem[playerid][StoreSlot[page]], 1);
			PlayerTextDrawSetSelectable(playerid, StoreItem[playerid][StoreSlot[page]], 1);
			StoreSlot[page]+=1;
		}
		else SendClientMessage(playerid, -1, "Page da max item");
		
	}
	else SendClientMessage(playerid, -1, "[!] Invaild item");
	return 1;
}

func:BuyStoreItem(itemid)
{
	switch(itemid)
	{
		case 1: // Phone
		{
			
		}
		case 2: // Danh ba
		case 3: // Dice
		case 4: // Can xang
		case 5: // Day thung
		case 6: // Nuoc uong
		case 7: // Xi ga
		case 8: // Binh son
		case 9: // Radio
		case 10: // Mat na
		default:
	}
}