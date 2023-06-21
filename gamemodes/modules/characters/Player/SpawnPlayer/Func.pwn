func:ShowPlayerSpawnMenu(playerid)
{
	SetPVarInt(playerid, "OpenSpawnMen_", 1);
	SelectTextDraw(playerid, -1);
	for(new spawn_loop = 0 ; spawn_loop < 5 ; spawn_loop++)
	{
		PlayerTextDrawShow(playerid, SpawnNewbiePTD[playerid][i]);
	}
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
	for(new spawn_loop = 0 ; spawn_loop < 7 ; spawn_loop++)
	{
		PlayerTextDrawHide(playerid, SpawnNewbiePTD[playerid][i]);
	}
	return 1;
}

func:Spawn_OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(IsOpenSpawnMenu(playerid))
	{
		if(playertextid == SpawnNewbiePTD[playerid][3]) // All Saint
		{
			InterpolateCameraLookAt(playerid, 1176.5789,-1323.8281,14.0283, 1176.5789,-1323.8281,14.0283, 5000);
			InterpolateCameraPos(playerid, 1211.8411,-1402.7367,30.3213, 1217.2133,-1286.1810,23.1717, 5000, CAMERA_MOVE);
		}
		if(playertextid == SpawnNewbiePTD[playerid][2]) // Newbie Spawn
		{
			InterpolateCameraLookAt(playerid, 1806.4276,-1895.5110,13.4045,1806.4276,-1895.5110,13.4045, 5000);
			InterpolateCameraPos(playerid, 1770.4893,-1944.8906,15.8041,1793.2292,-1883.8568,18.5620, 5000, CAMERA_MOVE);
		}
		if(playertextid == SpawnNewbiePTD[playerid][4]) // Newbie Spawn
		{
			InterpolateCameraLookAt(playerid, 1131.3690,-1489.8728,22.7690,1131.3690,-1489.8728,22.7690, 5000);
			InterpolateCameraPos(playerid, 1770.4893,-1944.8906,15.8041,1793.2292,-1883.8568,18.5620, 5000, CAMERA_MOVE);
		}
	}
}
