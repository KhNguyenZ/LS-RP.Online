#include <YSI_Coding\y_hooks>

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

func:CreateStoreItem(itemid)