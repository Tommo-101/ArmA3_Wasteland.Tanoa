// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup2.sqf
//	@file Author: AgentRev, JoSchaap

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = param [2, 7, [0]];
_radius = param [3, 10, [0]];

_unitTypes =
[
	"RyanZombieC_man_pilot_Fslow", "RyanZombie22slow", "RyanZombieB_Soldier_04_f_1slow",
	"RyanZombieB_Soldier_lite_Fslow", "RyanZombieB_RangeMaster_Fslow", "RyanZombie29slow",
	"RyanZombieC_man_1slow", "RyanZombieB_Soldier_03_f_1slow", "RyanZombie27slow", "RyanZombieC_man_polo_4_Fslow",
	"RyanZombieB_Soldier_lite_F_1", "RyanZombieC_man_p_fugitive_F", "RyanZombie25", "RyanZombie22", "RyanZombieC_man_polo_1_F",
	"RyanZombie16", "RyanZombieC_man_hunter_1_F", "RyanZombieC_man_1"
];

for "_i" from 1 to _nbUnits do
{
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = _group createUnit [_unitTypes call BIS_fnc_selectRandom, _uPos, [], 0, "Form"];
	_unit setPosATL _uPos;

	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeVest _unit;
	removeBackpack _unit;

	_unit addItemToVest "RyanZombiesAntiVirusTemporary_Item";
	_unit addRating 1e11;
	_unit call setMissionSkill;
	_unit addEventHandler ["Killed", server_playerDied];
};
