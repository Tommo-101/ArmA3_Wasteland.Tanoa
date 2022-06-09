// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_BountyHunt.sqf
//	@file Author: JoSchaap, AgentRev, LouD
//	@file Edit: 27/04/2018 by [509th] Coyote Rogue
// 	@file Edit: 06/04/2020 by [Raw Gaming] SoulStalker
// 	@file WS Edit: GriffinZS

if (!isServer) exitwith {};
#include "moneyMissionDefines.sqf"

private ["_boxes1", "_box1", "_geoPos", "_sniper", "_marker1", "_currBox1", "_smokemarker"];

_setupVars =
{
	_missionType = "Notorious Sniper";
	_locationsArray = MissionSpawnMarkers;
};

_setupObjects =
{

	_missionPos = markerPos _missionLocation;

	_geoPos = _missionPos vectorAdd ([[250 + random 250, 0, 0], random 360] call BIS_fnc_rotateVector2D);

	// Sniper
	_aiGroup = createGroup CIVILIAN;
    _sniper = [_aiGroup, _missionPos] call createRandomSoldier;
    _sniper setPosATL [_geoPos select 0, _geoPos select 1, 0];

	_sniper addUniform "U_O_R_Gorka_01_brown_F";
	_sniper addVest "V_Chestrig_khk";
	_sniper addItemToVest "FirstAidKit";
	_sniper addBackpack "B_FieldPack_cbr";
	_sniper addItem "NVGoggles";
	_sniper assignItem "NVGoggles";
	_sniper addMagazine "7Rnd_408_Mag";
	_sniper addWeapon "srifle_GM6_camo_F";
	_sniper addPrimaryWeaponItem "optic_KHS_tan";
	_sniper addMagazine "7Rnd_408_Mag";
	_sniper addMagazine "7Rnd_408_Mag";
	_sniper addMagazine "7Rnd_408_Mag";
	_sniper addMagazine "7Rnd_408_Mag";
	_sniper addHeadgear "lxWS_H_turban_03_sand";
	_sniper addGoggles "G_Combat_lxWS";

	_sniper addRating 9999999;
	_sniper setUnitPos "DOWN";
	_sniper = leader _aiGroup;

	_geoPos = _missionPos vectorAdd ([[250 + random 250, 0, 0], random 360] call BIS_fnc_rotateVector2D);


	[_sniper] joinSilent _aiGroup;


    _aiGroup setCombatMode "RED";
    _aiGroup setBehaviour "COMBAT";

	_marker1 = createMarker ["SniperArea", _missionPos];
	_marker1 setMarkerShape "ELLIPSE";
	_marker1 setMarkerSize [500,500];
	_marker1 setMarkerBrush "BDiagonal";
	_marker1 setMarkerColor "colorOPFOR";

	_missionPicture = "pictures\bountyhunt.paa";
	_missionHintText = format ["<br/>Rumors say <t color='%1'>a notorious sniper</t> has been spotted! Last spot at marked position.<br/>He is carrying <t color='%1'>$20.000</t>.<br/>Nothing more is known...", moneyMissionColor];
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec =
{
	// Mission failed
	deleteMarker "SniperArea";
	_failedHintMessage = format ["The notorious sniper has left!"];
};

_successExec =
{
	// Mission completed

	deleteMarker "SniperArea";

	// Mission completed

	_Boxes1 = ["Box_IND_Wps_F","Box_East_Wps_F","Box_NATO_Wps_F","Box_NATO_AmmoOrd_F","Box_NATO_Grenades_F","Box_East_WpsLaunch_F","Box_NATO_WpsLaunch_F","Box_East_WpsSpecial_F","Box_NATO_WpsSpecial_F"];
	_currBox1 = _Boxes1 call BIS_fnc_selectRandom;
	_box1 = createVehicle [_currBox1, _lastPos, [], 2, "None"];
	_box1 setDir random 360;
	_box1 call randomCrateLoadOut;
	_box1 setVariable ["cmoney", 20000, true];
	_box1 allowDamage false;


	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1];

	//Smoke to mark the crates
	_smokemarker = createMarker ["SMMarker1", _lastPos];
	[_smokemarker] spawn CrateSmoke; //Calls repeating green smoke grenade
	uiSleep 2;
	deleteMarker "SMMarker1";

	_successHintMessage = "Hm. Good job. But it was not THE notorious sniper ..";
};

_this call moneyMissionProcessor;
