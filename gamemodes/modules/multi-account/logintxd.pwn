#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	LoginPTD[playerid][0] = CreatePlayerTextDraw(playerid, 259.500, 187.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][0], 120.000, 36.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][0], 168696575);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][0], 0);

	LoginPTD[playerid][1] = CreatePlayerTextDraw(playerid, 262.500, 192.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][1], 114.000, 12.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][1], 488914431);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][1], 0);

	LoginPTD[playerid][2] = CreatePlayerTextDraw(playerid, 262.500, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][2], 114.000, 12.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][2], 488914431);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][2], 0);

	LoginPTD[playerid][3] = CreatePlayerTextDraw(playerid, 259.500, 226.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][3], 120.000, 11.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][3], 556554495);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][3], 0);

	LoginPTD[playerid][4] = CreatePlayerTextDraw(playerid, 260.000, 121.000, "_");
	PlayerTextDrawLetterSize(playerid, LoginPTD[playerid][4], 0.989, 5.299);
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][4], 75.000, 88.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][4], -1061109505);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][4], 2);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][4], 0);

	LoginPTD[playerid][5] = CreatePlayerTextDraw(playerid, 305.000, 152.000, "_");
	PlayerTextDrawLetterSize(playerid, LoginPTD[playerid][5], 0.658, 3.398);
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][5], 37.000, 48.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][5], 1768516095);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][5], 0);

	LoginPTD[playerid][6] = CreatePlayerTextDraw(playerid, 319.000, 208.000, "Nhap_mat_khau");
	PlayerTextDrawLetterSize(playerid, LoginPTD[playerid][6], 0.189, 0.999);
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][6], 10.000, 98.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, LoginPTD[playerid][6], 1);

	LoginPTD[playerid][7] = CreatePlayerTextDraw(playerid, 319.000, 193.000, "Master_Account");
	PlayerTextDrawLetterSize(playerid, LoginPTD[playerid][7], 0.189, 0.999);
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][7], 10.000, 98.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, LoginPTD[playerid][7], 0);

	LoginPTD[playerid][8] = CreatePlayerTextDraw(playerid, 319.000, 227.000, "Connect_to_server");
	PlayerTextDrawLetterSize(playerid, LoginPTD[playerid][8], 0.189, 0.999);
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][8], 10.000, 98.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][8], 2);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, LoginPTD[playerid][8], 1);

	LoginPTD[playerid][9] = CreatePlayerTextDraw(playerid, 256.000, 53.000, "mdl-2001:logo");
	PlayerTextDrawTextSize(playerid, LoginPTD[playerid][9], 124.000, 148.000);
	PlayerTextDrawAlignment(playerid, LoginPTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, LoginPTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, LoginPTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, LoginPTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, LoginPTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, LoginPTD[playerid][9], 1);
	return 1;
}

func:ShowLoginPTD(playerid)
{
	SetPVarInt(playerid, "OpenLoginPTD_@", 1);
	PlayerTextDrawSetString(playerid, LoginPTD[playerid][7],player_get_name(playerid, 1));
	SelectTextDraw(playerid, 0x0d142b00);
	for(new login_loop = 0 ; login_loop < 10; login_loop++)
	{
		PlayerTextDrawShow(playerid,LoginPTD[playerid][login_loop]);
	}
	return 1;
}
func:IsOpenLoginPTD(playerid)
{
	return SetPVarInt(playerid, "OpenLoginPTD_@", 1);
}

func:HideLoginPTD(playerid)
{
	CancelSelectTextDraw(playerid);
	SetPVarInt(playerid, "OpenLoginPTD_@", 0);	
	for(new login_loop = 0 ; login_loop < 10; login_loop++)
	{
		PlayerTextDrawHide(playerid,LoginPTD[playerid][login_loop]);
	}
	return 1;
}

