// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isDiver", "_isPilot", "_isPilot", "_isHeliPilot", "_isSharpshooter", "_isUAV", "_isRecon", "_isLAT", "_isAAA", "_isPG", "_isMedic", "_isEngineer", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isDiver = (["_diver_", _unit] call fn_findString != -1);
_isPilot = (["_Pilot_", _unit] call fn_findString != -1);
_isHeliPilot = (["_Helipilot_", _unit] call fn_findString != -1);
_isSharpshooter = (["_Sharpshooter_", _unit] call fn_findString != -1);
_isUAV = (["_UAV_", _unit] call fn_findString != -1);
_isRecon = (["_recon_", _unit] call fn_findString != -1);
_isLAT = (["_LAT_", _unit] call fn_findString != -1);
_isAAA = (["_AAA_", _unit] call fn_findString != -1);
_isPG = (["_PG_", _unit] call fn_findString != -1);
_isMedic = (["_medic_", _unit] call fn_findString != -1);
_isEngineer = (["_engineer_", _unit] call fn_findString != -1);

_defaultVest = "V_Rangemaster_Belt";

_result = "";

switch (_side) do
{
	case BLUFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_B_GhillieSuit" };
				if (_item == "vest") then { _result = "V_Chestrig_rgr" };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_B_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherB" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isPilot):
			{
				if (_item == "uniform") then { _result = "U_B_PilotCoveralls" };
				if (_item == "vest") then { _result = "" };
				if (_item == "headgear") then { _result = "H_PilotHelmetFighter_B" };
			};
			case (_isHeliPilot):
			{
				if (_item == "uniform") then { _result = "U_B_HeliPilotCoveralls" };
				if (_item == "vest") then { _result = "V_TacVest_blk" };
				if (_item == "headgear") then { _result = "H_PilotHelmetHeli_B" };
			};
			case (_isSharpshooter):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = "V_PlateCarrier1_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB" };
			};
			case (_isUAV):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = "	V_PlateCarrierSpec_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB" };
			};
			case (_isRecon):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam_vest" };
				if (_item == "vest") then { _result = "V_Chestrig_rgr" };
				if (_item == "headgear") then { _result = "H_Watchcap_camo" };
			};
			case (_isLAT):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = "V_Chestrig_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB_sand" };
			};
			case (_isAAA):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam_tshirt" };
				if (_item == "vest") then { _result = "V_Chestrig_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB_light" };
			};
			case (_isPG):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = "V_PlateCarrierSpec_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB" };
			};
			case (_isMedic):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam_tshirt" };
				if (_item == "vest") then { _result = "V_PlateCarrierSpec_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB_desert" };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam_vest" };
				if (_item == "vest") then { _result = "V_Chestrig_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB_desert" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = _defaultVest };
				if (_item == "headgear") then { _result = "H_MilCap_mcamo" };
			};
		};
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_O_Ghilliesuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_O_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIR" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isPilot):
			{
				if (_item == "uniform") then { _result = "U_O_PilotCoveralls" };
				if (_item == "vest") then { _result = "" };
				if (_item == "headgear") then { _result = "H_PilotHelmetFighter_O" };
			};
			case (_isHeliPilot):
			{
				if (_item == "uniform") then { _result = "U_O_PilotCoveralls" };
				if (_item == "vest") then { _result = "V_TacVest_blk" };
				if (_item == "headgear") then { _result = "H_PilotHelmetHeli_O" };
			};
			case (_isSharpshooter):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_PlateCarrier1_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB_grass" };
			};
			case (_isUAV):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "	V_PlateCarrierSpec_rgr" };
				if (_item == "headgear") then { _result = "H_HelmetB_grass" };
			};
			case (_isRecon):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_Chestrig_rgr" };
				if (_item == "headgear") then { _result = "H_Watchcap_blk" };
			};
			case (_isLAT):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_TacVest_khk" };
				if (_item == "headgear") then { _result = "H_HelmetO_ocamo" };
			};
			case (_isAAA):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
				if (_item == "headgear") then { _result = "H_HelmetO_ocamo" };
			};
			case (_isPG):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_HarnessO_brn" };
				if (_item == "headgear") then { _result = "H_HelmetO_ocamo" };
			};
			case (_isMedic):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_TacVest_khk" };
				if (_item == "headgear") then { _result = "H_HelmetO_ocamo" };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_HarnessO_brn" };
				if (_item == "headgear") then { _result = "H_HelmetO_ocamo" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = _defaultVest };
				if (_item == "headgear") then { _result = "H_MilCap_ocamo" };
			};
		};
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_I_Ghilliesuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_I_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIA" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isPilot):
			{
				if (_item == "uniform") then { _result = "U_I_pilotCoveralls" };
				if (_item == "vest") then { _result = "" };
				if (_item == "headgear") then { _result = "H_PilotHelmetFighter_I" };
			};
			case (_isHeliPilot):
			{
				if (_item == "uniform") then { _result = "U_I_HeliPilotCoveralls" };
				if (_item == "vest") then { _result = "V_TacVest_oli" };
				if (_item == "headgear") then { _result = "H_PilotHelmetHeli_I" };
			};
			case (_isSharpshooter):
			{
				if (_item == "uniform") then { _result = "U_IG_Guerilla3_1" };
				if (_item == "vest") then { _result = "V_BandollierB_khk" };
				if (_item == "headgear") then { _result = "H_Shemag_olive" };
			};
			case (_isUAV):
			{
				if (_item == "uniform") then { _result = "U_IG_leader" };
				if (_item == "vest") then { _result = "	V_Chestrig_blk" };
				if (_item == "headgear") then { _result = "H_Watchcap_blk" };
			};
			case (_isRecon):
			{
				if (_item == "uniform") then { _result = "U_IG_Guerrilla_6_1" };
				if (_item == "vest") then { _result = "V_TacVest_blk" };
				if (_item == "headgear") then { _result = "H_Bandanna_khk" };
			};
			case (_isLAT):
			{
				if (_item == "uniform") then { _result = "U_IG_Guerilla2_1" };
				if (_item == "vest") then { _result = "V_Chestrig_blk" };
				if (_item == "headgear") then { _result = "H_Shemag_olive" };
			};
			case (_isAAA):
			{
				if (_item == "uniform") then { _result = "U_IG_Guerilla2_3" };
				if (_item == "vest") then { _result = "V_Chestrig_blk" };
				if (_item == "headgear") then { _result = "H_Bandanna_khk" };
			};
			case (_isPG):
			{
				if (_item == "uniform") then { _result = "U_I_C_Soldier_Para_1_F" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
				//if (_item == "headgear") then { _result = "H_HelmetO_ocamo" };
			};
			case (_isMedic):
			{
				if (_item == "uniform") then { _result = "U_IG_Guerilla2_3" };
				if (_item == "vest") then { _result = "V_TacVest_blk" };
				if (_item == "headgear") then { _result = "H_Cap_oli" };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_IG_Guerilla2_2" };
				if (_item == "vest") then { _result = "V_Chestrig_blk" };
				if (_item == "headgear") then { _result = "H_Watchcap_camo" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_I_CombatUniform" };
				if (_item == "vest") then { _result = _defaultVest };
				if (_item == "headgear") then { _result = "H_MilCap_dgtl" };
			};
		};
	};
};

_result
