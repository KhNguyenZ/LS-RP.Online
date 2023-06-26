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
func:CreateFadeEffectTextDraw(playerid)
{
	FadeEffect[playerid][0] = CreatePlayerTextDraw(playerid, -75.000, -66.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, FadeEffect[playerid][0], 765.000, 590.000);
	PlayerTextDrawAlignment(playerid, FadeEffect[playerid][0], 0);
	PlayerTextDrawColor(playerid, FadeEffect[playerid][0], 187);
	PlayerTextDrawSetShadow(playerid, FadeEffect[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, FadeEffect[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, FadeEffect[playerid][0], 255);
	PlayerTextDrawFont(playerid, FadeEffect[playerid][0], TEXT_DRAW_FONT_SPRITE_DRAW);
	PlayerTextDrawSetProportional(playerid, FadeEffect[playerid][0], true);
}
