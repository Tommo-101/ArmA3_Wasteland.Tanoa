// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.2
//	@file Name: playerActions.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap, AgentRev
//	@file Created: 20/11/2012 05:19

{ [player, _x] call fn_addManagedAction } forEach
[
	["<img image='client\icons\holster.paa'/> Holster Weapon", { player action ["SwitchWeapon", player, player, 100] }, [], -11, false, false, "", "vehicle player == player && currentWeapon player != '' && (stance player != 'CROUCH' || currentWeapon player != handgunWeapon player)"], // A3 v1.58 bug, holstering handgun while crouched causes infinite anim loop
	//["Unholster Primary Weapon", { player action ["SwitchWeapon", player, player, 0] }, [], -11, false, false, "", "vehicle player == player && currentWeapon player == '' && primaryWeapon player != ''"],
	["<img image='addons\buryDeadBody\buryDeadBody.paa'/> Bury Dead Body", "addons\buryDeadBody\buryDeadBody.sqf", [], 1.1, false, false, "", "!(([allDeadMen,[],{player distance _x},'ASCEND',{((player distance _x) < 2) && !(_x getVariable ['buryDeadBodyBurried',false])}] call BIS_fnc_sortBy) isEqualTo [])"],

	[format ["<img image='client\icons\playerMenu.paa' color='%1'/> <t color='%1'>[</t>Player Menu<t color='%1'>]</t>", "#FF8000"], "client\systems\playerMenu\init.sqf", [], -10, false], //, false, "", ""],

	["<img image='client\icons\money.paa'/> Pickup Money", "client\actions\pickupMoney.sqf", [], 1, false, false, "", "{_x getVariable ['owner', ''] != 'mission'} count (player nearEntities ['Land_Money_F', 5]) > 0"],

	//Remote Base Access
	//["Acess Remote Base Management", "client\actions\BaseManegement.sqf", [], -98, false, true, "","{_x in ['B_UavTerminal','O_UavTerminal','I_UavTerminal']} count assignedItems player > 0"],
	//Base Cracking
	//["Hack Base", "client\actions\BaseCracking.sqf", [], 99, false, false, "", "(vehicle player) iskindof 'O_Truck_03_device_F'"],

	["<img image='\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa'/> <t color='#FFFFFF'>Cancel Action</t>", { doCancelAction = true }, [], 1, false, false, "", "mutexScriptInProgress"],
	//["<t color='#FFE496'><img image='client\icons\r3f_lock.paa'/> Open Base Menu</t>", "addons\BoS\BoS_selectMenu.sqf", [cursorTarget], -97, false, false, "", "cursortarget iskindof 'Land_Device_assembled_F' && {cursorTarget getVariable ['objectLocked', false]} && {vehicle player == player} && {!isNull cursorTarget} && {alive cursorTarget} && {(player distance cursortarget) < 5}"],
	//["<t color='#FFE496'><img image='client\icons\take.paa'/> Hack Base</t>", "addons\BoS\BoS_hackBase.sqf", [cursorTarget], -97, false, false, "", "cursortarget iskindof 'Land_Device_assembled_F' && {cursorTarget getVariable ['objectLocked', false]} && {vehicle player == player} && {!isNull cursorTarget} && {alive cursorTarget} && {'ToolKit' in (items player)} && {cursorTarget getVariable ['ownerUID',''] != getPlayerUID player} && {(player distance cursortarget) < 5}"],

	["<img image='client\icons\repair.paa'/> Salvage", "client\actions\salvage.sqf", [], 1.1, false, false, "", "!isNull cursorTarget && !alive cursorTarget && {cursorTarget isKindOf 'AllVehicles' && !(cursorTarget isKindOf 'Man') && player distance cursorTarget <= (sizeOf typeOf cursorTarget / 3) max 3}"],

	// If you have a custom vehicle licence system, simply remove/comment the following action
	["<img image='client\icons\r3f_unlock.paa'/> Acquire Vehicle Ownership", "client\actions\takeOwnership.sqf", [], 1, false, false, "", "[] call fn_canTakeOwnership isEqualTo ''"],

	["[0]"] call getPushPlaneAction,
	["Push vehicle", "server\functions\pushVehicle.sqf", [2.5, true], 1, false, false, "", "[2.5] call canPushVehicleOnFoot"],
	["Push vehicle forward", "server\functions\pushVehicle.sqf", [2.5], 1, false, false, "", "[2.5] call canPushWatercraft"],
	["Push vehicle backward", "server\functions\pushVehicle.sqf", [-2.5], 1, false, false, "", "[-2.5] call canPushWatercraft"],

	[format ["<t color='#FF0000'>Emergency eject (Ctrl+%1)</t>", (actionKeysNamesArray "GetOver") param [0,"<'Step over' keybind>"]],  { [[], fn_emergencyEject] execFSM "call.fsm" }, [], -9, false, true, "", "(vehicle player) isKindOf 'Air' && !((vehicle player) isKindOf 'ParachuteBase')"],
	[format ["<t color='#FF00FF'>Open magic parachute (%1)</t>", (actionKeysNamesArray "GetOver") param [0,"<'Step over' keybind>"]], A3W_fnc_openParachute, [], 20, true, true, "", "vehicle player == player && (getPos player) select 2 > 2.5"],

	["<img image='client\icons\driver.paa'/> Enable driver assist", fn_enableDriverAssist, [], 0.5, false, true, "", "_veh = objectParent player; alive _veh && !alive driver _veh && {effectiveCommander _veh == player && player in [gunner _veh, commander _veh] && {_veh isKindOf _x} count ['LandVehicle','Ship'] > 0 && !(_veh isKindOf 'StaticWeapon')}"],
	["<img image='client\icons\driver.paa'/> Disable driver assist", fn_disableDriverAssist, [], 0.5, false, true, "", "_driver = driver objectParent player; isAgent teamMember _driver && {(_driver getVariable ['A3W_driverAssistOwner', objNull]) in [player,objNull]}"],
	//["<img image='\A3\ui_f\data\igui\cfg\VehicleToggles\EngineIconOn_ca.paa'/> Engine On", fn_driverAssistEngineOn, [], 0.5, false, true, "", "_driver = driver objectParent player; isAgent teamMember _driver && {(_driver getVariable ['A3W_driverAssistOwner', objNull]) in [player,objNull]} && !isEngineOn vehicle player"],
	//["<img image='\A3\ui_f\data\igui\cfg\VehicleToggles\EngineIconOn_ca.paa'/> Engine Off", fn_driverAssistEngineOff, [], 0.5, false, true, "", "_driver = driver objectParent player; isAgent teamMember _driver && {(_driver getVariable ['A3W_driverAssistOwner', objNull]) in [player,objNull]} && isEngineOn vehicle player"],
	//["<img image='\A3\ui_f\data\igui\cfg\VehicleToggles\LightsIconOn_ca.paa'/> Lights On", fn_driverAssistLightsOn, [], 0.5, false, true, "", "_driver = driver objectParent player; isAgent teamMember _driver && {(_driver getVariable ['A3W_driverAssistOwner', objNull]) in [player,objNull]} && !isLightOn vehicle player"],
	//["<img image='\A3\ui_f\data\igui\cfg\VehicleToggles\LightsIconOn_ca.paa'/> Lights Off", fn_driverAssistLightsOff, [], 0.5, false, true, "", "_driver = driver objectParent player; isAgent teamMember _driver && {(_driver getVariable ['A3W_driverAssistOwner', objNull]) in [player,objNull]} && isLightOn vehicle player"],

	[format ["<img image='\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa' color='%1'/> <t color='%1'>[</t>Airdrop Menu<t color='%1'>]</t>", "#FF0000"],"addons\APOC_Airdrop_Assistance\APOC_cli_menu.sqf",[], -100, false, false],
	["<img image='client\icons\radar.paa'/> Track Devices", "addons\beacondetector\beacondetector.sqf",0,-10,false,false,"","('MineDetector' in (items player)) && !BeaconScanInProgress"],
	["<img image='\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa'/> <t color='#FFFFFF'>Cancel tracking.</t>", "Beaconscanstop = true",0,-10,false,false,"","BeaconScanInProgress"],

	["<img image='\A3\ui_f\data\Map\VehicleIcons\pictureHeal_ca.paa'/> Treat yourself", "player action ['HealSoldierSelf', player];", [], 200, true, true, "", "damage player <= 0.2 && damage player != 0 && 'FirstAidKit' in (items player) && count (['abswp', 'abdvp', 'advep', 'asdvp', 'asswp', 'aswmp'] select {[_x, animationState player] call fn_startsWith}) == 0 && vehicle player == player"],
	["<img image='\A3\ui_f\data\Map\VehicleIcons\pictureHeal_ca.paa'/> Treat unit", "player action ['HealSoldier', cursorObject];", [], 200, true, true, "", "cursorObject distance player < 2.5 && cursorObject isKindOf 'CAManBase' && damage cursorObject <= 0.2 && damage cursorObject != 0 && 'FirstAidKit' in (items player) && count (['abswp', 'abdvp', 'advep', 'asdvp', 'asswp', 'aswmp'] select {[_x, animationState player] call fn_startsWith}) == 0 && vehicle player == player"]
];

//Door Locking
// For some reason this diesn't work with add managed action.
//player addaction ["Lock Door","client\actions\DoorLocking.sqf", ["lock"], -99, false, true, "", "(cursorObject getVariable [format ['bis_disabled_%1',getCursorObjectParams select 1 select 0], 0]) == 0 && {[['door_'],getCursorObjectParams select 1 select 0] call fn_startsWith} && cursorObject getVariable ['objectLocked', false]"];
//player addaction ["Unlock Door","client\actions\DoorLocking.sqf", ["unlock"], -99, false, true, "", "(cursorObject getVariable [format ['bis_disabled_%1',getCursorObjectParams select 1 select 0], 0]) == 1 && {[['door_'],getCursorObjectParams select 1 select 0] call fn_startsWith} && cursorObject getVariable ['objectLocked', false]"];
//player addaction ["Set Door PIN","client\actions\DoorLocking.sqf", ["ChangePin"], -99, false, true, "", "(cursorObject getVariable 'ownerUID') == (getPlayerUID player) && {[['door_'],getCursorObjectParams select 1 select 0] call fn_startsWith}"];


if (["A3W_vehicleLocking"] call isConfigOn) then
{
	[player, ["<img image='client\icons\r3f_unlock.paa'/> Pick Lock", "addons\scripts\lockPick.sqf", [cursorTarget], 1, false, false, "", "alive cursorTarget && player distance cursorTarget <= (sizeOf typeOf cursorTarget / 3) max 3 && {{cursorTarget isKindOf _x} count ['LandVehicle','Ship','Air'] > 0 && {locked cursorTarget == 2 && !(cursorTarget getVariable ['A3W_lockpickDisabled',false]) && cursorTarget getVariable ['ownerUID','0'] != getPlayerUID player && 'ToolKit' in items player}}"]] call fn_addManagedAction;
};

// Hehehe...
if !(288520 in getDLCs 1) then
{
	[player, ["<t color='#00FFFF'>Get in as Driver</t>", "client\actions\moveInDriver.sqf", [], 6, true, true, "", "cursorTarget isKindOf 'Kart_01_Base_F' && player distance cursorTarget < 3.4 && isNull driver cursorTarget"]] call fn_addManagedAction;
};

if (["A3W_savingMethod", "profile"] call getPublicVar == "extDB") then
{
	if (["A3W_vehicleSaving"] call isConfigOn) then
	{
		[player, ["<img image='client\icons\save.paa'/> Enable Vehicle Saving", { cursorTarget call fn_forceSaveVehicle }, [], -9.5, false, true, "", "cursorTarget call canForceSaveVehicle && (cursorTarget getVariable ['A3W_skipAutoSave', false])"]] call fn_addManagedAction;
		[player, ["<img image='client\icons\save.paa'/> Force Save Vehicle", { cursorTarget call fn_forceSaveVehicle }, [], -9.5, false, true, "", "cursorTarget call canForceSaveVehicle && !(cursorTarget getVariable ['A3W_skipAutoSave', false])"]] call fn_addManagedAction;
	};

	if (["A3W_staticWeaponSaving"] call isConfigOn) then
	{
		[player, ["<img image='client\icons\save.paa'/> Enable Turret Saving", { cursorTarget call fn_forceSaveObject }, [], -9.5, false, true, "", "cursorTarget call canForceSaveStaticWeapon && (cursorTarget getVariable ['A3W_skipAutoSave', false])"]] call fn_addManagedAction;
		[player, ["<img image='client\icons\save.paa'/> Force Save Turret", { cursorTarget call fn_forceSaveObject }, [], -9.5, false, true, "", "cursorTarget call canForceSaveStaticWeapon && !(cursorTarget getVariable ['A3W_skipAutoSave', false])"]] call fn_addManagedAction;
	};
};
