// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: loadSpecStore.sqf
//	@file Author: His_Shadow, Tommo
//	@file Created: 06/15/2012 05:13
//	@file Args:

#include "dialog\specstoreDefines.hpp";
disableSerialization;

specStore_noBuzzard = false;

private ["_specshopDialog", "_Dialog", "_playerMoney", "_owner", "_droneButton", "_antiAirButton", "_jetButton", "_utilityButton","_heliButton","_armorButton"];
_specshopDialog = createDialog "specshopd";

_Dialog = findDisplay specshop_DIALOG;
_playerMoney = _Dialog displayCtrl specshop_money;
_droneButton = _Dialog displayCtrl specshop_button0;
_antiAirButton = _Dialog displayCtrl specshop_button1;
_jetButton = _Dialog displayCtrl specshop_button2;
_utilityButton = _Dialog displayCtrl specshop_button3;
_heliButton = _Dialog displayCtrl specshop_button4;
_armorButton = _Dialog displayCtrl specshop_button5;
//_boatButton = _Dialog displayCtrl specshop_button6;

_playerMoney ctrlSetText format["Cash: $%1", [player getVariable ["cmoney", 0]] call fn_numbersText];
if (!isNil "_this") then { _owner = _this select 0 };
if (!isNil "_owner") then
{
	currentOwnerID = _owner;
	currentOwnerName = vehicleVarName _owner;
};

{
	if (_x select 0 == currentOwnerName) exitWith
	{
		// The array of which vehicle types are unvailable at this store
		{
			switch (toLower _x) do
			{
				case "nobuzzard":
				{
					specStore_noBuzzard = true;
				};
				case "drones":
				{
					_droneButton ctrlEnable false;
				};
				case "antiair":
				{
					_antiAirButton ctrlEnable false;
				};
				case "jets":
				{
					_jetButton ctrlEnable false;
				};
				case "utility":
				{
					_utilityButton ctrlEnable false;
				};
				case "heli":
				{
					_heliButton ctrlEnable false;
				};
				case "armor":
				{
					_armorButton ctrlEnable false;
				};
				/*case "boats":
				{
					_boatButton ctrlEnable false;
				};*/
				/*case "submarines":
				{
					_subButton	ctrlShow false;
				};*/
			};
		} forEach (_x select 3);
	};
} foreach (call storeOwnerConfig);

private _partList = _Dialog displayCtrl specshop_part_list;
_partList ctrlEnable false;
_partList ctrlAddEventHandler ["LBSelChanged", compile preprocessFileLineNumbers "client\systems\specStore\partInfo.sqf"];

private _defPartsChk = _Dialog displayCtrl specshop_defparts_checkbox;
_defPartsChk cbSetChecked true;
_defPartsChk ctrlAddEventHandler ["CheckedChanged",
{
	params ["_defPartsChk", "_checked"];
	((ctrlParent _defPartsChk) displayCtrl specshop_part_list) ctrlEnable (_checked < 1);
}];

[] spawn
{
	disableSerialization;
	_dialog = findDisplay specshop_DIALOG;
	while {!isNull _dialog} do
	{
		_escMenu = findDisplay 49;
		if (!isNull _escMenu) exitWith { _escMenu closeDisplay 0 }; // Force close Esc menu if open
		sleep 0.1;
	};
};
