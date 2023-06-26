#include <a_samp>
#include <sscanf2>
#include <YSI_Coding\y_hooks>

// Radio
func:SendRadioMessage(playerid, const message[], tan_so = 1)
{
	foreach(new i: Player)
	{
		if(Character[i][char_tanso] == tan_so)
		{
			new chatmsg[1280];
			format(chatmsg, sizeof(chatmsg), "{00FF00}World Channel | Frequency: %d | %s noi: %s",tan_so, player_get_name(playerid), message);
			SendClientMessage(i, -1, chatmsg);
		}
	}
	return 1; 
}
CMD:chat(playerid, params[])
{
	if(isnull(params)) SendClientMessage(playerid, -1, "SU DUNG: /chat [noi dung chat]");
	else SendRadioMessage(playerid, params, Character[playerid][char_tanso]);
	return 1;
}