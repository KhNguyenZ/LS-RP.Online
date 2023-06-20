#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	SpawnNewbiePTD[playerid][0] = CreatePlayerTextDraw(playerid, 213.000, 160.000, "_");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][0], -1.249, 14.099);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][0], 97.000, 17.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][0], 230);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][0], 1);

	SpawnNewbiePTD[playerid][1] = CreatePlayerTextDraw(playerid, 101.000, 159.000, "CHON KHU VUC SPAWN");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][1], 0.280, 1.299);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][1], 209.000, 0.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][1], 556554495);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][1], 1);

	SpawnNewbiePTD[playerid][2] = CreatePlayerTextDraw(playerid, 104.000, 187.000, "KHU VIEC NEWBIE");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][2], 0.280, 1.500);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][2], 206.000, 0.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][2], 556554495);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][2], 2);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnNewbiePTD[playerid][2], 1);

	SpawnNewbiePTD[playerid][3] = CreatePlayerTextDraw(playerid, 104.000, 211.000, "BENH VIEN");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][3], 0.280, 1.500);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][3], 206.000, 0.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][3], 556554495);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][3], 2);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnNewbiePTD[playerid][3], 1);

	SpawnNewbiePTD[playerid][4] = CreatePlayerTextDraw(playerid, 104.000, 236.000, "MARKET");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][4], 0.280, 1.500);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][4], 206.000, 0.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][4], 556554495);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][4], 2);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnNewbiePTD[playerid][4], 1);

	SpawnNewbiePTD[playerid][5] = CreatePlayerTextDraw(playerid, 318.000, 387.000, "_");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][5], 0.449, 2.399);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][5], 332.000, 66.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][5], 2);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][5], 255);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][5], 1);

	SpawnNewbiePTD[playerid][6] = CreatePlayerTextDraw(playerid, 318.000, 390.000, "CHON");
	PlayerTextDrawLetterSize(playerid, SpawnNewbiePTD[playerid][6], 0.260, 1.699);
	PlayerTextDrawTextSize(playerid, SpawnNewbiePTD[playerid][6], 315.000, 61.000);
	PlayerTextDrawAlignment(playerid, SpawnNewbiePTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, SpawnNewbiePTD[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, SpawnNewbiePTD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, SpawnNewbiePTD[playerid][6], 556554495);
	PlayerTextDrawSetShadow(playerid, SpawnNewbiePTD[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, SpawnNewbiePTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, SpawnNewbiePTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, SpawnNewbiePTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, SpawnNewbiePTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, SpawnNewbiePTD[playerid][6], 1);
	return 1;
}