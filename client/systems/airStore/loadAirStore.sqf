// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: loadVehicleStore.sqf
//	@file Author: His_Shadow
//	@file Created: 06/15/2012 05:13
//	@file Args:

#include "dialog\airstoreDefines.hpp";
disableSerialization;

vehicleStore_noBuzzard = false;

private ["_airshopDialog", "_Dialog", "_playerMoney", "_owner", "_civAirButton", "_gunshipButton", "_jetButton", "_utilAirButton", "_utilHeliButton", "_specAirButton"];
_airshopDialog = createDialog "airshopd";

_Dialog = findDisplay airshop_DIALOG;
_playerMoney = _Dialog displayCtrl airshop_money;

_civAirButton = _Dialog displayCtrl airshop_button0;
_gunshipButton = _Dialog displayCtrl airshop_button1;
_jetButton = _Dialog displayCtrl airshop_button2;
_utilAirButton = _Dialog displayCtrl airshop_button3;
_utilHeliButton = _Dialog displayCtrl airshop_button4;
_specAirButton = _Dialog displayCtrl airshop_button5;

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
					vehicleStore_noBuzzard = true;
				};
				case "civilian":
				{
					_civAirButton ctrlEnable false;
				};
				case "gunship":
				{
					_gunshipButton ctrlEnable false;
				};
				case "jets":
				{
					_jetButton ctrlEnable false;
				};
				case "utilair":
				{
					_utilAirButton ctrlEnable false;
				};
				case "utilheli":
				{
					_utilHeliButton ctrlEnable false;
				};
				case "specair":
				{
					_specAirButton ctrlEnable false;
				};
			};
		} forEach (_x select 3);
	};
} foreach (call storeOwnerConfig);

private _partList = _Dialog displayCtrl airshop_part_list;
_partList ctrlEnable false;
_partList ctrlAddEventHandler ["LBSelChanged", compile preprocessFileLineNumbers "client\systems\airStore\partInfo.sqf"];

private _defPartsChk = _Dialog displayCtrl airshop_defparts_checkbox;
_defPartsChk cbSetChecked true;
_defPartsChk ctrlAddEventHandler ["CheckedChanged",
{
	params ["_defPartsChk", "_checked"];
	((ctrlParent _defPartsChk) displayCtrl airshop_part_list) ctrlEnable (_checked < 1);
}];

[] spawn
{
	disableSerialization;
	_dialog = findDisplay airshop_DIALOG;
	while {!isNull _dialog} do
	{
		_escMenu = findDisplay 49;
		if (!isNull _escMenu) exitWith { _escMenu closeDisplay 0 }; // Force close Esc menu if open
		sleep 0.1;
	};
};
