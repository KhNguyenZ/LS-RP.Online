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

	StoreItemInfo[playerid][0] = CreatePlayerTextDraw(playerid, 358.000, 68.500, "mdl-2006:thongtin");
	PlayerTextDrawTextSize(playerid, StoreItemInfo[playerid][0], 173.000, 197.000);
	PlayerTextDrawAlignment(playerid, StoreItemInfo[playerid][0], 1);
	PlayerTextDrawColor(playerid, StoreItemInfo[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, StoreItemInfo[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, StoreItemInfo[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreItemInfo[playerid][0], 255);
	PlayerTextDrawFont(playerid, StoreItemInfo[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, StoreItemInfo[playerid][0], 1);

	StoreItemInfo[playerid][1] = CreatePlayerTextDraw(playerid, 391.000, 109.000, "CON ME MAY PHAT BEO");
	PlayerTextDrawLetterSize(playerid, StoreItemInfo[playerid][1], 0.310, 2.198);
	PlayerTextDrawAlignment(playerid, StoreItemInfo[playerid][1], 1);
	PlayerTextDrawColor(playerid, StoreItemInfo[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, StoreItemInfo[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, StoreItemInfo[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreItemInfo[playerid][1], 150);
	PlayerTextDrawFont(playerid, StoreItemInfo[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, StoreItemInfo[playerid][1], 1);

	StoreItemInfo[playerid][2] = CreatePlayerTextDraw(playerid, 358.000, 68.500, "mdl-2006:thongtin");
	PlayerTextDrawTextSize(playerid, StoreItemInfo[playerid][2], 173.000, 197.000);
	PlayerTextDrawAlignment(playerid, StoreItemInfo[playerid][2], 1);
	PlayerTextDrawColor(playerid, StoreItemInfo[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, StoreItemInfo[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, StoreItemInfo[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreItemInfo[playerid][2], 255);
	PlayerTextDrawFont(playerid, StoreItemInfo[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, StoreItemInfo[playerid][2], 1);

	StoreItemInfo[playerid][3] = CreatePlayerTextDraw(playerid, 374.000, 165.000, "DUNG DE DAM CHET ME THANG PHAT BEO NGU SI DAN DON | LS-RP.Online | Roleplay dinh cao | Aafasfbhasfbabhfasbfbasfasfasfasadavsdga");
	PlayerTextDrawLetterSize(playerid, StoreItemInfo[playerid][3], 0.189, 1.699);
	PlayerTextDrawTextSize(playerid, StoreItemInfo[playerid][3], 513.000, 0.000);
	PlayerTextDrawAlignment(playerid, StoreItemInfo[playerid][3], 1);
	PlayerTextDrawColor(playerid, StoreItemInfo[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, StoreItemInfo[playerid][3], 1);
	PlayerTextDrawSetOutline(playerid, StoreItemInfo[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreItemInfo[playerid][3], 150);
	PlayerTextDrawFont(playerid, StoreItemInfo[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, StoreItemInfo[playerid][3], 1);

	StoreItemInfo[playerid][4] = CreatePlayerTextDraw(playerid, 403.500, 237.000, "MUA");
	PlayerTextDrawLetterSize(playerid, StoreItemInfo[playerid][4], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, StoreItemInfo[playerid][4], 16.000, 57.000);
	PlayerTextDrawAlignment(playerid, StoreItemInfo[playerid][4], 2);
	PlayerTextDrawColor(playerid, StoreItemInfo[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, StoreItemInfo[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, StoreItemInfo[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreItemInfo[playerid][4], 150);
	PlayerTextDrawFont(playerid, StoreItemInfo[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, StoreItemInfo[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, StoreItemInfo[playerid][4], 1);

	StoreItemInfo[playerid][5] = CreatePlayerTextDraw(playerid, 480.500, 237.000, "HUY");
	PlayerTextDrawLetterSize(playerid, StoreItemInfo[playerid][5], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, StoreItemInfo[playerid][5], 16.000, 57.000);
	PlayerTextDrawAlignment(playerid, StoreItemInfo[playerid][5], 2);
	PlayerTextDrawColor(playerid, StoreItemInfo[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, StoreItemInfo[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, StoreItemInfo[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, StoreItemInfo[playerid][5], 150);
	PlayerTextDrawFont(playerid, StoreItemInfo[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, StoreItemInfo[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, StoreItemInfo[playerid][5], 1);
	return 1;
}

func:CreateStoreItem(playerid, page,itemid)
{
	//printf("Item: %s, Slot:%d",ListStoreItem[itemid][1],StoreSlot[page]);
	TempVar[playerid] = StoreSlot[page]*21;
	new NewVar = StoreSlot[page]*21+(StoreSlot[page]-1);
	if(StoreSlot[page] < 12)
	{
		StoreItem[playerid][StoreSlot[page]] = CreatePlayerTextDraw(playerid, 175.000, 109.000+NewVar, ListStoreItem[itemid][1]);
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
		PlayerTextDrawShow(playerid, StoreItem[playerid][StoreSlot[page]]);
		StoreSlot[page]+=1;
	}
	else
	{
		StoreItem[playerid][StoreSlot[page]] = CreatePlayerTextDraw(playerid, 292.000, 109.000+NewVar, ListStoreItem[itemid][1]);
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
		PlayerTextDrawShow(playerid, StoreItem[playerid][StoreSlot[page]]);
		StoreSlot[page]+=1;
		TempVar[playerid] += 0.1;
	}
	return 1;
}

func:BuyStoreItem(playerid, itemid)
{
	Character[playerid][char_Cash] -= ListStoreItem[itemid][3]
	switch(itemid)
	{
		case 1: // Phone
		{
			if(Character[playerid][char_Phone] == 0){
				Character[playerid][char_Phone]+=1;
				SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 chiec {212c58}Dien Thoai{FFFFFF}");
				HienTextdraw(playerid, "Ban da mua thanh cong 1 chiec ~g~Dien Thoai");
			}
			else SendClientMessage(playerid, -1, "Ban da co vat pham nay !");
		}
		case 2: // Danh ba
		{
			if(Character[playerid][char_DanhBa] == 0){
				Character[playerid][char_DanhBa]+=1;
				SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 cai {212c58}Danh Ba{FFFFFF}");
				HienTextdraw(playerid, "Ban da mua thanh cong 1 cai ~g~Danh Ba");
			}
			else SendClientMessage(playerid, -1, "Ban da co vat pham nay !");
		}
		case 3: // Dice
		{
			if(Character[playerid][char_Dice] == 0){
				Character[playerid][char_Dice]+=1;
				SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 chiec {212c58}Dice{FFFFFF}");
				HienTextdraw(playerid, "Ban da mua thanh cong 1 chiec ~g~Dice");
			}
			else SendClientMessage(playerid, -1, "Ban da co vat pham nay !");
		}
		case 4: // Can xang
		{
			Character[playerid][char_CanXang]+=1;
			SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 {212c58}Can Xang{FFFFFF}");
			HienTextdraw(playerid, "Ban da mua thanh cong 1 ~g~Can Xang");
		}
		case 5: // Day thung
		{
			Character[playerid][char_DayThung]+=1;
			SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 {212c58}Can Xang{FFFFFF}");
			HienTextdraw(playerid, "Ban da mua thanh cong 1 ~g~Can Xang");
		}
		case 6: // Nuoc uong
		{
			Character[playerid][char_Drink]+=1;
			SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 {212c58}Lon Nuoc Uong{FFFFFF}");
			HienTextdraw(playerid, "Ban da mua thanh cong 1 ~g~Lon Nuoc Uong");
		}
		case 7: // Xi ga
		{
			Character[playerid][char_XiGa]+=1;
			SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 dieu {212c58}Xi Ga{FFFFFF}");
			HienTextdraw(playerid, "Ban da mua thanh cong 1 ~g~Xi Ga");
		}
		case 8: // Binh son
		{
			Character[playerid][char_BinhSonXe]+=1;
			SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 chiec {212c58}Binh Son Xe{FFFFFF}");
			HienTextdraw(playerid, "Ban da mua thanh cong 1 ~g~Binh Son Xe");
		}
		case 9: // Radio
		{
			if(Character[playerid][char_Radio] == 0){
				Character[playerid][char_Radio]+=1;
				SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 chiec {212c58}Radio{FFFFFF}");
				HienTextdraw(playerid, "Ban da mua thanh cong 1 chiec ~g~Radio");
			}
			else SendClientMessage(playerid, -1, "Ban da co vat pham nay !");
		}
		case 10: // Mat na
		{
			if(Character[playerid][char_MatNa] == 0){
				Character[playerid][char_MatNa]+=1;
				SendClientMessage(playerid, -1, "Ban da mua thanh cong 1 chiec {212c58}Mat Na{FFFFFF}");
				HienTextdraw(playerid, "Ban da mua thanh cong 1 chiec ~g~Mat Na");
			}
			else SendClientMessage(playerid, -1, "Ban da co vat pham nay !");
		}
		default: SendClientMessage(playerid, -1, "Vat nay nay khong ton tai hoac bi loi , vui long lien he {212c58}Admin{FFFFFF} de duoc ho tro som nhat nhe");
	}
}