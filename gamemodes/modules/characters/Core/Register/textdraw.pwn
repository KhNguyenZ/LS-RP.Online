#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	MainRegisterPTD[playerid][0] = CreatePlayerTextDraw(playerid, 259.500, 187.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][0], 120.000, 36.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][0], 168696575);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][0], 0);

	MainRegisterPTD[playerid][1] = CreatePlayerTextDraw(playerid, 262.500, 192.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][1], 114.000, 12.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][1], 488914431);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][1], 0);

	MainRegisterPTD[playerid][2] = CreatePlayerTextDraw(playerid, 262.500, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][2], 114.000, 12.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][2], 488914431);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][2], 0);

	MainRegisterPTD[playerid][3] = CreatePlayerTextDraw(playerid, 259.500, 226.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][3], 120.000, 11.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][3], 556554495);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][3], 0);

	MainRegisterPTD[playerid][4] = CreatePlayerTextDraw(playerid, 260.000, 121.000, "_");
	PlayerTextDrawLetterSize(playerid, MainRegisterPTD[playerid][4], 0.989, 5.299);
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][4], 75.000, 88.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][4], -1061109505);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][4], 2);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][4], 0);

	MainRegisterPTD[playerid][5] = CreatePlayerTextDraw(playerid, 305.000, 152.000, "_");
	PlayerTextDrawLetterSize(playerid, MainRegisterPTD[playerid][5], 0.658, 3.398);
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][5], 37.000, 48.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][5], 1768516095);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][5], 0);

	MainRegisterPTD[playerid][6] = CreatePlayerTextDraw(playerid, 319.000, 208.000, "Nhap_mat_khau");
	PlayerTextDrawLetterSize(playerid, MainRegisterPTD[playerid][6], 0.189, 0.999);
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][6], 10.000, 98.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, MainRegisterPTD[playerid][6], 1);

	MainRegisterPTD[playerid][7] = CreatePlayerTextDraw(playerid, 319.000, 193.000, "Master_Account");
	PlayerTextDrawLetterSize(playerid, MainRegisterPTD[playerid][7], 0.189, 0.999);
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][7], 10.000, 98.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, MainRegisterPTD[playerid][7], 0);

	MainRegisterPTD[playerid][8] = CreatePlayerTextDraw(playerid, 319.000, 227.000, "Connect_to_server");
	PlayerTextDrawLetterSize(playerid, MainRegisterPTD[playerid][8], 0.189, 0.999);
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][8], 10.000, 98.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][8], 2);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, MainRegisterPTD[playerid][8], 1);

	MainRegisterPTD[playerid][9] = CreatePlayerTextDraw(playerid, 256.000, 53.000, "mdl-2001:logo");
	PlayerTextDrawTextSize(playerid, MainRegisterPTD[playerid][9], 124.000, 148.000);
	PlayerTextDrawAlignment(playerid, MainRegisterPTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, MainRegisterPTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, MainRegisterPTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, MainRegisterPTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, MainRegisterPTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, MainRegisterPTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, MainRegisterPTD[playerid][9], 1);

	RegisterPTD[playerid][0] = CreatePlayerTextDraw(playerid, 73.000, 160.000, "_");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][0], 0.200, 16.799);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][0], 183.000, 15.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][0], 150);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][0], 1);

	RegisterPTD[playerid][1] = CreatePlayerTextDraw(playerid, 128.000, 170.000, "TUOI");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][1], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][1], 0.000, 102.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][1], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][1], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][1], 1);

	RegisterPTD[playerid][2] = CreatePlayerTextDraw(playerid, 128.000, 194.000, "GIOI TINH");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][2], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][2], 0.000, 102.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][2], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][2], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][2], 1);

	RegisterPTD[playerid][3] = CreatePlayerTextDraw(playerid, 128.000, 218.000, "QUOC TICH");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][3], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][3], 0.000, 102.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][3], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][3], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][3], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][3], 1);

	RegisterPTD[playerid][4] = CreatePlayerTextDraw(playerid, 128.000, 242.000, "SKIN");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][4], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][4], 0.000, 102.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][4], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][4], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][4], 1);

	RegisterPTD[playerid][5] = CreatePlayerTextDraw(playerid, 128.000, 266.000, "MO TA");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][5], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][5], 0.000, 102.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][5], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][5], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][5], 1);

	RegisterPTD[playerid][6] = CreatePlayerTextDraw(playerid, 250.000, 83.000, "_");
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][6], 221.000, 266.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][6], 0);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, RegisterPTD[playerid][6], 1);
	PlayerTextDrawSetPreviewRot(playerid, RegisterPTD[playerid][6], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, RegisterPTD[playerid][6], 0, 0);

	RegisterPTD[playerid][7] = CreatePlayerTextDraw(playerid, 313.000, 331.000, "LD_BEAT:left");
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][7], 20.000, 22.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][7], 1);

	RegisterPTD[playerid][8] = CreatePlayerTextDraw(playerid, 395.000, 331.000, "LD_BEAT:right");
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][8], 20.000, 22.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][8], 1);

	RegisterPTD[playerid][9] = CreatePlayerTextDraw(playerid, 364.000, 334.000, "1");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][9], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][9], 150.000, 54.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][9], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][9], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][9], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][9], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][9], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][9], 1);

	RegisterPTD[playerid][10] = CreatePlayerTextDraw(playerid, 364.000, 365.000, "CHON SKIN NHANH");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][10], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][10], 150.000, 106.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][10], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][10], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][10], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][10], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][10], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][10], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][10], 1);

	RegisterPTD[playerid][11] = CreatePlayerTextDraw(playerid, 128.000, 290.000, "HOAN TAT");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][11], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][11], 0.000, 102.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][11], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][11], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][11], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][11], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][11], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][11], 1);

	RegisterPTD[playerid][12] = CreatePlayerTextDraw(playerid, 417.000, 305.000, "XONG");
	PlayerTextDrawLetterSize(playerid, RegisterPTD[playerid][12], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, RegisterPTD[playerid][12], 150.000, 40.000);
	PlayerTextDrawAlignment(playerid, RegisterPTD[playerid][12], 2);
	PlayerTextDrawColor(playerid, RegisterPTD[playerid][12], -1);
	PlayerTextDrawUseBox(playerid, RegisterPTD[playerid][12], 1);
	PlayerTextDrawBoxColor(playerid, RegisterPTD[playerid][12], 556554495);
	PlayerTextDrawSetShadow(playerid, RegisterPTD[playerid][12], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPTD[playerid][12], 150);
	PlayerTextDrawFont(playerid, RegisterPTD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPTD[playerid][12], 1);
	return 1;
}


