// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeAircraftConfig.sqf
# @@Author: Tommo
# @@Create Date: 2022-04-04
#*********************************************************/

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// SKIPSAVE = will not be autosaved until first manual force save, good for cheap vehicles that usually get abandoned
	["Remote Designator (Khaki)", "B_W_Static_Designator_01_F", 750, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, for paint & sell price
	["Remote Designator (Sand)", "B_Static_Designator_01_F", 750, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Remote Designator (Hex)", "O_Static_Designator_02_F", 750, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Kart", "C_Kart_01_F", 400, "vehicle", "SKIPSAVE"],
	["Tractor", "C_Tractor_01_F", 500, "vehicle", "SKIPSAVE"],
	["Quadbike (Civilian)", "C_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Quadbike (NATO)", "B_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike (CSAT)", "O_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike (AAF)", "I_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], //
	["Quadbike", "I_G_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],
	["Hatchback", "C_Hatchback_01_F", 750, "vehicle", "SKIPSAVE"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 900, "vehicle", "SKIPSAVE"],
	["SUV", "C_SUV_01_F", 1000, "vehicle", "SKIPSAVE"],
	["MB 4WD", "C_Offroad_02_unarmed_F", 1000, "vehicle", "SKIPSAVE"],
	["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 900, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["MB 4WD LMG", "I_C_Offroad_02_LMG_F", 1750, "vehicle", "SKIPSAVE"],
	["MB 4WD AT", "I_C_Offroad_02_AT_F", 7500, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1000, "vehicle", "SKIPSAVE"],
	["Offroad Camo", "I_G_Offroad_01_F", 1250, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Offroad Police", "B_GEN_Offroad_01_gen_F", 1000, "vehicle", "SKIPSAVE", "noDLC"],
	["Offroad Covered", "I_E_Offroad_01_covered_F", 1100, "vehicle", "SKIPSAVE"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle", "SKIPSAVE"],
	["Offroad HMG", "I_G_Offroad_01_armed_F", 2500, "vehicle", "SKIPSAVE"],
	["Offroad AT", "I_G_Offroad_01_AT_F", 7500, "vehicle"],
	["Truck", "C_Van_01_transport_F", 700, "vehicle", "SKIPSAVE"],
	["Truck Camo", "I_G_Van_01_transport_F", 800, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Truck Box", "C_Van_01_box_F", 900, "vehicle", "SKIPSAVE"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle", "SKIPSAVE"],
	["Fuel Truck Camo", "I_G_Van_01_fuel_F", 2100, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Van Cargo", "C_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Transport", "C_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Cargo", "B_GEN_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Transport", "B_GEN_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Ambulance", "C_Van_02_medevac_F", 1500, "vehicle", "SKIPSAVE"],
	["Van Repair", "C_Van_02_service_F", 2000, "vehicle", "SKIPSAVE"],

	["Eagle IV", "BWA3_Eagle_Fleck", 2000, "vehicle", "SKIPSAVE"],
	["Eagle IV (FLW100)", "BWA3_Eagle_FLW100_Fleck", 2300, "vehicle", "SKIPSAVE"],

	["UAZ-3151", "RHS_UAZ_MSV_01", 3000, "vehicle", "SKIPSAVE"],
	["UAZ-3151 (Open)", "rhs_uaz_open_MSV_01", 3000, "vehicle", "SKIPSAVE"],

	["Land Rover Ambulance", "UK3CB_BAF_LandRover_Amb_Green_A", 25000, "vehicle", "SKIPSAVE"],
	["Land Rover Hard Top", "UK3CB_BAF_LandRover_Hard_Green_A", 25000, "vehicle", "SKIPSAVE"],
	["Land Rover Soft Top", "UK3CB_BAF_LandRover_Soft_Green_A", 25000, "vehicle", "SKIPSAVE"],
	["Land Rover Soft Top FFR", "UK3CB_BAF_LandRover_Soft_FFR_Green_A", 25000, "vehicle", "SKIPSAVE"],

	["Land Rover Snatch", "UK3CB_BAF_LandRover_Snatch_Green_A", 30000, "vehicle", "SKIPSAVE"],
	["Land Rover Snatch FFR", "UK3CB_BAF_LandRover_Snatch_FFR_Green_A", 30000, "vehicle", "SKIPSAVE"]
];

lightInfArray = compileFinal str
[
	["Prowler Light", "B_CTRG_LSV_01_light_F", 8000, "vehicle", "SKIPSAVE"],
	["Prowler", "B_T_LSV_01_unarmed_F", 10000, "vehicle", "SKIPSAVE"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 14000, "vehicle", "SKIPSAVE"],
	["Qilin", "O_T_LSV_02_unarmed_F", 10000, "vehicle", "SKIPSAVE"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 20000, "vehicle", "SKIPSAVE"],
	// Hidden
	["Hunter", "B_MRAP_01_F", 10000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 14000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 20000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Ifrit", "O_MRAP_02_F", 15000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 20000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 25000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Strider", "I_MRAP_03_F", 15000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Strider HMG", "I_MRAP_03_hmg_F", 20000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["Strider GMG", "I_MRAP_03_gmg_F", 25000, "vehicle", "SKIPSAVE", "HIDDEN"],

	["Panther GPMG", "UK3CB_BAF_Panther_GPMG_Green_A", 16000, "vehicle"],
	["Land Rover WMIK GMG", "UK3CB_BAF_LandRover_WMIK_GMG_Green_A", 25000, "vehicle"],
	["Land Rover WMIK GPMG", "UK3CB_BAF_LandRover_WMIK_GPMG_Green_A", 25000, "vehicle"],
	["Land Rover WMIK HMG", "UK3CB_BAF_LandRover_WMIK_HMG_Green_A", 25000, "vehicle"],
	["Land Rover WMIK Milan", "UK3CB_BAF_LandRover_WMIK_Milan_Green_A", 29000, "vehicle"],
	/// New Humvees
	["M1043 HMMWV Unarmed", "rhsusf_m1043_w", 12000, "vehicle"],
	["M1043 HMMWV M2 HMG", "rhsusf_m1043_w_m2", 18000, "vehicle"],
	["M1043 HMMWV MK19 GMG", "rhsusf_m1043_w_mk19", 25000, "vehicle"],
	// Humvees Newer
	["M1151 HMMWV LPV Unarmed", "rhsusf_m1151_usarmy_wd", 16000, "vehicle"],
	["M1151 HMMWV M240 LMG", "rhsusf_m1151_m240_v1_usarmy_wd", 18000, "vehicle"],
	["M1151 HMMWV M2 HMG", "rhsusf_m1151_m2_v1_usarmy_wd", 20000, "vehicle"],
	["M1151 HMMWV M2 HMG (v2)", "rhsusf_m1151_m2_v2_usarmy_wd", 22000, "vehicle"],
	["M1151 HMMWV M2 HMG LSR", "rhsusf_m1151_m2_lras3_v1_usarmy_wd", 22000, "vehicle"],
	["M1151 HMMWV MK19 GMG", "rhsusf_m1151_mk19_v1_usarmy_wd", 24000, "vehicle"],
	["M1151 HMMWV MK19 GMG (v2)", "rhsusf_m1151_mk19_v2_usarmy_wd", 26000, "vehicle"],
	["M1151 HMMWV M2 Crows", "rhsusf_m1151_m2crows_usarmy_wd", 28000, "vehicle"],
	["M1151 HMMWV MK19 Crows", "rhsusf_m1151_mk19crows_usarmy_wd", 30000, "vehicle"],
	["M1151 HMMWV TOW", "rhsusf_m966_w", 34000, "vehicle"],

	["Jackal 2 (HMG)", "UK3CB_BAF_Jackal2_L111A1_G", 20000, "vehicle"],
	["Jackal 2 (GMG)", "UK3CB_BAF_Jackal2_L134A1_G", 25000, "vehicle"],

	["Dingo 2 GE A3.2B (MG3)", "BWA3_Dingo2_FLW100_MG3_Fleck", 22000, "vehicle"],
	["Dingo 2 GE A3.2B (GMW)", "BWA3_Dingo2_FLW200_GMW_Fleck", 24000, "vehicle"],
	["Dingo 2 GE A3.3B (M2)", "BWA3_Dingo2_FLW200_M2_Fleck", 24000, "vehicle"],
	["Dingo 2 GE A3.4 CG-13 (GMW)", "BWA3_Dingo2_FLW200_GMW_CG13_Fleck", 24000, "vehicle"],
	["Dingo 2 GE A3.4 CG-13 (M2)", "BWA3_Dingo2_FLW200_M2_CG13_Fleck", 24000, "vehicle"],
	["Dingo 2 GE A3.4 CG-13 (MG3)", "BWA3_Dingo2_FLW100_MG3_CG13_Fleck", 24000, "vehicle"],

	["GAZ-233011 (Unarmed)", "rhs_tigr_msv", 16000, "vehicle"],
	["GAZ-233114 (Unarmed)", "rhs_tigr_m_msv", 17000, "vehicle"],
	["GAZ-233014", "rhs_tigr_sts_msv", 24000, "vehicle"],

	["FV432 Mark 3 Bulldog GPMG", "UK3CB_BAF_FV432_Mk3_GPMG_Green", 34000, "vehicle"],
	["FV432 Mark 3 Bulldog RWS", "UK3CB_BAF_FV432_Mk3_RWS_Green", 37000, "vehicle"],

	["PRP-3", "rhs_prp3_tv", 30000, "vehicle"],
	["PRP-3", "rhs_prp3_tv", 30000, "vehicle"],
	["PTS-M", "rhs_pts_vmf", 15000, "vehicle"],

	["Panther GPMG", "UK3CB_BAF_Panther_GPMG_Green_A", 24000, "vehicle"]
];

armoredArray = compileFinal str
[
	["M1132 Stryker Mine Clearance", "rhsusf_stryker_m1132_m2_wd", 32000, "vehicle"],
	["M1132 Stryker M2", "rhsusf_stryker_m1127_m2_d", 34000, "vehicle"],
	["M1132 Stryker MK19", "rhsusf_stryker_m1126_mk19_wd", 36000, "vehicle"],

	["AWC 304 Nyx Autocannon", "I_LT_01_cannon_F", 40000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 45000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 50000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 50000, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_v2_F", 60000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 65000, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 70000, "vehicle"],
	/// New IFV RHS
	["M2A3 Bradley", "RHS_M2A2_wd", 75000, "vehicle"],
	["M2A2 Bradley B1", "RHS_M2A2_BUSKI_WD", 80000, "vehicle"],
	["M2A3 Bradley", "RHS_M2A3_wd", 85000, "vehicle"],
	["M2A3 Bradley B1", "RHS_M2A3_BUSKI_wd", 90000, "vehicle"],
	["M2A3 Bradley B3", "RHS_M2A3_BUSKIII_wd", 95000, "vehicle"],
	["M6A2 Bradley (AA)", "RHS_M6_wd", 120000, "vehicle"],

	["FV510 Warrior IFV", "UK3CB_BAF_Warrior_A3_W", 75000, "vehicle"],
	["Puma IFV", "BWA3_Puma_Fleck", 75000, "vehicle"],
	["Marder 1A5", "Redd_Marder_1A5_Flecktarn", 75000, "vehicle"],

	["BTR-60PB", "rhs_btr60_msv", 45000, "vehicle"],
	["BTR-70", "rhs_btr70_msv", 45000, "vehicle"],
	["BTR-80", "rhs_btr80_msv", 50000, "vehicle"],
	["BTR-80A", "rhs_btr80a_msv", 60000, "vehicle"],

	["BRM-1K", "rhs_brm1k_tv", 65000, "vehicle"],
	["BRM-1P", "rhs_bmp1p_tv", 65000, "vehicle"],
	["BRM-2K", "rhs_bmp2k_tv", 66000, "vehicle"],

	["BMP-3 Vesna", "rhs_bmp3mera_msv", 70000, "vehicle"],

	["T-15 (HEAT)", "rhs_t15_tv", 95000, "vehicle", "HIDDEN"]
];

antiArray = compileFinal str
[
	["Prowler AT", "B_T_LSV_01_AT_F", 25000, "vehicle"],
	["Qilin AT", "O_T_LSV_02_AT_F", 25000, "vehicle"],
	["AWC 301 Nyx AT", "I_LT_01_AT_F", 30000, "vehicle"],
	["AWC 302 Nyx AA", "I_LT_01_AA_F", 30000, "vehicle"],
	["M1132 Stryker AT", "rhsusf_stryker_m1134_wd", 55000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 65000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 65000, "vehicle"],
	["Rhino MGS", "B_AFV_Wheeled_01_cannon_F", 85000, "vehicle"],
	["Rhino MGS UP", "B_AFV_Wheeled_01_up_cannon_F", 90000, "vehicle"],

	["Gerpard 1A2 AA", "Redd_Tank_Gepard_1A2_Flecktarn", 65000, "vehicle"],

	// RHS stuff
	["BM-21", "RHS_BM21_MSV_01", 300000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["BM-21", "B_MBT_01_mlrs_F", 300000, "vehicle", "SKIPSAVE", "HIDDEN"],
	["BM-21", "B_MBT_01_arty_F", 300000, "vehicle", "SKIPSAVE", "HIDDEN"],

	["GAZ-66 AA", "rhs_gaz66_zu23_msv", 45000, "vehicle"],
	["URAL-4320 AA", "RHS_Ural_Zu23_MSV_01", 45000, "vehicle"],

	["ZSU-23-4V AA", "rhs_zsu234_aa", 55000, "vehicle"]
];

tanksArray = compileFinal str
[
	["M2A1 Slammer", "B_MBT_01_cannon_F", 90000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 95000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 95000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 95000, "vehicle"],
	["T-140 Angara", "O_MBT_04_cannon_F", 100000, "vehicle"],
	["T-140K Angara", "O_MBT_04_command_F", 120000, "vehicle"],
	/// New Tanks RHS
	["M1A2 Abrams", "rhsusf_m1a1aimwd_usarmy", 100000, "vehicle"],
	["M1A2 Abrams T1", "rhsusf_m1a1aim_tuski_wd", 120000, "vehicle"],
	["M1A2 Abrams SEPV1", "rhsusf_m1a2sep1wd_usarmy", 140000, "vehicle"],
	["M1A2 Abrams SEPV1 T1", "rhsusf_m1a2sep1tuskiwd_usarmy", 160000, "vehicle"],
	["M1A2 Abrams SEPV1 T2", "rhsusf_m1a2sep1tuskiiwd_usarmy", 180000, "vehicle"],
	["M1A2 Abrams SEPV2", "rhsusf_m1a2sep2wd_usarmy", 190000, "vehicle"],

	["Leopard 2A6M MBT", "BWA3_Leopard2_Fleck", 160000, "vehicle"],

	["T-72B (1989)", "rhs_t72bc_tv", 90000, "vehicle"],
	["T-80BV", "rhs_t80bv", 90000, "vehicle"],
	["T-90A", "rhs_t90a_tv", 95000, "vehicle"],
	["T-72B3", "rhs_t72be_tv", 100000, "vehicle"],
	["T-90AM", "rhs_t90am_tv", 100000, "vehicle"],
	["T-80UM", "rhs_t80um", 105000, "vehicle"],
	["T-80UK", "rhs_t80uk", 105000, "vehicle"],
	["T-14", "rhs_t14_tv", 110000, "vehicle"],
	["T-90SA (2016)", "rhs_t90sab_tv", 120000, "vehicle"],
	["T-90SM", "rhs_t90sm_tv", 130000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 5000, "boat", "SKIPSAVE"],

	["Rescue Boat", "C_Rubberboat", 5000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Rescue Boat (NATO)", "B_Lifeboat", 5000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Rescue Boat (CSAT)", "O_Lifeboat", 5000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Assault Boat", "B_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Assault Boat (FIA)", "I_G_Boat_Transport_01_F", 10000, "boat", "SKIPSAVE", "HIDDEN"], //
	["Motorboat", "C_Boat_Civil_01_F", 10000, "boat", "SKIPSAVE"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 9000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Motorboat Police", "C_Boat_Civil_01_police_F", 9000, "boat", "SKIPSAVE", "HIDDEN"], //

	["RHIB", "I_C_Boat_Transport_02_F", 15000, "boat", "SKIPSAVE"],

	["Speedboat HMG", "O_Boat_Armed_01_hmg_F", 20000, "boat", "SKIPSAVE"],
	["Speedboat Minigun", "B_Boat_Armed_01_minigun_F", 20000, "boat", "SKIPSAVE"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 20000, "boat", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["SDV Submarine (NATO)", "B_SDV_01_F", 20000, "submarine", "SKIPSAVE"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 20000, "submarine", "SKIPSAVE"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 20000, "submarine", "SKIPSAVE"],

	["BMK Tug", "rhs_bmk_t", 10000, "boat", "SKIPSAVE"],
	["Mk.V SOC", "rhsusf_mkvsoc", 90000, "boat", "SKIPSAVE"],
	["Raiding Craft GPMG", "UK3CB_BAF_RHIB_GPMG", 20000, "boat", "SKIPSAVE"],
	["Raiding Craft HMG", "UK3CB_BAF_RHIB_HMG", 20000, "boat", "SKIPSAVE"]
];

utilityArray = compileFinal str
[
	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Resupply", "B_Truck_01_ammo_F", 5000, "vehicle"],
	//["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 8000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 9000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 10000, "vehicle"],

	//["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Resupply", "O_Truck_03_ammo_F", 5000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 8000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 9000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 10000, "vehicle"],

	["Zamak Resupply", "I_Truck_02_ammo_F", 4000, "vehicle"],
	["Zamak Transport", "I_Truck_02_transport_F", 4500, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 6000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 7000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 8000, "vehicle"],

	["AWC 303 Nyx Recon", "I_LT_01_scout_F", 10000, "vehicle"],
	["CRV-6e Bobcat (Resupply)", "B_APC_Tracked_01_CRV_F", 30000, "vehicle"],

	// Humvee Utility
	["M1097A2 Transporter (2 Door)", "rhsusf_m998_w_2dr", 12000, "vehicle"],
	["M1097A2 Transporter (4 Door)", "rhsusf_m998_w_4dr", 14000, "vehicle"],
	["M1097A2 Transporter Covered", "rhsusf_m998_w_2dr_fulltop", 14000, "vehicle"],
	["M1097A2 Transporter Armored", "rhsusf_m1165_usarmy_wd", 15000, "vehicle"],

	// Coyote Utility
	["Coyote TSV Logi (HMG)", "UK3CB_BAF_Coyote_Logistics_L111A1_W", 20000, "vehicle"],
	["Coyote TSV Logi (GMG)", "UK3CB_BAF_Coyote_Logistics_L134A1_W", 20000, "vehicle"],
	["Coyote TSV Pax (HMG)", "UK3CB_BAF_Coyote_Passenger_L111A1_W", 24000, "vehicle"],
	["Coyote TSV Pax (GMG)", "UK3CB_BAF_Coyote_Passenger_L134A1_W", 24000, "vehicle"],

	["MULTI A4 FSE", "BWA3_Multi_Fleck", 10000, "vehicle"]
];

//allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);
allVehStoreVehicles = compileFinal str (call landArray + call lightInfArray + call armoredArray + call antiArray + call tanksArray + call boatsArray + call utilityArray);
