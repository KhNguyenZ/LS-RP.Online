
func:player_Login(const playerid)
{
	if(IsPlayerConnected(playerid) && Character[playerid][char_Login])
	{
		return 1;
	}
	return 0;
}
func:RandomEx(min, max)
{
    new a = random(max - min) + min;
    return a;
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

stock SetPlayerJoinCamera(playerid)
{
	new randcamera = RandomEx(1,10);
	switch(randcamera)
	{
		case 1: // Benh Vien SF
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
   			InterpolateCameraPos(playerid, -2715.813720, 570.016723, 19.158573, -1975.540527, 562.937927, 59.830295, 25000);
			InterpolateCameraLookAt(playerid, -2710.986328, 571.276306, 18.826786, -1979.797729, 562.035217, 57.368297, 18000);
		}
		case 2: // City Hall To Pizza
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, -1881.850585, 971.852905, 73.548904, -1795.089477, 1394.321411, 30.082445, 20000);
			InterpolateCameraLookAt(playerid, -1884.813354, 968.006713, 72.353561, -1791.281372, 1391.242309, 29.073791, 15000);
		}
		case 3: // Nga Tu TRucker
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, -1661.901367, -14.027463, 6.758706, -1708.980102, 300.460449, 35.345272, 20000);
			InterpolateCameraLookAt(playerid, -1659.607055, -9.603525, 7.164509, -1713.582275, 300.629577, 33.398178, 15000);
		}
		case 4: // Pizza To Bank
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, -1801.528442, 1412.879150, 22.452032, -1472.461914, 950.851196, 47.155590, 20000);
			InterpolateCameraLookAt(playerid, -1798.010986, 1409.372802, 21.875198, -1476.977294, 949.634399, 45.386184, 15000);
		}
		case 5: // Trucker
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, -1475.032836, 215.806381, 10.032812, -1664.807373, -13.957154, 7.945104, 18000);
			InterpolateCameraLookAt(playerid, -1478.902832, 212.640792, 10.083591, -1663.551879, -9.119169, 8.077901, 14000);
		}
		case 6: // LS to Trucker
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, -1720.617309, -744.309631, 36.529880, -1752.041137, 162.737533, 29.611810, 30000);
			InterpolateCameraLookAt(playerid, -1722.161010, -739.557922, 36.334617, -1749.607788, 158.639328, 28.100660, 20000);
		}
		case 7: // SFPD to FDSA
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, -1369.111816, 731.161376, 13.104322, -2578.446533, 734.975219, 133.224731, 40000);
			InterpolateCameraLookAt(playerid, -1374.109252, 731.302001, 13.182446, -2578.433349, 731.508544, 129.621658, 20000);
		}
		case 8: // |----------allsaints----------|
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, 546.749267, -1408.705200, 20.525941, 1250.746582, -1393.686767, 19.419189, 30000);
			InterpolateCameraLookAt(playerid, 551.736450, -1408.684814, 20.169057, 1247.091064, -1390.297119, 19.035037, 15000);
		}
		case 9: // |----------grovestrees----------|
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, 2550.974121, -1664.531738, 16.615615, 2186.334716, -1653.106933, 14.849622, 30000);
			InterpolateCameraLookAt(playerid, 2545.977050, -1664.520996, 16.447679, 2188.319091, -1657.573486, 15.904144, 15000);
		}
		case 10: // 	|----------traingrove----------|
		{
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerInterior(playerid, 0);
			InterpolateCameraPos(playerid, 2287.160888, -918.219055, 25.588674, 2277.710693, -1746.899169, 43.992710, 30000);
			InterpolateCameraLookAt(playerid, 2287.145996, -923.217895, 25.694135, 2282.406005, -1746.867797, 42.274547, 15000);
		}
	}
	return 1;
}