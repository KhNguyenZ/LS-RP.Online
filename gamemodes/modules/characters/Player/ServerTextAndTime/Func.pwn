new TimeZ[32], HourZ, MinuteZ, DayZ, MonthZ, YearZ, DaysZ[50];
func:ShowPlayerTextTime(playerid)
{
    TextDrawShowForPlayer(playerid, LSRP[0]);
    PlayerTextDrawShow(playerid, LSRPTime[playerid][0]);
    PlayerTextDrawShow(playerid, LSRPTime[playerid][1]);
	return 1;
}
func:UpdateTextTime(playerid)
{
	getdate(YearZ, MonthZ, DayZ);
    gettime(HourZ, MinuteZ);
    format(TimeZ, sizeof(TimeZ), "%02d:%02d", HourZ, MinuteZ);
    format(DaysZ, sizeof(DaysZ), "%02d/%02d/%d", DayZ, MonthZ, YearZ);
    PlayerTextDrawSetString(playerid, LSRPTime[playerid][0], TimeZ);
    PlayerTextDrawSetString(playerid, LSRPTime[playerid][1], DaysZ);
    PlayerTextDrawShow(playerid, LSRPTime[playerid][0]);
    PlayerTextDrawShow(playerid, LSRPTime[playerid][1]);
	return 1;
}
