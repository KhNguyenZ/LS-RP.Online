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
<<<<<<< Updated upstream
	char_tanso
=======
	char_tanso,
	char_Interior,
	char_VW,
	char_Birthday[3],
	char_Note[1280],
	char_Nation,
	char_GioiTinh,
	
	char_Phone,
	char_DanhBa,
	char_Dice,
	char_Fuel,
	char_DayThung,
	char_XiGa,
	char_Nuoc,
	char_BinhSon,
	char_Radio,
	char_Mask
>>>>>>> Stashed changes
}

new Character[MAX_PLAYERS][character_Info];
new PlayerText: SpawnLSRP[MAX_PLAYERS][4];
new PlayerSetupping[MAX_PLAYERS];
new PlayerText:SpawnNewbiePTD[MAX_PLAYERS][7];
new PlayerText: FadeEffect[MAX_PLAYERS][1];
