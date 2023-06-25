// #include <a_samp>
#include <a_samp>
#include <crashdetect>
#include <a_mysql>
#include <YSI_Coding\y_timers>
#include <YSI_Coding\y_hooks>
#include <streamer>
#include <ZCMD>
#include <sscanf2>
#include <YSI\y_ini>
#include <notify>

#undef MAX_PLAYERS
#define MAX_PLAYERS 500
#pragma disablerecursion
#pragma warning disable 213, 208, 219

#define  			MYSQL_HOST				"localhost"
#define  			MYSQL_USER				"root"
#define  			MYSQL_PASS				""
#define  			MYSQL_DB				"lsrp"

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
#include "./modules/mysql.pwn"
#include "./modules/_var.pwn"
#include "./modules/_defines.pwn"
#include "./modules/_functions.pwn"
#include "./modules/_callback.pwn"
#include "./modules/_core.pwn"
#include "./modules/_textdraw.pwn"

#include "./modules/server/ProgressLoad.pwn"

// login
#include "./modules/multi-account/logintxd.pwn"
// character
#include "./modules/characters/Core/character.pwn"
#include "./modules/characters/Core/Register/build.pwn"
#include "./modules/characters/Core/character-select.pwn"
#include "./modules/characters/Core/character-select-textdraw.pwn"
#include "./modules/characters/Admin/character-admin.pwn"
// Spawn player
#include "./modules/characters/Player/SpawnPlayer/callback.pwn"
#include "./modules/characters/Player/SpawnPlayer/func.pwn"
#include "./modules/characters/Player/SpawnPlayer/textdraw.pwn"
// Text and time server
#include "./modules/characters/Player/ServerTextAndTime/textdraw.pwn"
#include "./modules/characters/Player/ServerTextAndTime/func.pwn"

#include "./modules/characters/Inventory/Inventory_Main.pwn"

// core login
#include "./modules/multi-account/account.pwn"
// core server
#include "./modules/server/radio.pwn"
// dynamic
#include "./modules/dynamic/func_dynamic.pwn"

#include "./modules/dynamic/Biz/build.pwn"

#include "./modules/dynamic/Doors/build.pwn"

//map
#include "./modules/Maps/NewbieSpawn.pwn"
#include "./modules/Maps/LSRPpark.pwn"
#include "./modules/Maps/Apartment.pwn"
public OnGameModeExit()
{
	mysql_close(Handle());
	return 1;
}
