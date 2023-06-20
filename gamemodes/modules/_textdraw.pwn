func:CreateHienTextDraw(playerid)
{
    scm_PTD[playerid] = CreatePlayerTextDraw(playerid, 321.0000, 357.4996, "");
    PlayerTextDrawLetterSize(playerid, scm_PTD[playerid], 0.2128, 1.1390);
    PlayerTextDrawTextSize(playerid, scm_PTD[playerid], 0.0000, 388.0000);
    PlayerTextDrawAlignment(playerid, scm_PTD[playerid], 2);
    PlayerTextDrawColor(playerid, scm_PTD[playerid], -1);
    PlayerTextDrawSetOutline(playerid, scm_PTD[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, scm_PTD[playerid], 255);
    PlayerTextDrawFont(playerid, scm_PTD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, scm_PTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, scm_PTD[playerid], 0);
}