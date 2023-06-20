#include ".\modules\characters\character_config.pwn"

stock player_Login(const playerid)
{
	if(IsPlayerConnected(playerid) && Character[playerid][char_Login])
	{
		return 1;
	}
	return 0;
}

stock player_get_name(const playerid, bool:fix_ = true) 
{
	new 
		player_name[MAX_PLAYER_NAME];
	
	GetPlayerName(playerid, player_name, MAX_PLAYER_NAME);
	if(fix_) 
	{
		new 
			fix_pos = 0;
		
		while ((fix_pos = strfind(player_name, "_", false, fix_pos)) != -1) 
		{
			player_name[fix_pos] = ' ';   
		} 	
	}
	return player_name;
}

stock Clear_Chat(const playerid) 
{
	if(IsPlayerConnected(playerid)) 
	{
		for(new i = 0; i < 100; i ++) 
		{
			SendClientMessage(playerid, -1, #);
		}
		return 1;
	}
	return 0;
}

stock ReturnName(playerid)
{
	new pname[MAX_PLAYER_NAME];
	return GetPlayerName(playerid, pname, sizeof(pname));
}

stock LogConsole(string[], type[])
{
	printf("[KNCMS][Log-%s]:%s",type, string);
	return 1;
}


stock Log(sz_fileName[], sz_input[]) {

    new 
    	File: logfile,
    	i_dateTime[2][3],
    	sz_logEntry[180];

    gettime(i_dateTime[0][0], i_dateTime[0][1], i_dateTime[0][2]);
    getdate(i_dateTime[1][0], i_dateTime[1][1], i_dateTime[1][2]);
 
    format(sz_logEntry, sizeof(sz_logEntry), "[%i/%i/%i - %i:%02i:%02i] %s\r\n", i_dateTime[1][0], i_dateTime[1][1], i_dateTime[1][2], i_dateTime[0][0], i_dateTime[0][1], i_dateTime[0][2], sz_input);
    if(!fexist(sz_fileName)) logfile = fopen(sz_fileName, io_write);
    else logfile = fopen(sz_fileName, io_append);
    if(logfile)
    {
        fwrite(logfile, sz_logEntry);
        fclose(logfile);
    }
    return 1;
}