// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupMissionArrays.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

AirMissions =
[
  ["mission_CivHeli", 1],
  ["mission_HostileHelicopter", 0.6],
	["mission_HostileHeliformation", 1],
	["mission_HostileJet", 1],
	["mission_AggressiveJet", 0.2],
	["mission_NukeBomber", 0.2],
	["mission_HostileSU25Formation", 0.6],
  ["mission_HostileJetFormation", 1],
  ["mission_SkySmuggler", 1]
];

MainMissions =
[
	// Mission filename, weight
  ["mission_AbandonedHeli", 1],
	["mission_AbandonedJet", 1],
  ["mission_AntiAir", 1],
  ["mission_APC", 1],
  ["mission_ArmedHeli", 1],
	["mission_Convoy", 1],
  ["mission_LightArmVeh", 1],
	["mission_MBT", 1],
  ["mission_policePatrol", 1],
	["mission_Roadblock", 1],
	["mission_Smugglers", 1],
	["mission_AbandonedAC130", 0.1]
];

/*InfectedMissions =
[
	// Mission filename, weight
  ["mission_TownInfection", 1]
];*/

SideMissions =
[
  ["mission_AbandonedArtillery", 0.2],
  ["mission_AirWreck", 1],
  ["mission_HostageRescue", 1],
  ["mission_Medevac", 1],
	["mission_MiniConvoy", 1],
  ["mission_Occupation", 1],
  ["mission_Outpost", 1],
	["mission_TownInvasion", 1],
	["mission_Truck", 1],
  ["mission_WepCache", 1]
];

MoneyMissions =
[
	["mission_MoneyShipment", 1],
  ["mission_BountyHunt", 0.5],
  ["mission_RUSATMTransport", 1],
  ["mission_NATOATMTransport", 1]
];

PriorityMissions = //using afgm OR 509 where not exists BUDDSKI7
[
  ["mission_HillBurrow", 1],
  ["mission_mechpatrol", 1],
	["mission_tankRush", 1]
  //["mission_EMP",1]
];

LogisticsMissions =
[
  ["mission_Airdrop", 1],
  ["mission_AltisHasFallen", 1],
  ["mission_DeliverySupply", 1],
  //["mission_deviceDelivery", 0.3],
  ["mission_MiniConvoy", 1]
];

WaterMissions =
[
  ["mission_ArmedDiversquad", 1],
  ["mission_Coastal_Convoy", 1],
	["mission_SunkenTreasure", 1]
];

MissionSpawnMarkers = (allMapMarkers select {["Mission_", _x] call fn_startsWith}) apply {[_x, false]};
ForestMissionMarkers = (allMapMarkers select {["ForestMission_", _x] call fn_startsWith}) apply {[_x, false]};
SunkenMissionMarkers = (allMapMarkers select {["SunkenMission_", _x] call fn_startsWith}) apply {[_x, false]};
RoadblockMissionMarkers = (allMapMarkers select {["Roadblock_", _x] call fn_startsWith}) apply {[_x, false]};
OccupationMissionMarkers = (allMapMarkers select {["Occupation_", _x] call fn_startsWith}) apply {[_x, false]};
SniperMissionMarkers = (allMapMarkers select {["Sniper_", _x] call fn_startsWith}) apply {[_x, false]};
JetMarkers = (allMapMarkers select {["Jet_", _x] call fn_startsWith}) apply {[_x, false]};
HQSafePosMarkers = (allMapMarkers select {["EvacHQ_", _x] call fn_startsWith}) apply {[_x, false]};
IndustryMissionMarkers = (allMapMarkers select {["Industry_", _x] call fn_startsWith}) apply {[_x, false]};

if !(ForestMissionMarkers isEqualTo []) then
{
	SideMissions append
	[
		["mission_AirWreck", 3],
		["mission_WepCache", 3]
	];
};

LandConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\landConvoysList.sqf") apply {[_x, false]};
CoastalConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\coastalConvoysList.sqf") apply {[_x, false]};
PatrolConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\patrolConvoysList.sqf") apply {[_x, false]};
RushConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\rushConvoysList.sqf") apply {[_x, false]};

MainMissions = [MainMissions, [["A3W_heliPatrolMissions", ["mission_Coastal_Convoy", "mission_HostileHeliFormation"]]]] call removeDisabledMissions;
SideMissions = [SideMissions, [["A3W_heliPatrolMissions", ["mission_HostileHelicopter"]]]] call removeDisabledMissions;
MoneyMissions = [MoneyMissions, [["A3W_underWaterMissions", ["mission_SunkenTreasure"]]]] call removeDisabledMissions;
WaterMissions = [WaterMissions, [["A3W_underWaterMissions", ["mission_ArmedDiversquad", "mission_SunkenTreasure", "mission_SunkenSupplies"]]]] call removeDisabledMissions;
LogisticsMissions = [LogisticsMissions, [["A3W_rescueMissions", ["mission_Convoy"]]]] call removeDisabledMissions;
PriorityMissions = [PriorityMissions, [["A3W_rescueMissions", ["mission_tankRush"]]]] call removeDisabledMissions;
AirMissions = [AirMissions, [["A3W_rescueMissions", ["mission_AltisHasFallen"]]]] call removeDisabledMissions;


{ _x set [2, false] } forEach MainMissions;
{ _x set [2, false] } forEach SideMissions;
{ _x set [2, false] } forEach MoneyMissions;
{ _x set [2, false] } forEach PriorityMissions; //BUDDSKI7
{ _x set [2, false] } forEach LogisticsMissions;
{ _x set [2, false] } forEach WaterMissions;
{ _x set [2, false] } forEach AirMissions;
//{ _x set [2, false] } forEach InfectedMissions;
