
_savePrice = 2000; // cost involved to save load out.
_repurchasePrice = 15000; // cost involved to rebuy saved load out.
_repurchaseWaitTime = 10; // time it takes to retrieve saved load out.
_repurchaseMaxDistance = 5; // player must stay within this distance to the store clerk.

_disallowedItems = // this could be ANY carried/equipped/wearable item!
[
	// "optic_Aco", // ACO (Red)
	// "optic_ACO_grn", // ACO (Green)
	// "optic_ACO_grn_smg", // ACO SMG (Green)
	// "optic_Aco_smg", // ACO SMG (Red)
	// "optic_AMS", // AMS (Black)
	// "optic_AMS_khk", // AMS (Khaki)
	// "optic_AMS_snd", // AMS (Sand)
	// "optic_Arco", // ARCO
	// "optic_Arco_blk_F", // ARCO (Black)
	// "optic_Arco_ghex_F", // ARCO (Green Hex)
	// "optic_DMS", // DMS
	// "optic_DMS_ghex_F", // DMS (Green Hex)
	// "optic_ERCO_blk_F", // ERCO (Black)
	// "optic_ERCO_khk_F", // ERCO (Khaki)
	// "optic_ERCO_snd_F", // ERCO (Sand)
	// "optic_Hamr", // RCO
	// "optic_Hamr_khk_F", // RCO (Khaki)
	// "optic_Holosight", // Mk17 Holosight
	// "optic_Holosight_blk_F", // Mk17 Holosight (Black)
	// "optic_Holosight_khk_F", // Mk17 Holosight (Khaki)
	// "optic_Holosight_smg", // Mk17 Holosight SMG
	// "optic_Holosight_smg_blk_F", // Mk17 Holosight SMG (Black)
	// "optic_KHS_blk", // Kahlia (Black)
	// "optic_KHS_hex", // Kahlia (Hex)
	// "optic_KHS_old", // Kahlia (Old)
	// "optic_KHS_tan", // Kahlia (Tan)
	// "optic_LRPS", // LRPS
	// "optic_LRPS_ghex_F", // LRPS (Green Hex)
	// "optic_LRPS_tna_F", // LRPS (Tropic)
	// "optic_MRCO", // MRCO
	// "optic_MRD", // MRD
	"optic_Nightstalker", // Nightstalker
	// "optic_NVS", // NVS
	// "optic_SOS", // MOS
	// "optic_SOS_khk_F", // MOS (Khaki)
	"optic_tws", // TWS
	"optic_tws_mg", // TWS MG
	// "optic_Yorris", // Yorris J2
	"launch_B_Titan_F",
	"launch_I_Titan_F",
	"launch_O_Titan_F",
	"launch_Titan_F",
	"launch_B_Titan_short_F",
	"launch_I_Titan_short_F",
	"launch_O_Titan_short_F",
	"launch_Titan_short_F",
	"Titan_AA",
	"Titan_AT",
	"Titan_AP"
];

/*	------------------------------------------------------------------------------------------
	DO NOT EDIT BELOW HERE!
	------------------------------------------------------------------------------------------	*/

_doWhat = _this select 3;

if (_doWhat == "SAVE") then
{
	private ["_playerMoney", "_text", "_saveLoadOut"];
	_playerMoney = player getVariable ["cmoney", 0];
	if (_savePrice > _playerMoney) exitWith
	{
		_text = format ["Saving Your Load Out Costs $%1. You Do Not Have Enough Carried Money!",_savePrice];
		[_text, 5] call mf_notify_client;
	};
	_savedLoadOut = player getVariable ["currentLoadOut",false];
	if (_savedLoadOut) then
	{
		_saveLoadOutText = format ["Resaving Your Load Out Costs $%1. Do You Accept?",_savePrice];
		_saveLoadOut = [_saveLoadOutText,"Confirm Load Out Resave","Yes","No"] call BIS_fnc_guiMessage;

		if (!_saveLoadOut) then
		{
			_text = "Load Out Resave Has Been Cancelled!";
			[_text, 5] call mf_notify_client;
		};
	}
	else
	{
		_saveLoadOutText = format ["Saving Your Load Out Costs $%1. Do You Accept?",_savePrice];
		_saveLoadOut = [_saveLoadOutText,"Confirm Load Out Save","Yes","No"] call BIS_fnc_guiMessage;

		if (!_saveLoadOut) then
		{
			_text = "Load Out Save Has Been Cancelled!";
			[_text, 5] call mf_notify_client;
		};
	};
	if (_saveLoadOut) then
	{
		[player, [missionnamespace, "savedLoadOut"]] call bis_fnc_saveInventory;
		player setVariable ["currentLoadOut",true];
		_playerMoney = player getVariable ["cmoney", 0];
		player setVariable ["cmoney",(_playerMoney - _savePrice),true];
		[] spawn fn_savePlayerData;
		_text = format ["Load Out Save Has Been Successful, Which Cost You $%1.",_savePrice];
		[_text, 5] call mf_notify_client;
	};
};

if (_doWhat == "BUY") then
{
	private ["_playerMoney", "_text", "_loadOut", "_loadOutAlreadyRepurchased", "_repurchaseLoadOut"];
	_loadOutAlreadyRepurchased = player getVariable ["loadOutPurchased",false];
	_loadOutCurrentlyPurchasing = player getVariable ["loadOutPurchasing",false];
	_loadOut = player getVariable ["currentLoadOut",false];
	if (!_loadOut) exitWith
	{
		_text = "No Load Out Is Available For Repurchase. You Must Save A Load Out First!";
		[_text, 5] call mf_notify_client;
	};
	if (_loadOutCurrentlyPurchasing) exitWith {};
	if (_loadOutAlreadyRepurchased) exitWith
	{
		_text = "You Can Only Repurchase One Load Out Per Respawn.";
		[_text, 5] call mf_notify_client;
	};
	_playerMoney = player getVariable ["cmoney", 0];
	uiSleep 0.1;
	if (_repurchasePrice > _playerMoney) exitWith
	{
		_text = format ["Purchasing Your Last Saved Load Out Costs $%1. You Do Not Have Enough Carried Money!",_repurchasePrice];
		[_text, 5] call mf_notify_client;
	};

	if ((uniform player != "") || (vest player != "") || (backpack player != "") || (count (weapons player) != 0) || (headgear player != "") || (count (assignedItems player) != 0)) exitWith
	{
		_text = "Unequip ALL Weapons And Items And Put Them Into One Of The Boxes.";
		[_text, 5] call mf_notify_client;
	};
	_repurchaseText = format ["Repurchasing Load Out Will Cost You $%1. Do You Accept?",_repurchasePrice];
	_repurchaseLoadOut = [_repurchaseText,"Confirm Load Out Repurchase","Yes","No"] call BIS_fnc_guiMessage;
	if (!_repurchaseLoadOut) exitWith
	{
		_text = "Repurchasing Of Saved Load Out Has Been Cancelled!";
		[_text, 5] call mf_notify_client;
	};
	_equipGear = false;
	player setVariable ["loadOutPurchased",true];
	player setVariable ["loadOutPurchasing",true];
	_storeOwnerPos = cursorObject;
	for "_i" from _repurchaseWaitTime to 1 step -1 do
	{
		if (_i > 1) then
		{
			_text = format ["The Store Owner Is Gathering Your Load Out. Please Wait %1 Seconds.",_i];
			[_text, 1] call mf_notify_client;
		}
		else
		{
			_text = format ["The Store Owner Is Gathering Your Load Out. Please Wait %1 Second.",_i];
			[_text, 1] call mf_notify_client;
			_equipGear = true;
		};
		if (_storeOwnerPos distance player > _repurchaseMaxDistance) exitWith
		{
			_text = format ["You Must Stay Within %1 Meters Of The Store Owner To Collect Your Load Out... Exiting!",_repurchaseMaxDistance];
			[_text, 10] call mf_notify_client;
		};
		if ((uniform player != "") || (vest player != "") || (backpack player != "") || (count (weapons player) != 0) || (headgear player != "") || (count (assignedItems player) != 0)) exitWith
		{
			_text = "You Must Stay Completely Naked And Unarmed With No Items Whilst The Store Owner Is Collecting Your Load Out... Exiting!";
			[_text, 5] call mf_notify_client;
		};
		_playerMoney = player getVariable ["cmoney", 0];
		if (_playerMoney < _repurchasePrice) exitWith
		{
			_text = format ["You Dropped Too Much Money And Are Unable To Pay For The Load Out... Exiting!",_repurchaseMaxDistance];
			[_text, 10] call mf_notify_client;
		};
		uiSleep 1;
	};
	player setVariable ["loadOutPurchasing",false];
	if (_equipGear) then
	{
		[player, [missionnamespace, "savedLoadOut"]] call bis_fnc_loadInventory;
		_playerMoney = player getVariable ["cmoney", 0];
		player setVariable ["cmoney",(_playerMoney - _repurchasePrice),true];
		_text = "Your Last Load Out Has Been Repurchased.";
		[_text, 5] call mf_notify_client;
		uiSleep 1;
		_allItems = (items player) + (player weaponAccessories (currentWeapon player));
		{
			if (_x in _disallowedItems) then
			{
				player removePrimaryWeaponItem _x;
				player removeHandGunItem _x;
				player removeItemFromUniform _x;
				player removeItemFromVest _x;
				player removeItemFromBackpack _x;
			};
		} forEach _allItems;
		[] spawn fn_savePlayerData;
	}
	else
	{
		player setVariable ["loadOutPurchased",false];
	};
};
