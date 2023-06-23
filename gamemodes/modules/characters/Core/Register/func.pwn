func:ShowPlayerMainRegister(playerid)
{
	PlayerTextDrawSetString(playerid, MainRegisterPTD[playerid][7],player_get_name(playerid, 1));
	PlayerTextDrawSetString(playerid,MainRegisterPTD[playerid][8] , "Dang_ky");
	SelectTextDraw(playerid, 0x0d142b00);

	for(new main_loop = 0 ; main_loop < 10; main_loop++)
	{
		PlayerTextDrawShow(playerid,MainRegisterPTD[playerid][main_loop]);
	}
}
func:HidePlayerMainRegister(playerid)
{
	CancelSelectTextDraw(playerid);
	for(new main_loop = 0 ; main_loop < sizeof(MainRegisterPTD); main_loop++)
	{
		PlayerTextDrawHide(playerid,MainRegisterPTD[playerid][main_loop]);
	}
	return 1;
}

func:ShowPlayerMenuRegister(playerid)
{
	SetPVarInt(playerid, "SetupRegister_", 1);
	SelectTextDraw(playerid, -1);
	for(new reg_loop = 0 ; reg_loop < 6; reg_loop++)
	{
		PlayerTextDrawShow(playerid, RegisterPTD[playerid][reg_loop]);
	}
	PlayerTextDrawShow(playerid, RegisterPTD[playerid][11]);
	return 1;
}

func:HidePlayerMenuRegister(playerid)
{
	CancelSelectTextDraw(playerid);
	for(new reg_loop = 0; reg_loop < 13; reg_loop++)
	{
		PlayerTextDrawHide(playerid, RegisterPTD[playerid][reg_loop]);
	}
	return 1;
}