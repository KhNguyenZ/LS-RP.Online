enum 
{
	dialog_Login = 1,
	dialog_Register,
	dialog_charSelect,
	dialog_charCreate,
}
new PlayerText:LoginPTD[MAX_PLAYERS][10];
new PlayerText:scm_PTD[MAX_PLAYERS];
new HienThi[MAX_PLAYERS];

enum character_Info 
{
	char_unique_Id[1280],
	char_account_id,
	char_player_id,
	Float:char_last_Pos[4],
	bool:char_Login,
	char_Skin,
	char_Cash,
	char_Admin,
	Float:char_health,
	Float:char_armour,
	char_tanso
}

new Character[MAX_PLAYERS][character_Info];
new PlayerText: SpawnLSRP[MAX_PLAYERS][4];
new PlayerSetupping[MAX_PLAYERS];
new PlayerText:SpawnNewbiePTD[MAX_PLAYERS][7];
new PlayerText: FadeEffect[MAX_PLAYERS][1];
