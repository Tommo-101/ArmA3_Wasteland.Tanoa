// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_Industryannexation.sqf
//	@file Author: JoSchaap, AgentRev, LouD
//	@file Edit: GriffinZS

if (!isServer) exitwith {};
#include "priorityMissionDefines.sqf"

private ["_positions", "_camonet", "_obj1", "_obj2", "_boxes1", "_currBox1", "_randomBox", "_box1", "_boxes2", "_currBox2", "_box2", "_cashrandomizera", "_cashamountrandomizera", "_cashpilerandomizera", "_casha", "_cashamounta", "_cashpilea", "_cashrandomizerb", "_cashamountrandomizerb", "_cashpilerandomizerb", "_cashb", "_cashamountb", "_cashpileb", "_cash1", "_cash2", "_drop_item", "_drugpilerandomizer", "_drugpile"];

_setupVars =
{
	_missionType = "EMP Attack";
    _locationsArray =  IndustryMissionMarkers;
};

_setupObjects =
{
	_missionPos = markerPos _missionLocation;

	_camonet = createVehicle ["Land_MultiScreenComputer_01_sand_F", [_missionPos select 0, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_camonet allowdamage false;
	_camonet setDir random 360;
	_camonet setVariable ["R3F_LOG_disabled", false];

	_missionPos = getPosATL _camonet;

	_obj1 = createVehicle ["Land_PowerGenerator_F", _missionPos,[], 10,"None"];
	_obj1 setPosATL [(_missionPos select 0) - 2, (_missionPos select 1) + 2, _missionPos select 2];

	_obj2 = createVehicle ["B_G_HMG_02_high_F", _missionPos,[], 10,"None"];
	_obj2 setPosATL [(_missionPos select 0) + 2, (_missionPos select 1) + 2, _missionPos select 2];


	_box1 = createVehicle ["Box_NATO_WpsSpecial_F", _missionPos, [], 5, "None"];
	_box1 setDir random 360;
	_box1 call randomCrateLoadOut; // new randomCrateLoadOut function call

	_box2 = createVehicle ["Box_NATO_WpsSpecial_F", _missionPos, [], 5, "None"];
	_box2 setDir random 360;
	_box2 call randomCrateLoadOut; // new randomCrateLoadOut function call

	_aiGroup = createGroup CIVILIAN;
	[_aiGroup,_missionPos] spawn createcustomGroup2;

	_aiGroup setCombatMode "RED";
	_aiGroup setBehaviour "COMBAT";

	_missionPicture = "pictures\emp.paa";
	_missionHintText = format ["<br/>Rogue units are preparing <t color='%1'>an EMP attack</t>.<br/>Intercept their plans, kill these scumbags and avoid the EMP attack!<br/>For fuck's sake ..!", PriorityMissionColor];
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec =
{
	// Mission failed
	_temporaryHelipad = createVehicle ["Land_HelipadEmpty_F", position _vehicle, [], 2, "NONE"];
	[_temporaryHelipad, 7500, true, true, 0.1] execVM "AL_emp\emp_starter.sqf";
	{ deleteVehicle _x } forEach [_camonet, _obj1, _obj2, _box1, _box2];
	_failedHintMessage = format ["The EMP attack has been activated!!"];

};

_drop_item =
{
	private["_item", "_pos"];
	_item = _this select 0;
	_pos = _this select 1;

	if (isNil "_item" || {typeName _item != typeName [] || {count(_item) != 2}}) exitWith {};
	if (isNil "_pos" || {typeName _pos != typeName [] || {count(_pos) != 3}}) exitWith {};

	private["_id", "_class"];
	_id = _item select 0;
	_class = _item select 1;

	private["_obj"];
	_obj = createVehicle [_class, _pos, [], 5, "None"];
	_obj setPos ([_pos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
	_obj setVariable ["mf_item_id", _id, true];
};

_successExec =
{
	// Mission completed
	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1, _box2];
	{ deleteVehicle _x } forEach [_camonet, _obj1, _obj2];

	//Random fake - real money
	_cashrandomizera = ["money","cmoney","money","cmoney"];
	_cashamountrandomizera = [1000,1200,1400,1600,1800,2400];
	_cashpilerandomizera = [3,5];

	_casha = _cashrandomizera call BIS_fnc_SelectRandom;
	_cashamounta = _cashamountrandomizera call BIS_fnc_SelectRandom;
	_cashpilea = _cashpilerandomizera call BIS_fnc_SelectRandom;

	for "_i" from 1 to _cashpilea do
	{
		_cash1 = createVehicle ["Land_Money_F",[(_lastPos select 0), (_lastPos select 1) - 5,0],[], 0, "NONE"];
		_cash1 setPos ([_lastPos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
		_cash1 setDir random 360;
		_cash1 setVariable [_casha, _cashamounta, true];
		_cash1 setVariable ["owner", "world", true];
	};

	_cashrandomizerb = ["money","cmoney","money","cmoney"];
	_cashamountrandomizerb = [1000,1200,1400,1600,1800,2400];
	_cashpilerandomizerb = [3,5];

	_cashb = _cashrandomizerb call BIS_fnc_SelectRandom;
	_cashamountb = _cashamountrandomizerb call BIS_fnc_SelectRandom;
	_cashpileb = _cashpilerandomizerb call BIS_fnc_SelectRandom;

	for "_i" from 1 to _cashpileb do
	{
		_cash2 = createVehicle ["Land_Money_F",[(_lastPos select 0), (_lastPos select 1) - 5,0],[], 0, "NONE"];
		_cash2 setPos ([_lastPos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
		_cash2 setDir random 360;
		_cash2 setVariable [_cashb, _cashamountb, true];
		_cash2 setVariable ["owner", "world", true];
	};



	_successHintMessage = format ["<br/>Good job! The EMP attack has been prevented!"];
};

_this call priorityMissionProcessor;
