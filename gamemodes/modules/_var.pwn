enum 
{
	dialog_Login = 1,
	dialog_Register,
	dialog_charSelect,
	dialog_charCreate,
}
new PlayerText:LoginPTD[MAX_PLAYERS][10];
new PlayerText:RegisterPTD[MAX_PLAYERS][13];
new PlayerText:MainRegisterPTD[MAX_PLAYERS][10];
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
	char_tanso,
	char_Interior,
	char_VW,
	char_Birthday[3],
	char_Note[1280],
	char_Nation,
	char_GioiTinh,
}

new Character[MAX_PLAYERS][character_Info];
new PlayerText: SpawnLSRP[MAX_PLAYERS][4];
new PlayerSetupping[MAX_PLAYERS];
// new PlayerText:SpawnNewbiePTD[MAX_PLAYERS][7];
new PlayerText: FadeEffect[MAX_PLAYERS][1];
new PlayerText: SelectCharPTD[MAX_PLAYERS][7];
enum Char_Select_E {
	cs_skin,
	cs_lastlogin[24],
	cs_gender,
	cs_level
}
new CharSelectInfo[MAX_PLAYERS][Char_Select_E][3];

new PlayerText:InfoCharPTD[MAX_PLAYERS][8];

new character_Name_data[MAX_PLAYERS][3][24];

new CharSkinSelect[MAX_PLAYERS] = 1;