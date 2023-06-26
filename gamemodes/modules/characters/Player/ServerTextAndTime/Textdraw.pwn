#include <YSI\y_hooks>
new Text: LSRP[1];
new PlayerText: LSRPTime[MAX_PLAYERS][2];
hook OnGameModeInit()
{
    LSRP[0] = TextDrawCreate(35.000, 427.000, "www.LS-RP.ONLINE");
	TextDrawLetterSize(LSRP[0], 0.180, 1.098);
	TextDrawTextSize(LSRP[0], 4.000, -1.000);
	TextDrawAlignment(LSRP[0], 1);
	TextDrawColor(LSRP[0], -1448498689);
	TextDrawSetShadow(LSRP[0], 0);
	TextDrawSetOutline(LSRP[0], 1);
	TextDrawBackgroundColor(LSRP[0], 150);
	TextDrawFont(LSRP[0], 2);
	TextDrawSetProportional(LSRP[0], 1);
	return 0;
}
hook OnPlayerConnect(playerid)
{
	LSRPTime[playerid][0] = CreatePlayerTextDraw(playerid, 575.000, 4.000, "00:00");
	PlayerTextDrawLetterSize(playerid, LSRPTime[playerid][0], 0.180, 1.098);
	PlayerTextDrawTextSize(playerid, LSRPTime[playerid][0], 4.000, 0.000);
	PlayerTextDrawAlignment(playerid, LSRPTime[playerid][0], 2);
	PlayerTextDrawColor(playerid, LSRPTime[playerid][0], -1061109505);
	PlayerTextDrawSetShadow(playerid, LSRPTime[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LSRPTime[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, LSRPTime[playerid][0], 150);
	PlayerTextDrawFont(playerid, LSRPTime[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, LSRPTime[playerid][0], 1);

	LSRPTime[playerid][1] = CreatePlayerTextDraw(playerid, 615.000, 4.000, "00/00/0000");
	PlayerTextDrawLetterSize(playerid, LSRPTime[playerid][1], 0.180, 1.098);
	PlayerTextDrawTextSize(playerid, LSRPTime[playerid][1], -3.000, 6.000);
	PlayerTextDrawAlignment(playerid, LSRPTime[playerid][1], 2);
	PlayerTextDrawColor(playerid, LSRPTime[playerid][1], -1061109505);
	PlayerTextDrawSetShadow(playerid, LSRPTime[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LSRPTime[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, LSRPTime[playerid][1], 150);
	PlayerTextDrawFont(playerid, LSRPTime[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, LSRPTime[playerid][1], 1);
	return 1;
}
