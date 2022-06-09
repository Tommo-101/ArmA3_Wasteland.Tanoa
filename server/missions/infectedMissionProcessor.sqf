// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: infectedMissionProcessor.sqf
//	@file Author: Tommo

#define MISSION_PROC_TYPE_NAME "Infected"
#define MISSION_PROC_TIMEOUT (["A3W_mainMissionTimeout", 60*60] call getPublicVar)
#define MISSION_PROC_COLOR_DEFINE infectedMissionColor

#include "infectedMissions\infectedMissionDefines.sqf"
#include "missionProcessor.sqf";
