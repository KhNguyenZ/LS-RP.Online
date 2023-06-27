#define 			MAX_ITEM_PAGE			24
#define 			MAX_STORE_PAGE			50
new PlayerText:StorePTD[MAX_PLAYERS][1];

new PlayerText:StoreButton[MAX_PLAYERS][3];

new PlayerText:StoreItemInfo[MAX_PLAYERS][6];

new PlayerText:StoreItem[MAX_PLAYERS][MAX_ITEM_PAGE];

new StoreSlot[MAX_PLAYERS] = 0;
// Phone, danh ba, xuc xac, can xang, day thung, xi ga, nc uong, bjnh son, dam radio, mask

new ListStoreItem[][]= {
	{0, "Phone", "Dung de goi dien , nhan tin , ...", 300},
	{1, "Dang ba", "Dung de tra cuu sdt , luu danh ba", 50},
	{2, "Dice", "Dung de choi co bac", 20},
	{3, "Can Xang", "Dung de bom xang vao xe khi khan cap", 20},
	{4, "Day thung", "Dung de troi bat ki ai", 10},
	{5, "Xi ga", "Dung de hut", 5},
	{6, "Nuoc Uong", "Nuoc Uong", 5},
	{7, "Binh son xe", "Dung de son chiec xe cua ban", 30},
	{8, "Radio", "Dung de chat voi moi nguoi trong may chu", 100},
	{9, "Mat na", "Dung de deo , khi chat se khong hien ten that cua ban", 1000}
};

new Float:TempVar[MAX_PLAYERS];