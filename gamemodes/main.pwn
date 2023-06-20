#include <a_samp>
#include <a_mysql>
#include <YSI_Coding\y_timers>
#include <streamer>
#include <ZCMD>
#include <sscanf2>
#include <YSI_Storage\y_ini>
#undef MAX_PLAYERS
#define MAX_PLAYERS 500

#define  			MYSQL_HOST				"localhost"
#define  			MYSQL_USER				"root"
#define  			MYSQL_PASS				""
#define  			MYSQL_DB				"newbase"

main()
{
	SetGameModeText("KhNguyen Dev");
	EnableStuntBonusForAll(0);
	DisableInteriorEnterExits();
	SetNameTagDrawDistance(25.0);
	ManualVehicleEngineAndLights();
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
	AddPlayerClass(265, 1958.3783, 1343.1572, 15.3746, 270.1425, 0, 0, 0, 0, -1, -1);
	
	if(GetMaxPlayers() > MAX_PLAYERS)
	{
		print("> Error FIX MAXPLAYERS.");
        SendRconCommand("exit");
	}
}
#include "./modules/multi-account/account.pwn"
#include "./modules/characters/character.pwn"
#include "./modules/characters/character-admin.pwn"
#include "./modules/Core.pwn"
#include "./modules/server/radio.pwn"
#include "./modules/dynamic/doors.pwn"

public OnGameModeExit()
{
	mysql_close(Handle());
	return 1;
}