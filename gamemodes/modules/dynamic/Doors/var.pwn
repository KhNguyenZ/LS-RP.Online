#define   						MAX_DYNAMIC_DOORS					3000

enum door_e
{
	door_id,
	door_name[1280],
	Text3D:door_label,
	door_ownerid,
	Float:door_ExPos[3],
	Float:door_InPos[3],
	door_lock,
	door_vip,
	door_admin,
	door_group,
	door_pickup,
	door_ExVW,
	door_InVW,
	door_ExInterior,
	door_InInterior
}
new DoorInfo[MAX_DYNAMIC_DOORS][door_e];