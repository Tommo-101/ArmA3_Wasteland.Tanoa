// by ALIAS

private ["_al_grenade","_shooter","_poz_g","_zgud","_obj_emp","_drones"];

_delay_check = 0.01;

["tiuit"] remoteExec ["playsound"];

//[["hithull","hitfuel","hitavionics","hitmissiles","hitengine1","hitengine2","hitengine","hithrotor","hitvrotor","hitglass1","hitglass2","hitglass3","hitglass4","hitglass5","hitglass6","hitglass7","hitglass8","hitwinch","hitrglass","hitlglass","hitengine3","hittransmission","hitlight","hithydraulics","hitgear","hithstabilizerl1","hithstabilizerr1","hitvstabilizer1","hittail","hitpitottube","hitstaticport","hitstarter1","hitstarter2","hitstarter3","hitturret","hitgun","#light_r"],["hull_hit","fuel_hit","avionics_hit","ammo_hit","engine_1_hit","engine_2_hit","engine_hit","main_rotor_hit","tail_rotor_hit","glass1","glass2","glass3","glass4","glass5","glass6","glass7","glass8","","","","","transmission","","","","","","","","","","","","","main_turret_hit","main_gun_hit","light_r"],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
//[["hithull","hitengine","hitengine2","hitavionics","hitammo","hitfuel","hitfuel2","hitlaileron","hitraileron","hitlcelevator","hitrelevator","hitturret","hitgun","#pos_gear_front_light"],["hithull","hitengine","hitengine2","hitavionics","hitammo","hitfuel","hitfuel2","hitlaileron","hitraileron","hitlcelevator","hitrelevator","","","pos_gear_front_light"],[0,0,0,0,0,0,0,0,0,0,0,0,0,0]]


{_x setDamage 1; _x setHitPointDamage ["hitavionics",1]; _x setHitPointDamage ["hitrelevator",1]; _x setHitPointDamage ["hithull",1];  [[_x],"AL_emp\sparky.sqf"] remoteExec ["execVM"];sleep _delay_check} forEach list_drones_emp;
{_x setHitPointDamage ["hittail",1]; _x setHitPointDamage ["hithstabilizerl1",1]; _x setHitPointDamage ["hithstabilizerr1",1]; _x setHitPointDamage ["hitvstabilizer1",1]; _x setHitPointDamage ["hitgear",1]; _x setHitPointDamage ["hithydraulics",1]; _x setHitPointDamage ["hitvrotor",1]; _x setHitPointDamage ["HitEngine",1]; _x setHitPointDamage ["HitEngine2",1];_x setHitPointDamage ["HitEngine3",1]; _x setHitPointDamage ["hitTurret",1]; _x setHitPointDamage ["hitGun",1]; _x disableTIEquipment true; _x disableNVGEquipment true; [[_x],"AL_emp\tgt_sfx.sqf"] remoteExec ["execVM"]; sleep _delay_check} forEach list_car_emp;
{_x setDamage 0.9; [[_x],"AL_emp\sparky.sqf"] remoteExec ["execVM"];sleep _delay_check} forEach list_light_emp;
{_x setDamage 1;[[_x],"AL_emp\sparky.sqf"] remoteExec ["execVM"];sleep _delay_check} forEach static_turrets_emp;
//{_x disableTIEquipment true; _x disableNVGEquipment true; [[_x],"AL_emp\sparky.sqf"] remoteExec ["execVM"];sleep _delay_check} forEach static_turrets_emp;
["tiuit"] remoteExec ["playsound"];
{
	[[_x],"AL_emp\tgt_sfx.sqf"] remoteExec ["execVM"];
	removeGoggles _x; _x removeWeaponGlobal "Rangefinder"; _x removeWeaponGlobal "Laserdesignator"; _x removeItem "Rangefinder"; _x unassignItem "ItemGPS"; _x removeItem "ItemGPS"; _x unassignItem "ItemRadio"; _x removeItem "ItemRadio";
	_x unassignItem "NVGoggles"; _x removeItem "NVGoggles"; _x unassignItem "NVGoggles_OPFOR"; _x removeItem "NVGoggles_OPFOR"; _x unassignItem "NVGoggles_INDEP"; _x removeItem "NVGoggles_INDEP";
	_x unassignItem "O_NVGoggles_hex_F"; _x removeItem "O_NVGoggles_hex_F"; _x unassignItem "O_NVGoggles_urb_F"; _x removeItem "O_NVGoggles_urb_F"; _x unassignItem "O_NVGoggles_ghex_F"; _x removeItem "O_NVGoggles_ghex_F";
	_x unassignItem "NVGoggles_tna_F"; _x removeItem "NVGoggles_tna_F"; _x unassignItem "NVGogglesB_blk_F"; _x removeItem "NVGogglesB_blk_F"; _x unassignItem "NVGogglesB_grn_F"; _x removeItem "NVGogglesB_grn_F";
	_x unassignItem "NVGogglesB_gry_F"; _x removeItem "NVGogglesB_gry_F"; _x unassignItem "Integrated_NVG_F"; _x removeItem "Integrated_NVG_F"; _x unassignItem "Integrated_NVG_TI_0_F"; _x removeItem "Integrated_NVG_TI_0_F";
	_x unassignItem "Integrated_NVG_TI_1_F"; _x removeItem "Integrated_NVG_TI_1_F"; _x removePrimaryWeaponItem "acc_pointer_IR"; 
	if (headgear _x in special_helmet_emp) then {removeHeadgear _x};
	if (secondaryWeapon _x in special_launchers_emp) then {_x removeWeaponGlobal (secondaryWeapon _x)};
	if (emp_dam>0) then {_x setDamage ((getDammage _x) + emp_dam)};
	sleep _delay_check
} forEach list_man_emp;