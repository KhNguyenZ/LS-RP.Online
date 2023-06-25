/*

CMD:ngocok
{
	notification.Show(playerid, "Info", "Kamu sedang ngocok", "hud:burgerShoot");
}

*/

#define 	MAX_NOTIFY 		(10)
#define 	MAX_NT_STRING 	(320)
#define 	MAX_NT_TITLE 	(64)

enum ntInfo { ntIcon[32], ntTitle[MAX_NT_TITLE], ntMessage[MAX_NT_STRING], ntLines }
static notifyInfo[MAX_PLAYERS][MAX_NOTIFY][ntInfo],
PlayerText:notifyPTD[MAX_PLAYERS][MAX_NOTIFY * 6],
notifyIndex[MAX_PLAYERS];

#define notify::%0(%1) forward %0(%1); public %0(%1)
#define InternalNotification_show InternalNotification_Show
#define notification.	InternalNotification_

static const TDTextCaracterWidth[] = {
	0,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,
	12,12,12,12,12,12,12,13,13,28,28,28,28,8,17,17,30,28,28,12,9,21,28,14,28,28,
	28,28,28,28,28,28,13,13,30,30,30,30,10,25,23,21,24,22,20,24,24,17,20,22,20,
	30,27,27,26,26,24,23,24,31,23,31,24,23,21,28,33,33,14,28,10,11,12,9,11,10,
	10,12,12,7,7,13,5,18,12,10,12,11,10,12,8,13,13,18,17,13,12,30,30,37,35,37,
	25,25,25,25,33,21,24,24,24,24,17,17,17,17,27,27,27,27,31,31,31,31,11,11,11,
	11,11,20,9,10,10,10,10,7,7,7,7,10,10,10,10,13,13,13,13,27,12,30
};


// Get width for char //
stock getSizeMessage(const string:message[], maxWidth=500) {
	new size = 0, lines=1, i=-1, lastPoint = 0;

	while(message[++i]) {
		size += TDTextCaracterWidth[message[i]];

		switch(message[i]) {
			case ' ': 
				lastPoint = i;

			default: 
				if(size >= maxWidth) 
					++lines, 
					size -= maxWidth, 
					size += i - lastPoint;
		}
	}
	return lines;
}

stock InternalNotification_Show(const playerid, const string:title[], const string:message[], const string:icon[] = "hud:radar_triads", const timehide = 5)
{
	for(new x=-1;++x<notifyIndex[playerid];) {
		for(new i=-1;++i<6;) PlayerTextDrawDestroy(playerid, notifyPTD[playerid][(x*6) + i]);
		notifyInfo[playerid][notifyIndex[playerid]-x] = notifyInfo[playerid][(notifyIndex[playerid]-x)-1];
	}

	strmid(notifyInfo[playerid][0][ntTitle], title, 0, MAX_NT_TITLE);
	strmid(notifyInfo[playerid][0][ntMessage], message, 0, MAX_NT_STRING);
	strmid(notifyInfo[playerid][0][ntIcon], icon, 0, 20);
	notifyInfo[playerid][0][ntLines] = getSizeMessage(message);

	++notifyIndex[playerid];

	new Float:static_x=0.0;
	for(new x=-1;++x<notifyIndex[playerid];) {
		createNotifyTD(playerid, x, x * 6, static_x);
		static_x+=(notifyInfo[playerid][x][ntLines] * 7.5) + 40.0;
	}

	SetTimerEx(#destroy_notify, timehide * 1000, false, #i, playerid);
	return 1;
}

notify::destroy_notify(playerid) {
	if(!notifyIndex[playerid]) return 1;
	--notifyIndex[playerid];
	for(new i=-1;++i<6;) PlayerTextDrawDestroy(playerid, notifyPTD[playerid][(notifyIndex[playerid]*6) + i]);
	return 1;
}

stock createNotifyTD(const playerid, index, i, const Float:static_x) {
	new lines = notifyInfo[playerid][index][ntLines],Float:x = (lines * 7.5) + static_x;

	notifyPTD[playerid][i] = CreatePlayerTextDraw(playerid, 518.000000, 298.000000 - x, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, notifyPTD[playerid][i], 4);
	PlayerTextDrawLetterSize(playerid, notifyPTD[playerid][i], 0.600000, 2.000000 + (lines *0.9));
	PlayerTextDrawTextSize(playerid, notifyPTD[playerid][i], 153.000000, 39.000000);
	PlayerTextDrawSetOutline(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawAlignment(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawColor(playerid, notifyPTD[playerid][i], 190);
	PlayerTextDrawBackgroundColor(playerid, notifyPTD[playerid][i], 255);
	PlayerTextDrawBoxColor(playerid, notifyPTD[playerid][i], 50);
	PlayerTextDrawUseBox(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetProportional(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetSelectable(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawShow(playerid, notifyPTD[playerid][i]);

	notifyPTD[playerid][++i] = CreatePlayerTextDraw(playerid, 27.84, 298.5 - x, "");
	PlayerTextDrawLetterSize(playerid, notifyPTD[playerid][i], 0.0, 0.0);
	PlayerTextDrawTextSize(playerid, notifyPTD[playerid][i], 109.0, 15.0 + (lines * 7.2));
	PlayerTextDrawAlignment(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawColor(playerid, notifyPTD[playerid][i], -16777184);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawSetOutline(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawBackgroundColor(playerid, notifyPTD[playerid][i], 255);
	PlayerTextDrawFont(playerid, notifyPTD[playerid][i], 4);
	PlayerTextDrawSetProportional(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawShow(playerid, notifyPTD[playerid][i]);

	notifyPTD[playerid][++i] = CreatePlayerTextDraw(playerid, 518.000000, 298.000000 - x, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, notifyPTD[playerid][i], 4);
	PlayerTextDrawLetterSize(playerid, notifyPTD[playerid][i], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, notifyPTD[playerid][i], 3.500000, 39.000000);
	PlayerTextDrawSetOutline(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawAlignment(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawColor(playerid, notifyPTD[playerid][i], 512819199);
	PlayerTextDrawBackgroundColor(playerid, notifyPTD[playerid][i], 255);
	PlayerTextDrawBoxColor(playerid, notifyPTD[playerid][i], 50);
	PlayerTextDrawUseBox(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetProportional(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetSelectable(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawShow(playerid, notifyPTD[playerid][i]);

	notifyPTD[playerid][++i] = CreatePlayerTextDraw(playerid, 528.000000, 311.000000 - x, notifyInfo[playerid][index][ntIcon]);
	PlayerTextDrawFont(playerid, notifyPTD[playerid][i], 4);
	PlayerTextDrawLetterSize(playerid, notifyPTD[playerid][i], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, notifyPTD[playerid][i], 11.500000, 13.000000);
	PlayerTextDrawSetOutline(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawAlignment(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawColor(playerid, notifyPTD[playerid][i], -1);
	PlayerTextDrawBackgroundColor(playerid, notifyPTD[playerid][i], 255);
	PlayerTextDrawBoxColor(playerid, notifyPTD[playerid][i], 50);
	PlayerTextDrawUseBox(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetProportional(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetSelectable(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawShow(playerid, notifyPTD[playerid][i]);

	notifyPTD[playerid][++i] = CreatePlayerTextDraw(playerid, 544.000000, 301.000000 - x, notifyInfo[playerid][index][ntTitle]);
	PlayerTextDrawFont(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawLetterSize(playerid, notifyPTD[playerid][i], 0.262499, 1.349998);
	PlayerTextDrawTextSize(playerid, notifyPTD[playerid][i], 617.000000, 12.500000);
	PlayerTextDrawSetOutline(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawAlignment(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawColor(playerid, notifyPTD[playerid][i], -1);
	PlayerTextDrawBackgroundColor(playerid, notifyPTD[playerid][i], 255);
	PlayerTextDrawBoxColor(playerid, notifyPTD[playerid][i], 50);
	PlayerTextDrawUseBox(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawSetProportional(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetSelectable(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawShow(playerid, notifyPTD[playerid][i]);

	notifyPTD[playerid][++i] = CreatePlayerTextDraw(playerid, 544.000000, 317.000000 - x, notifyInfo[playerid][index][ntMessage]);
	PlayerTextDrawFont(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawLetterSize(playerid, notifyPTD[playerid][i], 0.199999, 1.099997);
	PlayerTextDrawTextSize(playerid, notifyPTD[playerid][i], 676.500000, 12.500000);
	PlayerTextDrawSetOutline(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawSetShadow(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawAlignment(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawColor(playerid, notifyPTD[playerid][i], -1);
	PlayerTextDrawBackgroundColor(playerid, notifyPTD[playerid][i], 255);
	PlayerTextDrawBoxColor(playerid, notifyPTD[playerid][i], 50);
	PlayerTextDrawUseBox(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawSetProportional(playerid, notifyPTD[playerid][i], 1);
	PlayerTextDrawSetSelectable(playerid, notifyPTD[playerid][i], 0);
	PlayerTextDrawShow(playerid, notifyPTD[playerid][i]);
	return true;
}

public OnPlayerConnect(playerid)
{
	
	notifyIndex[playerid] = 0;

	#if defined NT_OnPlayerConnect
		return NT_OnPlayerConnect(playerid);
	#else
		return 1;
	#endif
}
#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif

#define OnPlayerConnect NT_OnPlayerConnect
#if defined NT_OnPlayerConnect
	forward NT_OnPlayerConnect(playerid);
#endif