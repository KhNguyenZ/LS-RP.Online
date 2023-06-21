func:ShowPlayerSpawnMenu(playerid)
{
	SetPVarInt(playerid, "OpenSpawnMen_", 1);
	for(new spawn_loop = 0 ; spawn_loop < 4 ; spawn_loop++)
	{
		PlayerTextDrawShow(playerid, SpawnLSRP[playerid][spawn_loop]);
	}
	SelectTextDraw(playerid, 0x0d142bFF);
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
	return 1;
}

func:Spawn_OnPlayerClickPlayerTD(playerid, PlayerText:playertextid)
{
	if(IsOpenSpawnMenu(playerid))
	{
		if(playertextid == SpawnNewbiePTD[playerid][1]) // Home
		{
			HienTextdraw(playerid, "Tinh nang dang doc update, vui long chon vi tri khac.", 5000);
		}
		if(playertextid == SpawnNewbiePTD[playerid][2]) // Hien tai
		{
			SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], Character[playerid][char_last_Pos][0], Character[playerid][char_last_Pos][1],Character[playerid][char_last_Pos][2],Character[playerid][char_last_Pos][3],0, 0,0, 0,0, 0);
			FadeInPlayerScreen(playerid);
			SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
		}
		if(playertextid == SpawnNewbiePTD[playerid][3]) // Newbie Spawn
		{
			SetSpawnInfo(playerid, 0, Character[playerid][char_Skin], 1754.7391,-1895.4344,13.5870,0,0, 0,0, 0,0, 0);
			FadeInPlayerScreen(playerid);
	  		SetTimerEx("PlayerJoinGameReal", 1000, false, "i", playerid);
		}
		HidePlayerSpawnMenu(playerid);
		SetPlayerSkin(playerid,Character[playerid][char_Skin]);
		ResetPlayerWeapons(playerid);
		GivePlayerMoney(playerid, Character[playerid][char_Cash]);
		SetPlayerHealth(playerid, Character[playerid][char_health]);
		SetPlayerArmour(playerid, Character[playerid][char_armour]);
		PlayerSetupping[playerid] = 1;
	}
}

forward PlayerJoinGameReal(playerid);
public PlayerJoinGameReal(playerid)
{
    SpawnPlayer(playerid);
	FadeOutPlayerScreen(playerid);
    return 1;
}
