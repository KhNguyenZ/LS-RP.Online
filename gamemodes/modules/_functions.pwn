

func:player_Login(const playerid)
{
	if(IsPlayerConnected(playerid) && Character[playerid][char_Login])
	{
		return 1;
	}
	return 0;
}

func:player_get_name(const playerid, bool:fix_ = true) 
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

func:Clear_Chat(const playerid) 
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

func:ReturnName(playerid)
{
	new pname[MAX_PLAYER_NAME];
	return GetPlayerName(playerid, pname, sizeof(pname));
}

func:LogConsole(string[], type[])
{
	printf("[KNCMS][Log-%s]:%s",type, string);
	return 1;
}


func:Log(sz_fileName[], sz_input[]) {

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

func:ReloadTextDraw(Text:text_reload)
{
	TextDrawHideForPlayer(playerid, text_reload);
	TextDrawShowForPlayer(playerid, text_reload);
	return 1;
}
func:ReloadPlayerTextDraw(playerid, PlayerText:reload_ptd)
{
	PlayerTextDrawHide(playerid, reload_ptd);
	PlayerTextDrawShow(playerid, reload_ptd);
	return 1;
}

func:HienTextdraw(playerid, string[], time = 2000)
{
    PlayerTextDrawSetString(playerid, scm_PTD[playerid], " ");
    PlayerTextDrawHide(playerid, scm_PTD[playerid]);
    //SCMText(playerid);
    PlayerTextDrawSetString(playerid, scm_PTD[playerid], string);
    PlayerTextDrawShow(playerid, scm_PTD[playerid]);
    if(HienThi[playerid] == 0)
    {
        SetTimerEx("XoaTextDraw", time, false, "i", playerid);
        HienThi[playerid] = 1;
    }
    return 1;
}

forward XoaTextDraw(playerid);
public XoaTextDraw(playerid)
{
    PlayerTextDrawSetString(playerid, scm_PTD[playerid], " ");
    PlayerTextDrawHide(playerid, scm_PTD[playerid]);
    //PlayerTextDrawDestroy(playerid, scm_PTD[playerid]);
    HienThi[playerid] = 0;
    //SCM(playerid, COLOR_WHITE, "Textdraw da duoc xoa bo.");
    return 1;
}
func:FadeInPlayerScreen(playerid)
{
	SetPVarInt(playerid, "phatfadein", 255);
	PlayerTextDrawColor(playerid, FadeEffect[playerid][0], GetPVarInt(playerid, "phatfadein"));
 	PlayerTextDrawShow(playerid, FadeEffect[playerid][0]);
	SetTimerEx("fadein1", 25, false, "i", playerid);
}

forward fadein1(playerid);
public fadein1(playerid)
{
	if(GetPVarInt(playerid, "phatfadein") > 0)
	{
	    new fadeplus = GetPVarInt(playerid, "phatfadein");
		SetPVarInt(playerid, "phatfadein", fadeplus-=15);
		SetTimerEx("fadein2", 25, false, "i", playerid);
		PlayerTextDrawColor(playerid, FadeEffect[playerid][0], GetPVarInt(playerid, "phatfadein"));
	 	PlayerTextDrawShow(playerid, FadeEffect[playerid][0]);
	}
	return 1;
}

forward fadein2(playerid);
public fadein2(playerid)
{
	if(GetPVarInt(playerid, "phatfadein") > 0)
	{
	    new fadeplus = GetPVarInt(playerid, "phatfadein");
		SetPVarInt(playerid, "phatfadein", fadeplus-=15);
		SetTimerEx("fadein1", 25, false, "i", playerid);
		PlayerTextDrawColor(playerid, FadeEffect[playerid][0], GetPVarInt(playerid, "phatfadein"));
	 	PlayerTextDrawShow(playerid, FadeEffect[playerid][0]);
	}
	return 1;
}





func:FadeOutPlayerScreen(playerid)
{
	SetPVarInt(playerid, "phatfade", 0);
	PlayerTextDrawColor(playerid, FadeEffect[playerid][0], GetPVarInt(playerid, "phatfade"));
 	PlayerTextDrawShow(playerid, FadeEffect[playerid][0]);
	SetTimerEx("fadeout1", 25, false, "i", playerid);
}

forward fadeout1(playerid);
public fadeout1(playerid)
{
	if(GetPVarInt(playerid, "phatfade") < 255)
	{
	    new fadeplus = GetPVarInt(playerid, "phatfade");
		SetPVarInt(playerid, "phatfade", fadeplus+=15);
		SetTimerEx("fadeout2", 25, false, "i", playerid);
		PlayerTextDrawColor(playerid, FadeEffect[playerid][0], GetPVarInt(playerid, "phatfade"));
	 	PlayerTextDrawShow(playerid, FadeEffect[playerid][0]);
	}
	return 1;
}
forward fadeout2(playerid);
public fadeout2(playerid)
{
	if(GetPVarInt(playerid, "phatfade") < 255)
	{
	    new fadeplus = GetPVarInt(playerid, "phatfade");
		SetPVarInt(playerid, "phatfade", fadeplus+=15);
		SetTimerEx("fadeout1", 25, false, "i", playerid);
		PlayerTextDrawColor(playerid, FadeEffect[playerid][0], GetPVarInt(playerid, "phatfade"));
	 	PlayerTextDrawShow(playerid, FadeEffect[playerid][0]);
	}
	return 1;
}

forward PlayerJoinGameReal(playerid);
public PlayerJoinGameReal(playerid)
{
    SpawnPlayer(playerid);
	FadeInPlayerScreen(playerid);
    return 1;
}
