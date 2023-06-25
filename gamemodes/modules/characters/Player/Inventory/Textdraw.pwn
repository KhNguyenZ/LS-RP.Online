#include <a_samp>
#include <YSI\y_hooks>
#include <YSI_Data\y_iterate>
#define MAX_INVENTORY_PAGE 1
#define MAX_INVENTORY_SLOT 20
new PlayerText: InvPTD[MAX_PLAYERS][5],
	PlayerText: InvHSlotPTD[MAX_PLAYERS][3],
	PlayerText: InvSlotPTD[MAX_PLAYERS][20],
	PlayerText: InvISlotPTD[MAX_PLAYERS][1];
enum Inv_Item{
	item_id,
	item_weight,
	item_strtd[32],
	item_name[64],
}
new iItem_info[][Inv_Item] = {
	{0, 0,"mdl-2004:","Trong"},
	{1, 0.8,"mdl-2004:item_9mm","Glock"},
	{2, 1.0,"mdl-2004:item_9mm","Tec-9"},
	{3, 1.1,"mdl-2004:item_9mm","Uzi"},
	{4, 2.0,"mdl-2004:item_9mm","MP5"},
	{5, 4.0,"mdl-2004:item_ak47","AK-47"},
	{6, 3.5,"mdl-2004:item_ak47","M4A1"},
	{7, 3.5,"mdl-2004:item_spas","Spas-12"},
	{8, 3.0,"mdl-2004:item_spas","Rifle"},
	{9, 4.0,"mdl-2004:item_spas","Sniper"}
};
/*func:add_item_player(playerid, itemid, amount)
{

}*/
hook OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(GetPVarInt(playerid, #inventorystatus) == 1)
	{
		for(new i = 0; i < 20; i++)
		{
			if(playertextid == InvSlotPTD[playerid][i])
			{
				new string[255];
				format(string, sizeof(string), "Slot ID %d", i);
				SendClientMessage(playerid, -1, string);
			}
		}
	}
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

	InvPTD[playerid][1] = CreatePlayerTextDraw(playerid, 583.000, 230.000, "weight");
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][1], 0.230, 0.898);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, InvPTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][1], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][1], 1);

	InvPTD[playerid][2] = CreatePlayerTextDraw(playerid, 584.000, 277.000, "slot");
	PlayerTextDrawLetterSize(playerid, InvPTD[playerid][2], 0.230, 0.898);
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][2], 2);
	PlayerTextDrawColor(playerid, InvPTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][2], 1);

	InvPTD[playerid][3] = CreatePlayerTextDraw(playerid, 584.000, 252.000, "pweight");
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
	PlayerTextDrawAlignment(playerid, InvPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, InvPTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, InvPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, InvPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, InvPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, InvPTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, InvPTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, InvPTD[playerid][4], 1);
	return 1;
}


func:inventory_show(playerid)
{
	for(new i = 0; i++)
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
			PlayerTextDrawSetString(playerid, InvSlotPTD[playerid][i], stringCuozgFixHoDe);
			PlayerTextDrawShow(playerid, InvSlotPTD[playerid][i]);
		}
	}
	SetPVarInt(playerid, #inventorystatus, 1);
}
func:inventory_hide(playerid)
{
	for(new i = 0; i++)
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
	SetPVarInt(playerid, #inventorystatus, 0);
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
	SelectTextDraw(playerid, 0x0d142bAA);
}

CMD:invtest(playerid, params[])
{
	inventory_slot_create_slot(playerid);
	return 1;
}
/* ON PLAYER CLICK
	if(GetPVarInt(playerid, #inventorystatus) == 1)
	{
		for(new i = 0; i < 20; i++)
		{
			if(playertextid == InvSlotPTD[playerid][i])
			{
				new string[255];
				format(string, sizeof(string), "Slot ID %d", i);
				SendClientMessage(playerid, -1, string);
			}
		}
	}
*/
