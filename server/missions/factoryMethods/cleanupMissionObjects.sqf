_missionRadius = 25; // 25 = 25 meters radius around mission spawn.

_missionTimeWait = 10*60; // 10*60 = 10 minutes, aka 600 seconds.

_missionObjectsToDelete = [
	"B_CargoNet_01_ammo_F",
	"CamoNet_BLUFOR_open_F",
	"CargoNet_01_barrels_F",
	"I_HMG_01_high_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BarGate_F",
	"Land_BarrelSand_F",
	"Land_Cargo20_military_green_F",
	"Land_Cargo_House_V3_F",
	"Land_Cargo_HQ_V3_F",
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Patrol_V2_F",
	"Land_Cargo_Patrol_V3_F",
	"Land_Cargo_Tower_V1_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncWall4_F",
	"Land_CratesWooden_F",
	"Land_HBarrierBig_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_Big_F",
	"Land_LampHalogen_F",
	"Land_LampHarbour_F",
	"Land_LampShabby_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_Corner_F",
	"Land_Pillow_camouflage_F",
	"Land_PowerGenerator_F",
	"Land_Sleeping_bag_F",
	"Land_SolarPanel_1_F",
	"Land_TTowerSmall_1_F"
];

/*	------------------------------------------------------------------------------------------
	DO NOT EDIT BELOW HERE!
	------------------------------------------------------------------------------------------	*/

_missionPosition = param [0, [0,0,0], [],3];

if (_missionPosition isEqualTo [0,0,0]) exitWith {};

uiSleep _missionTimeWait;

_anyPlayersAround = nearestObjects [_missionPosition, ["MAN"], _missionRadius];
while {((count _anyPlayersAround) > 0)} do
{
	_anyPlayersAround = nearestObjects [_missionPosition, ["MAN"], _missionRadius];
	uiSleep (_missionTimeWait / 2);
};

_anyObjectsAround = nearestObjects [_missionPosition, ["ALL"], _missionRadius];
_anyObjectsAroundCount = (count _anyObjectsAround);
_anyObjectsAroundDeleted = 0;
{
	if (_x getVariable ["ownerUID", ""] == "") then
	{
		_typeOfObject = typeOf _x;
		if (_typeOfObject in _missionObjectsToDelete) then
		{
			deleteVehicle _x;
			_anyObjectsAroundDeleted = _anyObjectsAroundDeleted + 1;
		};
	};
} forEach _anyObjectsAround;

diag_log format ["[CLEANUP MISSION OBJECTS] - CLEANED UP %1 OBJECT(S) OF %2 FOUND WITHIN %3 METERS RADIUS OF POSITION %4", _anyObjectsAroundDeleted, _anyObjectsAroundCount, _missionRadius, _missionPosition];
