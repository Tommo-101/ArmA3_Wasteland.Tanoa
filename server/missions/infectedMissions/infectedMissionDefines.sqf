// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: infectedMissionDefines.sqf
//	@file Author: tommo
//	@file Created: 24/05/2022

// Main Mission Color = #52bf90 - Light blue
// Fail Mission Color = #FF1717 - Light red
// Success Mission Color = #17FF41 - Light green

#define infectedMissionColor "#00cc00"
#define failMissionColor "#FF1717"
#define successMissionColor "#006699"
#define subTextColor "#6600ff"

#define AI_GROUP_SMALL 10
#define AI_GROUP_MEDIUM 20
#define AI_GROUP_LARGE 30

#define missionDifficultyHard (["A3W_missionsDifficulty", 0] call getPublicVar >= 1)
