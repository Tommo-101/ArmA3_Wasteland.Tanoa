// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_TownInfection.sqf
//	@file Author: Tommo
//  @file Information: JoSchaap's Lite version of 'Infantry Occupy House' Original was made by: Zenophon

if (!isServer) exitwith {};

#include "infectedMissionDefines.sqf"

private ["_nbUnits", "_townName", "_missionPos", "_buildingRadius", "_putOnRoof", "_fillEvenly"];

_setupVars =
{
	_missionType = "Unknown Sickness";
	_nbUnits = AI_GROUP_SMALL;

	// settings for this mission
	_locArray = ((call cityList) call BIS_fnc_selectRandom);
	_missionPos = markerPos (_locArray select 0);
	_buildingRadius = _locArray select 1;
	_townName = _locArray select 2;

	//randomize amount of units
	_nbUnits = _nbUnits + round(random (_nbUnits*0.5));
	// reduce radius for larger towns. for example to avoid endless hide and seek in kavala ;)
	_buildingRadius = if (_buildingRadius > 201) then {(_buildingRadius*0.7)} else {_buildingRadius};
	// 25% change on AI not going on rooftops
	if (random 1 < 0.75) then { _putOnRoof = true } else { _putOnRoof = false };
	_fillEvenly = true;
};

_setupObjects =
{
	// spawn some infected :)
	_aiGroup = createGroup CIVILIAN;
	[_aiGroup, _missionPos, _nbUnits] call createZombieGroup;

	_aiGroup = createGroup CIVILIAN;
	[_aiGroup, _missionPos, _nbUnits] call createZombieGroup;

	// move them into buildings
	[_aiGroup, _missionPos, _buildingRadius, _fillEvenly, _putOnRoof] call moveIntoBuildings;

	_missionHintText = format ["People in <t size='1.25' color='%1'>%2</t><br/> aren't feeling so good.<br/><br/>Unknown how many sick people there are..<br/>Check it out but watch out!", infectedMissionColor, _townName, _nbUnits];
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

//_failedExec =
//{
	// Mission failed
//	{ deleteVehicle _x } forEach [_box1, _box2, _tent1, _chair1, _chair2, _cFire1];
//};

_successExec =
{
	// Mission completed
	_successHintMessage = format ["Damn looks like zombies! Good job clearing <br/><br/><t color='%1'>%2</t>.<br/>It's infection free for now. But we don't think this is over yet!", infectedMissionColor, _townName];
};

_this call infectedMissionProcessor;
