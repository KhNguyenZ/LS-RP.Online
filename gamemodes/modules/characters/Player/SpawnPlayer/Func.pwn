#include <YSI\y_hooks>
func:ShowPlayerSpawnMenu(playerid)
{
	SetPVarInt(playerid, "OpenSpawnMen_", 1);
	for(new spawn_loop = 0 ; spawn_loop < 4 ; spawn_loop++)
	{
		PlayerTextDrawShow(playerid, SpawnLSRP[playerid][spawn_loop]);
	}
	SelectTextDraw(playerid, 0x0d142bAA);
	return 1;
}
func:IsOpenSpawnMenu(playerid)
{
	return GetPVarInt(playerid, "OpenSpawnMen_");
}
func:HidePlayerSpawnMenu(playerid)
{
	SetPVarInt(playerid, "OpenSpawnMen_", 0);
	CancelSelectTextDraw(playerid);
	for(new spawn_loop = 0 ; spawn_loop < 4 ; spawn_loop++)
	{
		PlayerTextDrawHide(playerid, SpawnLSRP[playerid][spawn_loop]);
	}
	if(GetPVarInt(playerid, "SetupRegister_") == 1)
	{
		DeletePVar(playerid, "SetupRegister_");
	}
	return 1;
}

