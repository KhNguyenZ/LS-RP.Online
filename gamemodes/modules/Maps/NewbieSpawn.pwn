#include <YSI\y_hooks>

hook OnPlayerConnect(playerid){
	RemoveBuildingForPlayer(playerid, 955, 1729.789, -1943.046, 12.945, 0.250);
	RemoveBuildingForPlayer(playerid, 4821, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 4961, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 5033, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 5055, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1806.430, -1901.828, 16.375, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1774.760, -1901.540, 16.375, 0.250);
	RemoveBuildingForPlayer(playerid, 4821, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 4961, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 5033, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 5055, 1745.197, -1882.848, 26.138, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1806.430, -1901.828, 16.375, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1774.760, -1901.540, 16.375, 0.250);
}

hook OnGameModeInit()
{
	new MapNewbieSpawn;
	MapNewbieSpawn = CreateDynamicObject(-3022, 1742.676757, -1882.755004, 26.033287, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 8, 18835, "mickytextures", "smileyface2", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1775.574340, -1931.539306, 15.869441, 0.000007, 90.000000, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1775.574340, -1935.041503, 15.869441, 0.000007, 90.000000, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1775.584350, -1937.253295, 14.263449, 0.000007, 17.800226, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1785.196411, -1931.539306, 15.869441, 0.000014, 90.000000, 89.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1785.196411, -1935.041503, 15.869441, 0.000014, 90.000000, 89.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1785.225463, -1937.253295, 14.263449, 0.000007, 17.800226, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1794.839599, -1931.539306, 15.869441, 0.000007, 90.000000, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1794.839599, -1935.041503, 15.869441, 0.000007, 90.000000, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1794.866333, -1937.253295, 14.263449, 0.000007, 17.800226, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1804.461669, -1931.539306, 15.869441, 0.000014, 90.000000, 89.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1804.461669, -1935.041503, 15.869441, 0.000014, 90.000000, 89.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19445, 1804.496093, -1937.253295, 14.263449, 0.000007, 17.800226, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19426, 1807.843994, -1901.068115, 13.873507, 90.000000, 0.000000, -1.000000, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18835, "mickytextures", "whiteforletters", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19426, 1807.825805, -1902.077636, 13.873507, 90.000000, 0.000000, -1.000000, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18835, "mickytextures", "whiteforletters", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19426, 1807.825805, -1902.077636, 14.493518, 90.000000, 0.000000, -1.000000, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18835, "mickytextures", "whiteforletters", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19426, 1807.843994, -1901.068115, 14.493512, 90.000000, 0.000000, -1.000000, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterial(MapNewbieSpawn, 0, 18835, "mickytextures", "whiteforletters", 0x00000000);
	MapNewbieSpawn = CreateDynamicObject(19482, 1807.737182, -1901.635742, 14.675274, 0.000000, -0.000007, 178.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterialText(MapNewbieSpawn, 0, "{212c58}Los Santos Roleplay", 130, "Engravers MT", 30, 1, 0x00000000, 0x00000000, 1);
	MapNewbieSpawn = CreateDynamicObject(19482, 1807.737182, -1901.635742, 14.345273, 0.000000, -0.000007, 178.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterialText(MapNewbieSpawn, 0, "{000000}Vietnamese Community", 130, "Engravers MT", 25, 1, 0x00000000, 0x00000000, 1);
	MapNewbieSpawn = CreateDynamicObject(19482, 1807.737182, -1901.635742, 14.075275, 0.000000, -0.000007, 178.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterialText(MapNewbieSpawn, 0, "{8840ed}OPEN.MP", 130, "Engravers MT", 30, 1, 0x00000000, 0x00000000, 1);
	MapNewbieSpawn = CreateDynamicObject(19482, 1807.737182, -1901.635742, 13.655269, 0.000000, -0.000007, 178.999954, -1, -1, -1, 1000.00, 1000.00);
	SetDynamicObjectMaterialText(MapNewbieSpawn, 0, "{ff0000}Author: DangNguyen, gnoust,\nKhNguyenZ.", 130, "Calibri", 30, 1, 0x00000000, 0x00000000, 1);


	MapNewbieSpawn = CreateDynamicObject(1557, 1752.131958, -1893.877197, 12.571161, 0.000000, 0.000000, 270.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(2010, 1752.408447, -1893.105712, 12.523772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1557, 1752.134155, -1896.899047, 12.571161, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(18666, 1850.007812, -1876.877929, 14.359298, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(18665, 1850.007812, -1876.897949, 14.359298, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(2010, 1752.408447, -1897.669555, 12.523772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1597, 1755.487304, -1889.629516, 15.141439, 0.000007, 0.000000, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1597, 1755.487304, -1901.438110, 15.141439, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1597, 1762.878540, -1889.629516, 15.211441, 0.000007, 0.000000, 89.999977, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1597, 1762.878540, -1901.438110, 15.211441, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1773.070434, -1895.212402, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1773.070434, -1891.960815, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1773.070434, -1898.342285, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1773.017944, -1889.378784, 15.251070, 0.000000, 0.000000, 180.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1773.017944, -1901.108886, 15.251070, 0.000000, 0.000000, 180.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1773.070434, -1886.219970, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1770.970947, -1907.164062, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1773.070434, -1904.072265, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1215, 1773.070434, -1907.164062, 13.102564, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(8131, 1763.923217, -1916.513427, 22.866802, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1773.017944, -1912.321533, 15.251070, 0.000000, 0.000000, 180.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(8131, 1763.923217, -1925.424560, 22.866802, 0.000000, 0.000000, 90.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1773.017944, -1923.401733, 15.251070, 0.000000, 0.000000, 180.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1793.724609, -1883.226196, 15.251070, 0.000000, 0.000000, 270.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1800.306152, -1883.226196, 15.251070, 0.000000, 0.000000, 270.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(19369, 1808.693725, -1900.152099, 12.487570, 0.000000, 90.000000, -11.499998, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(19369, 1808.423095, -1902.725830, 12.469573, 0.000000, 90.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(8168, 1808.507080, -1884.403076, 14.242682, 0.000000, 0.000000, 17.300010, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1807.366943, -1912.327270, 15.251070, 0.000000, 0.000000, 180.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(991, 1811.615478, -1897.939453, 12.374711, 0.000000, 0.000000, 270.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(966, 1811.394165, -1887.595825, 12.367862, 0.000000, 0.000000, 450.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(982, 1703.869873, -1859.280029, 13.250000, 360.000000, 0.000000, 359.880004, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(1231, 1807.366943, -1922.205444, 15.251070, 0.000000, 0.000000, 180.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(982, 1703.869873, -1856.079956, 13.250000, 360.000000, 0.000000, 359.880004, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(17070, 1790.810058, -1943.040039, 12.420000, 0.000000, 0.000000, 182.500000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(17070, 1792.410034, -1943.040039, 12.409898, 0.000000, 0.000000, 182.500000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(-5000, 1742.701171, -1882.748291, 26.040140, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(-5000, 1742.701171, -1882.748291, 26.040140, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	MapNewbieSpawn = CreateDynamicObject(-5000, 1742.701171, -1882.748291, 26.040140, 0.000000, 0.000000, 0.000000, -1, -1, -1, 1000.00, 1000.00);
	LogConsole("Map", "[gnoust-map] Map Newbie spawn da load thanh cong");
	return 1;
}
