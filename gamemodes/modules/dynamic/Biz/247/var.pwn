#define 			MAX_ITEM_PAGE			24
new PlayerText:StorePTD[playerid][1];
new PlayerText:StoreButton[playerid][3];
new PlayerText:StoreInfo[playerid][3];

// Phone, danh ba, xuc xac, can xang, day thung, xi ga, nc uong, bjnh son, dam radio, cam, ve so, key khoa xe, mask,

new const ListStoreItem[][3]={
	{0, "Phone", "Dung de goi dien , nhan tin , ..."},
	{1, "Dang ba", "Dung de tra cuu sdt , luu danh ba"},
	{2, "Dice", "Dung de choi co bac"},
	{3, "Can Xang", "Dung de bom xang vao xe khi khan cap"},
	{4, "Day thung", "Dung de troi bat ki ai"},
	{5, "Xi ga", "Dung de hut"},
	{6, "Nuoc Uong", "Nuoc Uong"},
	{7, "Binh son xe", "Dung de son chiec xe cua ban"},
	{8, "Radio", "Dung de chat voi moi nguoi trong may chu"},
	{9, "Mat na", "Dung de deo , khi chat se khong hien ten that cua ban"}
};
enum Store_E{
	id,
	slot
}