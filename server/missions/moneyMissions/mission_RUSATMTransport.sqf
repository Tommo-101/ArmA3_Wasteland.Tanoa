// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 2.1
//	@file Name: mission_RUSATMTransport.sqf
//	@file Author: JoSchaap / routes by Del1te - (original idea by Sanjo), AgentRev
//	@file Created: 31/08/2013 18:19
//	@file WS Edit: GriffinZS

if (!isServer) exitwith {};
#include "moneyMissionDefines.sqf"

private ["_MoneyShipment", "_moneyAmount", "_convoys", "_vehChoices", "_moneyText", "_vehClasses", "_createVehicle", "_vehicles", "_veh2", "_leader", "_speedMode", "_waypoint", "_vehicleName", "_numWaypoints", "_cash"];

_setupVars =
{
	_locationsArray = LandConvoyPaths;

	// Money Shipments settings
	// Difficulties : Min = 1, Max = infinite
	// Convoys per difficulty : Min = 1, Max = infinite
	// Vehicles per convoy : Min = 1, Max = infinite
	// Choices per vehicle : Min = 1, Max = infinite
	_MoneyShipment = selectRandom
	[
		// Easy
		[
			"Small RUS Money Transport", // Marker text
			50000, // Money
			[
				[ // RUS convoy
					["RHS_Ural_Flat_VDV_01"],
					["RHS_Ural_Zu23_VDV_01","rhs_tigr_m_vdv"],
					["rhs_tigr_m_vdv"],
					["rhs_tigr_sts_msv"],
					["rhs_tigr_sts_msv"]
				]
			]
		],
		// Medium
		[
			"Medium RUS Money Transport", // Marker text
			70000, // Money
			[
				[ // RUS convoy
					["RHS_Ural_Flat_VDV_01"],
					["RHS_Ural_Zu23_VDV_01"],
					["rhs_tigr_sts_msv"],
					["rhs_tigr_sts_msv"],
					["rhs_bmp2d_vv"],
					["rhs_brm1k_vv"]
				]
			]
		],
		// Hard
		[
			"Large RUS Money Transport", // Marker text
			100000, // Money
			[
				[ // RUS convoy
					["RHS_Ural_Flat_VDV_01"],
					["RHS_Ural_Zu23_VDV_01"],
					["rhs_tigr_sts_msv"],
					["rhs_tigr_sts_msv"],
					["rhs_bmp2d_vv"],
					["rhs_brm1k_vv"]
				]
			]
		],
		// Extreme
		[
			"Heavy RUS Money Transport", // Marker text
			200000, // Money
			[
				[ // RUS convoy
					["RHS_Ural_Flat_VDV_01"],
					["RHS_Ural_Zu23_VDV_01"],
					["rhs_btr80a_vmf"],
					["rhs_btr80a_vmf"],
					["rhs_brm1k_vv"],
					["rhs_brm1k_vv"],
					["rhs_t72be_tv"],
					["rhs_t72be_tv"]
				]
			]
		]
	];

	_missionType = _MoneyShipment select 0;
	_moneyAmount = _MoneyShipment select 1;
	_convoys = _MoneyShipment select 2;
	_vehChoices = selectRandom _convoys;

	_moneyText = format ["$%1", [_moneyAmount] call fn_numbersText];

	_vehClasses = [];
	{ _vehClasses pushBack selectRandom _x } forEach _vehChoices;
};

_setupObjects =
{
	private ["_starts", "_startDirs", "_waypoints"];
	call compile preprocessFileLineNumbers format ["mapConfig\convoys\%1.sqf", _missionLocation];

	_createVehicle =
	{
		private ["_type", "_position", "_direction", "_vehicle", "_soldier"];

		_type = _this select 0;
		_position = _this select 1;
		_direction = _this select 2;

		_vehicle = createVehicle [_type, _position, [], 0, "None"];
		_vehicle setVariable ["R3F_LOG_disabled", true, true];
		[_vehicle] call vehicleSetup;

		_vehicle setDir _direction;
		_aiGroup addVehicle _vehicle;

		_soldier = [_aiGroup, _position] call createRandomRHSAFRFSoldier;
		_soldier moveInDriver _vehicle;
		_soldier = [_aiGroup, _position] call createRandomRHSAFRFSoldier;
		_soldier moveInAny [_vehicle, 0];
		_soldier = [_aiGroup, _position] call createRandomRHSAFRFSoldier;
		_soldier moveInAny [_vehicle, 0];
		_soldier = [_aiGroup, _position] call createRandomRHSAFRFSoldier;
		_soldier moveInAny [_vehicle, 0];

		[_vehicle, _aiGroup] spawn checkMissionVehicleLock;

		_vehicle
	};

	_aiGroup = createGroup CIVILIAN;

	_vehicles = [];
	{
		_vehicles pushBack ([_x, _starts select (_forEachIndex max 0 min (count _starts - 1)), _startdirs select (_forEachIndex max 0 min (count _startdirs - 1)), _aiGroup] call _createVehicle);
	} forEach _vehClasses;

	_veh2 = _vehClasses select (1 min (count _vehClasses - 1));

	_leader = effectiveCommander (_vehicles select 0);
	_aiGroup selectLeader _leader;

	_aiGroup setCombatMode "YELLOW"; // units will defend themselves
	_aiGroup setBehaviour "SAFE"; // units feel safe until they spot an enemy or get into contact
	_aiGroup setFormation "COLUMN";

	_speedMode = if (missionDifficultyHard) then { "NORMAL" } else { "LIMITED" };

	_aiGroup setSpeedMode _speedMode;

	{
		_waypoint = _aiGroup addWaypoint [_x, 0];
		_waypoint setWaypointType "MOVE";
		_waypoint setWaypointCompletionRadius 25;
		_waypoint setWaypointCombatMode "YELLOW";
		_waypoint setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
		_waypoint setWaypointFormation "COLUMN";
		_waypoint setWaypointSpeed _speedMode;
	} forEach _waypoints;

	_missionPos = getPosATL leader _aiGroup;

	//_missionPicture = "pictures\atmtransport.paa";
	_vehicleName = getText (configFile >> "cfgVehicles" >> _veh2 >> "displayName");

	_missionHintText = format ["A Russian convoy is transporting <t color='%1'>%2</t> to an unknown ATM location.<br/>Best chance for you to earn some extra money!", moneyMissionColor, _moneyText];

	_numWaypoints = count waypoints _aiGroup;
};

_waitUntilMarkerPos = {getPosATL _leader};
_waitUntilExec = nil;
_waitUntilCondition = {currentWaypoint _aiGroup >= _numWaypoints};

_failedExec = nil;

// _vehicles are automatically deleted or unlocked in missionProcessor depending on the outcome

_successExec =
{
	// Mission completed

	for "_i" from 1 to 10 do
	{
		_cash = createVehicle ["Land_Money_F", _lastPos, [], 5, "None"];
		_cash setPos ([_lastPos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
		_cash setDir random 360;
		_cash setVariable ["cmoney", _moneyAmount / 10, true];
		_cash setVariable ["owner", "world", true];
	};

	_successHintMessage = "Nice! Look's like that ATM shipment won't be going anywhere, Putin will likely drop some nukes and commit war crimes now..";
};

_this call moneyMissionProcessor;
