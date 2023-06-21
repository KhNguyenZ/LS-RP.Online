#include <a_mysql>
#include <YSI\y_hooks>

static 
	MySQL:iDatabase;

MySQL: Handle() 
{
	return MySQL:iDatabase;
}

hook OnGameModeInit() 
{
	iDatabase = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DB);
	if(mysql_errno(iDatabase))
	{
		print("> Ket noi de du lieu that bai."); 
		print(">>> This Server Will Shutdown After 5 Second");
		SetTimerEx("ReturnExitGamemode_", 5000, 0, "");
		return (~0);
	}
	else print("> Ket noi den du lieu thanh cong."); 
	return 1;
}


forward ReturnExitGamemode_();
public ReturnExitGamemode_()
{
	SendRconCommand("exit");
}