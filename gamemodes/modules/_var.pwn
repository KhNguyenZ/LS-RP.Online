#define 		MAX_INVENTORY_PAGE 1
#define 		MAX_INVENTORY_SLOT 20
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
new PlayerText: InvPTD[MAX_PLAYERS][12],
	PlayerText: InvHSlotPTD[MAX_PLAYERS][3],
	PlayerText: InvSlotPTD[MAX_PLAYERS][20],
	PlayerText: InvISlotPTD[MAX_PLAYERS][1];
enum Inv_Item{
	item_id,
	Float:item_weight,
	item_strtd[32],
	item_name[32],
	item_detail[100],
	item_maxamount
}
enum enum_pInventory
{
    invSlot[MAX_INVENTORY_SLOT],
    invSlotAmount[MAX_INVENTORY_SLOT]
}

new pInventory[MAX_PLAYERS][enum_pInventory];
new Float:InvMaxWeight[MAX_PLAYERS], Float:InvWeight[MAX_PLAYERS];
new iItem_info[][Inv_Item] = {
	{0, 0,"","Trong", "N/A"},
	{1, 0.8,"mdl-2004:9mm","Glock", "Sung ngan, su dung dan Pistol,su dung vu khi va sau do su dung hop dan.", 1},
	{2, 1.0,"mdl-2004:tec9","Tec-9", "Sung tieu lien nho, su dung dan SMG, su dung vu khi va sau do su dung hop dan.", 1},
	{3, 1.1,"mdl-2004:uzi","Uzi", "Sung tieu lien nho, su dung dan SMG, su dung vu khi va sau do su dung hop dan.", 1},
	{4, 2.0,"mdl-2004:mp5","MP5", "Sung tieu lien, su dung dan SMG, su dung vu khi va sau do su dung hop dan.", 1},
	{5, 4.0,"mdl-2004:ak47","AK-47", "Sung truong tu dong, su dung dan Rifle, su dung vu khi va sau do su dung hop dan.", 1},
	{6, 3.5,"mdl-2004:m4","M4A1", "Sung truong, su dung dan Rifle, su dung vu khi va sau do su dung hop dan.", 1},
	{7, 3.5,"mdl-2004:shotgun","Shotgun", "Shotgun, su dung dan Shotgun, su dung vu khi va sau do su dung hop dan.", 1},
	{8, 3.5,"mdl-2004:spas12","Spas-12", "Shotgun ban tu dong, su dung dan Shotgun, su dung vu khi va sau do su dung hop dan.", 1},
	{9, 3.0,"mdl-2004:rifle","Rifle", "Sung truong ban tu dong, su dung dan Rifle, su dung vu khi va sau do su dung hop dan.", 2},
	{10, 4.0,"mdl-2004:sniper","Sniper", "Sung ban tia, su dung dan Sniper, su dung vu khi va sau do su dung hop dan.", 1}
};
new PlayerSelectSlot[MAX_PLAYERS];