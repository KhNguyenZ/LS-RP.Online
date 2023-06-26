#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	SelectCharPTD[playerid][0] = CreatePlayerTextDraw(playerid, 511.000, 149.000, "_");
	PlayerTextDrawLetterSize(playerid, SelectCharPTD[playerid][0], 0.250, 23.298);
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][0], 140.000, -9.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, SelectCharPTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharPTD[playerid][0], 230);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][0], 1);

	SelectCharPTD[playerid][1] = CreatePlayerTextDraw(playerid, 153.000, 161.000, "_");
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][1], 102.000, 186.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][1], -2139062017);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][1], 2);
	PlayerTextDrawSetPreviewRot(playerid, SelectCharPTD[playerid][1], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SelectCharPTD[playerid][1], 0, 0);

	SelectCharPTD[playerid][2] = CreatePlayerTextDraw(playerid, 274.000, 161.000, "_");
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][2], 102.000, 186.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][2], -2139062017);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][2], 2);
	PlayerTextDrawSetPreviewRot(playerid, SelectCharPTD[playerid][2], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SelectCharPTD[playerid][2], 0, 0);

	SelectCharPTD[playerid][3] = CreatePlayerTextDraw(playerid, 394.000, 161.000, "_");
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][3], 102.000, 186.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][3], -2139062017);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][3], 2);
	PlayerTextDrawSetPreviewRot(playerid, SelectCharPTD[playerid][3], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SelectCharPTD[playerid][3], 0, 0);

	SelectCharPTD[playerid][4] = CreatePlayerTextDraw(playerid, 204.000, 329.000, "CHON");
	PlayerTextDrawLetterSize(playerid, SelectCharPTD[playerid][4], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][4], 310.000, 107.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][4], 2);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, SelectCharPTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharPTD[playerid][4], 556554495);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, SelectCharPTD[playerid][4], 1);

	SelectCharPTD[playerid][5] = CreatePlayerTextDraw(playerid, 325.000, 329.000, "CHON");
	PlayerTextDrawLetterSize(playerid, SelectCharPTD[playerid][5], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][5], 310.000, 107.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][5], 2);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, SelectCharPTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharPTD[playerid][5], 556554495);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, SelectCharPTD[playerid][5], 1);

	SelectCharPTD[playerid][6] = CreatePlayerTextDraw(playerid, 445.000, 329.000, "CHON");
	PlayerTextDrawLetterSize(playerid, SelectCharPTD[playerid][6], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, SelectCharPTD[playerid][6], 310.000, 107.000);
	PlayerTextDrawAlignment(playerid, SelectCharPTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, SelectCharPTD[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, SelectCharPTD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharPTD[playerid][6], 556554495);
	PlayerTextDrawSetShadow(playerid, SelectCharPTD[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharPTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, SelectCharPTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharPTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, SelectCharPTD[playerid][6], 1);

	InfoCharPTD[playerid][0] = CreatePlayerTextDraw(playerid, 383.000, 308.000, "_");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][0], 0.300, 13.500);
	PlayerTextDrawTextSize(playerid, InfoCharPTD[playerid][0], 506.000, 0.000);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, InfoCharPTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, InfoCharPTD[playerid][0], 230);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][0], 1);

	InfoCharPTD[playerid][1] = CreatePlayerTextDraw(playerid, 383.000, 308.000, "THONG_TIN_NHAN_VAT");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][1], 0.300, 1.599);
	PlayerTextDrawTextSize(playerid, InfoCharPTD[playerid][1], 506.000, 0.000);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, InfoCharPTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, InfoCharPTD[playerid][1], 556554495);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][1], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][1], 1);

	InfoCharPTD[playerid][2] = CreatePlayerTextDraw(playerid, 384.000, 334.000, "Ten: Khoi_NguyenZ_dep_trai");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][2], 0.260, 1.500);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][2], 1);

	InfoCharPTD[playerid][3] = CreatePlayerTextDraw(playerid, 384.000, 348.000, "Gioi_tinh:_Nam");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][3], 0.260, 1.500);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][3], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][3], 1);

	InfoCharPTD[playerid][4] = CreatePlayerTextDraw(playerid, 384.000, 362.000, "Level:_100");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][4], 0.260, 1.500);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][4], 1);

	InfoCharPTD[playerid][5] = CreatePlayerTextDraw(playerid, 384.000, 375.000, "Last Login: 00:00:00 00-00-0000");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][5], 0.210, 1.700);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][5], 1);

	InfoCharPTD[playerid][6] = CreatePlayerTextDraw(playerid, 384.000, 390.000, "_");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][6], 0.260, 1.500);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][6], 1);

	InfoCharPTD[playerid][7] = CreatePlayerTextDraw(playerid, 443.000, 285.000, "VAO_GAME");
	PlayerTextDrawLetterSize(playerid, InfoCharPTD[playerid][7], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, InfoCharPTD[playerid][7], 474.000, 85.000);
	PlayerTextDrawAlignment(playerid, InfoCharPTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, InfoCharPTD[playerid][7], -1);
	PlayerTextDrawUseBox(playerid, InfoCharPTD[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid, InfoCharPTD[playerid][7], 763313407);
	PlayerTextDrawSetShadow(playerid, InfoCharPTD[playerid][7], 1);
	PlayerTextDrawSetOutline(playerid, InfoCharPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, InfoCharPTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, InfoCharPTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, InfoCharPTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, InfoCharPTD[playerid][7], 1);
	return 1;
}

func:IsLoadChar(playerid, slot)
{
	new char_load[1280];
	format(char_load, sizeof(char_load), "Loaded_Char_%d", slot);
	return GetPVarInt(playerid,char_load);
}
func:IsOpenCharSelect(playerid) {
	 return GetPVarInt(playerid, "Open_Char_Select_");
}
func:ShowCharacterSelect(playerid)
{
	SetPVarInt(playerid, "Open_Char_Select_", 1);
	SelectTextDraw(playerid, 0x0d142bAA);
	if(IsLoadChar(playerid, 0)) {
		PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][1], CharSelectInfo[playerid][cs_skin][0]);
	}
	else PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][1], 0);

	if(IsLoadChar(playerid, 1)) {
		PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][2], CharSelectInfo[playerid][cs_skin][1]);
	}
	else PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][2], 0);

	if(IsLoadChar(playerid, 2)) {
		PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][3], CharSelectInfo[playerid][cs_skin][2]);
	}
	else PlayerTextDrawSetPreviewModel(playerid, SelectCharPTD[playerid][3], 0);

	for(new char_show = 0 ; char_show < 7; char_show++)
	{
		PlayerTextDrawShow(playerid, SelectCharPTD[playerid][char_show]);
	}
	return 1;
}

func:HideCharacterSelect(playerid)
{
	SetPVarInt(playerid, "Open_Char_Select_", 0);
	CancelSelectTextDraw(playerid);

	for(new char_show = 0 ; char_show < 7; char_show++)
	{
		PlayerTextDrawHide(playerid, SelectCharPTD[playerid][char_show]);
	}
	return 1;
}
func:ShowInfoCharacter(playerid, char_id)
{
	SelectTextDraw(playerid, 1);
	new info_str[1280];
	format(info_str, sizeof(info_str), "Ten: %s",character_Name_data[playerid][char_id]);
	PlayerTextDrawSetString(playerid, InfoCharPTD[playerid][2], info_str);
	if(CharSelectInfo[playerid][cs_gender][char_id] == 1){
		PlayerTextDrawSetString(playerid, InfoCharPTD[playerid][3], "Gioi tinh: Nam");
	}
	else if(CharSelectInfo[playerid][cs_gender][char_id] == 2){
		PlayerTextDrawSetString(playerid, InfoCharPTD[playerid][3], "Gioi tinh: Nu");
	}
	else{
		PlayerTextDrawSetString(playerid, InfoCharPTD[playerid][3], "Gioi tinh: Khong xac dinh");	
	}
	format(info_str, sizeof(info_str),"Level: %d", CharSelectInfo[playerid][cs_level][char_id]);
	PlayerTextDrawSetString(playerid, InfoCharPTD[playerid][3], info_str);
	format(info_str, sizeof(info_str),"LastLogin: %s", CharSelectInfo[playerid][cs_lastlogin][char_id]);

	for(new info_show = 0; info_show < 8; info_show++)
	{
		PlayerTextDrawShow(playerid,InfoCharPTD[playerid][info_show]);
	}
	return 1;
}
func:HideInfoCharacter(playerid)
{
	CancelSelectTextDraw(playerid);

	for(new info_show = 0; info_show < 8; info_show++)
	{
		PlayerTextDrawHide(playerid,InfoCharPTD[playerid][info_show]);
	}
	return 1;
}
new ActorSelect[3];

func:CreateActorSelect(playerid, actor_id, modelid)
{
	switch(actor_id)
	{
		case 0:{
			ActorSelect[0] = CreateActor(modelid,1434.0189,-1229.3564,153.0150,273.3162);
			ApplyActorAnimation(ActorSelect[0],"BEACH", "SitnWait_loop_W", 4.1, 0, 0, 0, 0, 0);

			SetPlayerCameraLookAt(playerid, 1434.0189,-1229.3564,153.0150, CAMERA_CUT);
			SetPlayerCameraPos(playerid, 1439.5394,-1229.0707,152.3983);
		}
		case 1:{
			ActorSelect[1] = CreateActor(modelid,1435.9379,-1227.9972,152.9747,185.5895);
			ApplyActorAnimation(ActorSelect[1],"BEACH", "bather", 4.1, 0, 0, 0, 0, 0);

			SetPlayerCameraLookAt(playerid, 1435.9379,-1227.9972,152.9747, CAMERA_CUT);
			SetPlayerCameraPos(playerid,1435.7134,-1230.9875,152.3983);
		}
		case 2:{
			ActorSelect[1] = CreateActor(modelid,1437.2791,-1229.2985,153.0150,81.1928);
			ApplyActorAnimation(ActorSelect[2],"BEACH", "ParkSit_W_loop", 4.1, 0, 0, 0, 0, 0);

			SetPlayerCameraLookAt(playerid, 1437.2791,-1229.2985,153.0150, CAMERA_CUT);
			SetPlayerCameraPos(playerid, 1431.6221,-1229.1354,152.3983);
		}
	}
}
