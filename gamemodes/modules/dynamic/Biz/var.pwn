#define  					MAX_DYNAMIC_BIZ				3000
enum Biz_Enum{
	biz_id,
	biz_Name[128],
	biz_Locked,
	Float:biz_ExPos[3],
	Float:biz_InPos[3],
	biz_OwnerName[MAX_PLAYER_NAME],
	biz_Type,
	biz_PickupID,
	biz_Pickup,
	Text3D:biz_label,
	biz_ExVW,
	biz_InVW,
	biz_ExInterior,
	biz_InInterior,
	biz_PriceBiz
}
new BizInfo[MAX_DYNAMIC_BIZ][Biz_Enum];

