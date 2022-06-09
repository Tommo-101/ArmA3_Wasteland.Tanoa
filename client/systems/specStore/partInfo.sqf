// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2018 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: partInfo.sqf
//	@file Author: AgentRev

#include "dialog\specstoreDefines.hpp"

params ["_partList", "_index"];
_animSrc = _partList lbData _index;
_animPhase = 1 - abs (specshop_list_checkboxTextures find (_partList lbPicture _index));
_partList lbSetPicture [_index, specshop_list_checkboxTextures select _animPhase]; // invert checkbox texture

_dialog = ctrlParent _partList;
_itemlist = _dialog displayCtrl specshop_veh_list;
_itemData = call compile (_itemlist lbData lbCurSel specshop_veh_list); // [name, class, price, type, variant, ...]
_itemData params ["","_vehClass"];
_animSrcCfg = configFile >> "CfgVehicles" >> _vehClass >> "AnimationSources" >> _animSrc;

// some AnimationSources cancel each other (like "showBags" and "showCamonetTurret" for "I_APC_tracked_03_cannon_F") so we gotta let the user know
if ({isArray (_animSrcCfg >> _x)} count ["forceAnimate","forceAnimate2"] > 0) then
{
	// collect current checkbox states
	_animStates = [];
	_partListSize = lbSize _partList;
	for "_i" from 0 to (_partListSize - 1) do
	{
		_animStates pushBack [_partList lbData _i, _partList lbPicture _i];
	};

	// apply forceAnimate phases to collected checkbox states
	_forceAnimate = getArray (_animSrcCfg >> (["forceAnimate","forceAnimate2"] select (_animPhase != getNumber (_animSrcCfg >> "forceAnimatePhase"))));
	for "_i" from 0 to (count _forceAnimate - 1) step 2 do
	{
		[_animStates, _forceAnimate select _i, specshop_list_checkboxTextures select (_forceAnimate select (_i+1))] call fn_setToPairs;
	};

	// apply new checkbox states to part list
	for "_i" from 0 to (_partListSize - 1) do
	{
		_partList lbSetPicture [_i, _animStates select _i select 1];
	};
};
