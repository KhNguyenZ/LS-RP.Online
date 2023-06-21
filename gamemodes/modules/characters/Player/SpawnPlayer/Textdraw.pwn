#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	SpawnLSRP[playerid][0] = CreatePlayerTextDraw(playerid, -1.000, -1.000, "mdl-2002:background");
	PlayerTextDrawTextSize(playerid, SpawnLSRP[playerid][0], 641.000, 449.000);
	PlayerTextDrawAlignment(playerid, SpawnLSRP[playerid][0], 1);
	PlayerTextDrawColor(playerid, SpawnLSRP[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, SpawnLSRP[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, SpawnLSRP[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnLSRP[playerid][0], 255);
	PlayerTextDrawFont(playerid, SpawnLSRP[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, SpawnLSRP[playerid][0], 1);

	SpawnLSRP[playerid][1] = CreatePlayerTextDraw(playerid, 399.000, 211.000, "mdl-2002:vt-home");
	PlayerTextDrawTextSize(playerid, SpawnLSRP[playerid][1], 109.000, 200.000);
	PlayerTextDrawAlignment(playerid, SpawnLSRP[playerid][1], 1);
	PlayerTextDrawColor(playerid, SpawnLSRP[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, SpawnLSRP[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, SpawnLSRP[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnLSRP[playerid][1], 255);
	PlayerTextDrawFont(playerid, SpawnLSRP[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, SpawnLSRP[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnLSRP[playerid][1], 1);

	SpawnLSRP[playerid][2] = CreatePlayerTextDraw(playerid, 264.000, 211.000, "mdl-2002:vt-hientai");
	PlayerTextDrawTextSize(playerid, SpawnLSRP[playerid][2], 109.000, 200.000);
	PlayerTextDrawAlignment(playerid, SpawnLSRP[playerid][2], 1);
	PlayerTextDrawColor(playerid, SpawnLSRP[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, SpawnLSRP[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, SpawnLSRP[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnLSRP[playerid][2], 255);
	PlayerTextDrawFont(playerid, SpawnLSRP[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, SpawnLSRP[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnLSRP[playerid][2], 1);
	
	SpawnLSRP[playerid][3] = CreatePlayerTextDraw(playerid, 126.000, 211.000, "mdl-2002:vt-newbie");
	PlayerTextDrawTextSize(playerid, SpawnLSRP[playerid][3], 109.000, 200.000);
	PlayerTextDrawAlignment(playerid, SpawnLSRP[playerid][3], 1);
	PlayerTextDrawColor(playerid, SpawnLSRP[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, SpawnLSRP[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, SpawnLSRP[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnLSRP[playerid][3], 255);
	PlayerTextDrawFont(playerid, SpawnLSRP[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, SpawnLSRP[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnLSRP[playerid][3], 1);
	return 1;
}
