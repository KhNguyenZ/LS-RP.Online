#include "YSI_Coding\y_hooks"

new PlayerText: LoadingPTD[MAX_PLAYERS][3];
forward LoadingProgress(playerid,loadingid,speed);

forward OnLoadingFinish(playerid,loadingid);
static 
        Loading_Progess[MAX_PLAYERS],
        TimerLoading[MAX_PLAYERS];

stock LoaderStarting(playerid, loadingid, const LoaderInfo[], Float:speed,color = 3) {
	if(GetPVarInt(playerid, "is_loading") == 1) return 1;
    switch(color) {
        case 1: PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][2], 65443);
        case 2: PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][2], -202218806);
        case 3: PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][2], 1960470730);
        case 4: PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][2], 2021902794);
        case 5: PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][2], -943949110);
        case 6: PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][2], -948405558);
    }
    PlayerTextDrawColor(playerid, LoadingPTD[playerid][2], color);
	new str[60];
	format(str, sizeof str, "%s", LoaderInfo);
	PlayerTextDrawSetString(playerid, LoadingPTD[playerid][1], str);
    PlayerTextDrawShow(playerid, LoadingPTD[playerid][0]);
    PlayerTextDrawShow(playerid, LoadingPTD[playerid][1]);
    TimerLoading[playerid] = SetTimerEx("LoadingProgress", 50, true, "iii", playerid,loadingid,floatround(speed));
    SetPVarInt(playerid, "is_loading", 1);
    return 1;
}
CMD:testload(playerid,params[]) {

    LoaderStarting(playerid, 3, "Testing loading", 2,strval(params));
    return 1;
}
public LoadingProgress(playerid,loadingid,speed) {
    new Float:loading_bar;
    Loading_Progess[playerid] += 1 * speed;
    loading_bar = ( Loading_Progess[playerid] *  1.27 );

    PlayerTextDrawTextSize(playerid, LoadingPTD[playerid][2], 257.000000 + loading_bar, 0.000000);
    PlayerTextDrawShow(playerid, LoadingPTD[playerid][2]);
    if(Loading_Progess[playerid] >= 100) {
        KillTimer(TimerLoading[playerid]);
        DeletePVar(playerid, "is_loading");
        Loading_Progess[playerid] = 0;
        OnLoadingFinish(playerid,loadingid);
        PlayerTextDrawHide(playerid, LoadingPTD[playerid][0]);
        PlayerTextDrawHide(playerid, LoadingPTD[playerid][1]);
        PlayerTextDrawHide(playerid, LoadingPTD[playerid][2]);
    }
}

hook OnPlayerConnect(playerid) {
    LoadingPTD[playerid][0] = CreatePlayerTextDraw(playerid, 260.309, 396.149, "box");
    PlayerTextDrawLetterSize(playerid, LoadingPTD[playerid][0], 0.000, 1.098);
    PlayerTextDrawTextSize(playerid, LoadingPTD[playerid][0], 385.300, 0.000);
    PlayerTextDrawAlignment(playerid, LoadingPTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, LoadingPTD[playerid][0], -1);
    PlayerTextDrawUseBox(playerid, LoadingPTD[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][0], 228);
    PlayerTextDrawSetShadow(playerid, LoadingPTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, LoadingPTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, LoadingPTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, LoadingPTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, LoadingPTD[playerid][0], 1);

    LoadingPTD[playerid][1] = CreatePlayerTextDraw(playerid, 260.309, 396.149, "box");
    PlayerTextDrawLetterSize(playerid, LoadingPTD[playerid][1], 0.000, 1.098);
    PlayerTextDrawTextSize(playerid, LoadingPTD[playerid][1], 385.300, 0.000);
    PlayerTextDrawAlignment(playerid, LoadingPTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, LoadingPTD[playerid][1], -1);
    PlayerTextDrawUseBox(playerid, LoadingPTD[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, LoadingPTD[playerid][1], 65443);
    PlayerTextDrawSetShadow(playerid, LoadingPTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, LoadingPTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, LoadingPTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, LoadingPTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, LoadingPTD[playerid][1], 1);

    LoadingPTD[playerid][2] = CreatePlayerTextDraw(playerid, 321.385, 395.916, "_");
    PlayerTextDrawLetterSize(playerid, LoadingPTD[playerid][2], 0.178, 1.127);
    PlayerTextDrawAlignment(playerid, LoadingPTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, LoadingPTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, LoadingPTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, LoadingPTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, LoadingPTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, LoadingPTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, LoadingPTD[playerid][2], 1);
    return 1;
}

