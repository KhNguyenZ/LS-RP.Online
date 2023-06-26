#include <a_samp>
#include <YSI\y_hooks>

func:add_item_player(playerid, itemid, amount)
{
	for(new i = 0; i < 20; i++)
	{
		if(amount <= iItem_info[itemid][item_maxamount])
		{
			new Float:tempWeight = InvWeight[playerid] + (iItem_info[itemid][item_weight]*amount);
			if(tempWeight < InvMaxWeight[playerid])
			{
				if(pInventory[playerid][invSlot][i] == 0)
				{
					pInventory[playerid][invSlotAmount][i] = amount;
					pInventory[playerid][invSlot][i] = itemid;
					InvWeight[playerid] += (iItem_info[itemid][item_weight]*amount);
					break;
				}
			}
			else if (tempWeight > InvMaxWeight[playerid])
			{
				new string[255], name[34];
				GetPlayerName(playerid, name, 34);
				format(string, sizeof(string), "[{212C58}LS-RP{ffffff}] %s da dat toi da can nang [{EA906C}%0.2f{ffffff}/{EA906C}%0.2f{ffffff}].", name, tempWeight, InvMaxWeight[playerid]);
				SendClientMessage(playerid, -1, string);
				break;
			}
		}
		else
		{
			new string[255];
			format(string, sizeof(string), "[{212C58}LS-RP{ffffff}] Item %s chi co the co toi da %d.", iItem_info[itemid][item_name], iItem_info[itemid][item_maxamount]);
			SendClientMessage(playerid, -1, string);
			break;
		}
	}
	return 1;
}


hook OnPlayerConnect(playerid)
{
	InvPTD[playerid][0] = CreatePlayerTextDraw(playerid, 324.000, 197.000, "mdl-2004:main");
	PlayerTextDrawTextSize(playerid, InvPTD[playerid][0], 304.000, 232.000);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, InvPTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][0], 1);

	InvPTD[playerid][1] = CreatePlayerTextDraw(playerid, 583.000, 230.000, ""); // weight
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][1], 0.230, 0.898);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, InvPTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][1], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][1], 1);

	InvPTD[playerid][2] = CreatePlayerTextDraw(playerid, 584.000, 277.000, ""); // slot
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][2], 0.230, 0.898);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][2], 2);
	PlayerTextDrawColor(playerid, InvPTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][2], 1);

	InvPTD[playerid][3] = CreatePlayerTextDraw(playerid, 584.000, 252.000, ""); //pweight
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][3], 0.230, 0.898);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][3], 2);
	PlayerTextDrawColor(playerid, InvPTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][3], 1);

	InvPTD[playerid][4] = CreatePlayerTextDraw(playerid, 610.000, 198.000, "x");
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][4], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, InvPTD[playerid][4], 616.000, 13.000);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, InvPTD[playerid][4], 1);

	InvPTD[playerid][5] = CreatePlayerTextDraw(playerid, 218.000, 197.000, "mdl-2004:vatpham");
	PlayerTextDrawTextSize(playerid, InvPTD[playerid][5], 113.000, 178.000);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, InvPTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][5], 1);

	InvPTD[playerid][6] = CreatePlayerTextDraw(playerid, 238.000, 228.000, ""); // ten vat pham
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][6], 0.190, 1.299);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][6], 1);

	InvPTD[playerid][7] = CreatePlayerTextDraw(playerid, 249.000, 243.000, ""); // so luong
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][7], 0.189, 1.098);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][7], 1);

	InvPTD[playerid][8] = CreatePlayerTextDraw(playerid, 243.000, 271.000, ""); // mo ta dai vai lon cung dc
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][8], 0.159, 0.898);
	PlayerTextDrawTextSize(playerid, InvPTD[playerid][8], 319.000, -242.000);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][8], 1);

	InvPTD[playerid][9] = CreatePlayerTextDraw(playerid, 235.000, 323.000, "Su dung");
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][9], 0.189, 0.898);
	PlayerTextDrawTextSize(playerid, InvPTD[playerid][9], 273.000, 10.000);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][9], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, InvPTD[playerid][9], 1);

	InvPTD[playerid][10] = CreatePlayerTextDraw(playerid, 288.000, 323.000, "Xoa bo");
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][10], 0.189, 0.898);
	PlayerTextDrawTextSize(playerid, InvPTD[playerid][10], 313.000, 10.000);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][10], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, InvPTD[playerid][10], 1);

	InvPTD[playerid][11] = CreatePlayerTextDraw(playerid, 249.000, 257.000, ""); // can nang
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][11], 0.189, 1.098);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][11], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][11], 2);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][11], 1);


	inventory_slot_create_slot(playerid);
	return 1;
}


func:inventory_show(playerid)
{
	new string[255];
	format(string, sizeof(string), "%0.2f/%0.2f", InvWeight[playerid], InvMaxWeight[playerid]);
	PlayerTextDrawSetString(playerid, InvPTD[playerid][1], string);
	for(new i = 0; i < 20; i++)
	{
		if(i < 3)
		{
			PlayerTextDrawShow(playerid, InvHSlotPTD[playerid][i]);
		}
		if(i < 5)
		{
			PlayerTextDrawShow(playerid, InvPTD[playerid][i]);
		}
		if(i < 20)
		{
			if(i == PlayerSelectSlot[playerid])
			{
				PlayerTextDrawColor(playerid, InvSlotPTD[playerid][i], 0x1d47d1DD);
				PlayerTextDrawSetString(playerid, InvSlotPTD[playerid][i], iItem_info[pInventory[playerid][invSlot][i]][item_strtd]);
				PlayerTextDrawShow(playerid, InvSlotPTD[playerid][i]);
			}
			else
			{
				PlayerTextDrawColor(playerid, InvSlotPTD[playerid][i], 0xFFFFFFFF);
				PlayerTextDrawSetString(playerid, InvSlotPTD[playerid][i], iItem_info[pInventory[playerid][invSlot][i]][item_strtd]);
				PlayerTextDrawShow(playerid, InvSlotPTD[playerid][i]);
			}
		}
	}
	SelectTextDraw(playerid, 0x0d142bAA);
	SetPVarInt(playerid, #inventorystatus, 1);
	return 1;
}
func:inventory_hide(playerid)
{
	for(new i = 0; i < 20; i++)
	{
		if(i < 3)
		{
			PlayerTextDrawHide(playerid, InvHSlotPTD[playerid][i]);
		}
		if(i < 5)
		{
			PlayerTextDrawHide(playerid, InvPTD[playerid][i]);
		}
		if(i < 20)
		{
			PlayerTextDrawHide(playerid, InvSlotPTD[playerid][i]);
		}
	}
	CancelSelectTextDraw(playerid);
	SetPVarInt(playerid, #inventorystatus, 0);
	return 1;
}
// 5x4
func:inventory_slot_create_slot(playerid)
{
	for(new j = 0; j < 5; j++)
	{
		for(new i = 0; i < 4; i++)
		{
			InvSlotPTD[playerid][4*j+i] = CreatePlayerTextDraw(playerid, 335.500 + (28.5*i), 219.000 + (j*36), "");
			PlayerTextDrawTextSize(playerid, InvSlotPTD[playerid][4*j+i], 31.000, 37.000);
			PlayerTextDrawAlignment(playerid, InvSlotPTD[playerid][4*j+i], 1);
			PlayerTextDrawColor(playerid, InvSlotPTD[playerid][4*j+i], -1);
			PlayerTextDrawSetShadow(playerid, InvSlotPTD[playerid][4*j+i], 0);
			PlayerTextDrawSetOutline(playerid, InvSlotPTD[playerid][4*j+i], 0);
			PlayerTextDrawBackgroundColor(playerid, InvSlotPTD[playerid][4*j+i], 255);
			PlayerTextDrawFont(playerid, InvSlotPTD[playerid][4*j+i], 4);
			PlayerTextDrawSetProportional(playerid, InvSlotPTD[playerid][4*j+i], 1);
			PlayerTextDrawSetSelectable(playerid, InvSlotPTD[playerid][4*j+i], 1);
		}
	}
	for(new i = 0; i < 3; i++)
	{
		InvHSlotPTD[playerid][i] = CreatePlayerTextDraw(playerid, 465.000 + (28.5*i), 326.000, "mdl-2004:slot");
		PlayerTextDrawTextSize(playerid, InvHSlotPTD[playerid][i], 31.000, 37.000);
		PlayerTextDrawAlignment(playerid, InvHSlotPTD[playerid][i], 1);
		PlayerTextDrawColor(playerid, InvHSlotPTD[playerid][i], -1);
		PlayerTextDrawSetShadow(playerid, InvHSlotPTD[playerid][i], 0);
		PlayerTextDrawSetOutline(playerid, InvHSlotPTD[playerid][i], 0);
		PlayerTextDrawBackgroundColor(playerid, InvHSlotPTD[playerid][i], 255);
		PlayerTextDrawFont(playerid, InvHSlotPTD[playerid][i], 4);
		PlayerTextDrawSetProportional(playerid, InvHSlotPTD[playerid][i], 1);
		PlayerTextDrawSetSelectable(playerid, InvHSlotPTD[playerid][i], 1);
	}
	InvISlotPTD[playerid][0] = CreatePlayerTextDraw(playerid, 465.000, 362.000, "mdl-2004:slot");
	PlayerTextDrawTextSize(playerid, InvISlotPTD[playerid][0], 31.000, 37.000);
	PlayerTextDrawAlignment(playerid, InvISlotPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, InvISlotPTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, InvISlotPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, InvISlotPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, InvISlotPTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, InvISlotPTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, InvISlotPTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, InvISlotPTD[playerid][0], 1);
}
	
CMD:invtest(playerid, params[])
{
	inventory_show(playerid);
	PlayerPlaySound(playerid, 1039, 0.0, 0.0, 0.0);

	return 1;
}
CMD:invtest1(playerid, params[])
{
	add_item_player(playerid, 1, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest2(playerid, params[])
{
	add_item_player(playerid, 2, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest3(playerid, params[])
{
	add_item_player(playerid, 3, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest4(playerid, params[])
{
	add_item_player(playerid, 4, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest5(playerid, params[])
{
	add_item_player(playerid, 5, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest6(playerid, params[])
{
	add_item_player(playerid, 6, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest7(playerid, params[])
{
	add_item_player(playerid, 7, 1);
	inventory_show(playerid);

	return 1;
}

CMD:invtest8(playerid, params[])
{
	add_item_player(playerid, 8, 1);
	inventory_show(playerid);

	return 1;
}
CMD:invtest9(playerid, params[])
{
	add_item_player(playerid, 9, 1);
	inventory_show(playerid);

	return 1;
}
