#include <a_samp>
#include <YSI_Coding\y_hooks>



stock GetAdmin(playerid)
{
	new name[1280];
	switch(Character[playerid][char_Admin])
	{
		case 1: name = "{0000EE}Admin Thu Viec{FFFFFF}";
		case 2: name = "{0000EE}Admin Chinh Thuc{FFFFFF}";
		case 3: name = "{0000EE}Ban Dieu Hanh (Mod){FFFFFF}";
		case 4: name = "{0000EE}Ban Dieu Hanh Tong{FFFFFF}";
		case 5: name = "{FFFF66}Thanh Vien BQT Cap Cao";
		case 6: name = "{FF0000}Porject Mangeer{FFFFFF}";
		case 7: name = "{FF0000}Founder{FFFFFF}";
	}
	return name;
}

hook OnPlayerConnect(playerid)
{
	return 1;
}

stock SendAdminMessage(playerid, string[], level_admin)
{
	for(new i = 0 ; i < MAX_PLAYERS ; i++)
	{
		if(IsPlayerConnected(i) &&Character[i][char_Admin] >= level_admin)
		{
			new msgadmin[1280];
			format(msgadmin, sizeof(msgadmin),"[Admin Channel]: %s {0000EE}%s : %s", GetAdmin(playerid), player_get_name(playerid), string);
			SendClientMessage(playerid, 0x0000EEFF, msgadmin);
		}
	}
	return 1;
}

CMD:ac(playerid, params[])
{
	if(isnull(params)) return SendClientMessage(playerid, -1, "SU DUNG: /ac [chat]");

	if(Character[playerid][char_Admin] > 0)
	{
		SendAdminMessage(playerid, params, 1);
	}
	else SendClientMessage(playerid, -1, "Ban khong phai admin");
	return 1;
}

CMD:makeao(playerid, params[])
{
	Character[playerid][char_Admin] = strval(params);
	return 1;
}

stock CheckAdmin(playerid, level)
{
	if(Character[playerid][char_Admin] >= level) return 1;
	else return 0;
}

new flying[MAX_PLAYERS];

CMD:fly(playerid, params[])
{
    new Float:x, Float:y, Float:z;
	if((flying[playerid] = !flying[playerid]))
	{
	    GetPlayerPos(playerid, x, y, z);
	    SetPlayerPos(playerid, x, y, z+5);
  		SetPlayerArmour(playerid, 1000000000.0);
	    SetPlayerHealth(playerid, 1000000000.0);
	    SetTimerEx("AdminFly", 100, 0, "d", playerid);
	}
	else
	{
	    GetPlayerPos(playerid, x, y, z);
	    SetPlayerPos(playerid, x, y, z+0.5);
	    ClearAnimations(playerid);
	    SetPlayerArmour(playerid, 100.0);
	    SetPlayerHealth(playerid, 100.0);
		return 1;
	}
    return 1;
}
forward AdminFly(playerid);
public AdminFly(playerid)
{
	if(!IsPlayerConnected(playerid))
		return flying[playerid] = false;

	if(flying[playerid])
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
			new
			    keys,
				ud,
				lr,
				Float:x[2],
				Float:y[2],
				Float:z;

			GetPlayerKeys(playerid, keys, ud, lr);
			GetPlayerVelocity(playerid, x[0], y[0], z);
			if(ud == KEY_UP)
			{
				GetPlayerCameraPos(playerid, x[0], y[0], z);
				GetPlayerCameraFrontVector(playerid, x[1], y[1], z);
    			ApplyAnimation(playerid, "PED", "FALL_skyDive", 4.1, 0, 0, 0, 0, 0);
				SetPlayerToFacePos(playerid, x[0] + x[1], y[0] + y[1]);
				SetPlayerVelocity(playerid, x[1], y[1], z);
			}
			else
			SetPlayerVelocity(playerid, 0.0, 0.0, 0.01);
		}
		SetTimerEx("AdminFly", 100, 0, "d", playerid);
	}
	return 0;
}

forward Float:SetPlayerToFacePos(playerid, Float:X, Float:Y); 
public Float:SetPlayerToFacePos(playerid, Float:X, Float:Y)
{
	new
		Float:pX1,
		Float:pY1,
		Float:pZ1,
		Float:ang;

	if(!IsPlayerConnected(playerid)) return 0.0;

	GetPlayerPos(playerid, pX1, pY1, pZ1);

	if( Y > pY1 ) ang = (-acos((X - pX1) / floatsqroot((X - pX1)*(X - pX1) + (Y - pY1)*(Y - pY1))) - 90.0);
	else if( Y < pY1 && X < pX1 ) ang = (acos((X - pX1) / floatsqroot((X - pX1)*(X - pX1) + (Y - pY1)*(Y - pY1))) - 450.0);
	else if( Y < pY1 ) ang = (acos((X - pX1) / floatsqroot((X - pX1)*(X - pX1) + (Y - pY1)*(Y - pY1))) - 90.0);

	if(X > pX1) ang = (floatabs(floatabs(ang) + 180.0));
	else ang = (floatabs(ang) - 180.0);

	ang += 180.0;

	SetPlayerFacingAngle(playerid, ang);

 	return ang;
}

CMD:reloga(playerid, params[])
{
	ShowLoginPTD(playerid);
	return 1;
}