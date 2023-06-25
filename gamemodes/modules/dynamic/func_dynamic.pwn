func:NoticeTexture(playerid)
{
	new Float:PlayerLoad[3];
	GetPlayerPos(playerid,PlayerLoad[0],PlayerLoad[1],PlayerLoad[2]);

	SetPlayerPos(playerid,PlayerLoad[0],PlayerLoad[1],PlayerLoad[2]+1);

	TogglePlayerControllable(playerid, 0);

	notification.Show(playerid, "Loading", "LOADING TEXTURE", "hud:radar_qmark", 2);	
	SetTimerEx("LoadTexure_", 2000, 0, "i", playerid);
	return 1;
}

forward LoadTexure_(playerid);
public LoadTexure_(playerid)
{
	TogglePlayerControllable(playerid, 1);
}