// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeAircraftConfig.sqf
# @@Author: Tommo
# @@Create Date: 2022-04-04
#*********************************************************/

droneArray = compileFinal str
[
	["ED-1E Camera UGV", "B_UGV_02_Science_F", 1000, "vehicle", "SKIPSAVE"],
	["ED-1E Camera UGV", "O_UGV_02_Science_F", 1000, "vehicle", "SKIPSAVE"],
	["ED-1E Camera UGV", "I_UGV_02_Science_F", 1000, "vehicle", "SKIPSAVE"],
	["ED-1D Demining UGV", "B_UGV_02_Demining_F", 1000, "vehicle", "SKIPSAVE"],
	["ED-1D Demining UGV", "O_UGV_02_Demining_F", 1000, "vehicle", "SKIPSAVE"],
	["ED-1D Demining UGV", "I_UGV_02_Demining_F", 1000, "vehicle", "SKIPSAVE"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"],

	["AR-2 Darter UAV", "B_UAV_01_F", 2500, "vehicle", "SKIPSAVE"],
	["AR-2 Darter UAV", "O_UAV_01_F", 2500, "vehicle", "SKIPSAVE"],
	["AR-2 Darter UAV", "I_UAV_01_F", 2500, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican UAV", "B_UAV_06_F", 250, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican UAV", "O_UAV_06_F", 250, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican UAV", "I_UAV_06_F", 250, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Medical UAV", "B_UAV_06_medical_F", 1000, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Medical UAV", "O_UAV_06_medical_F", 1000, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Medical UAV", "I_UAV_06_medical_F", 1000, "vehicle", "SKIPSAVE"],
	["AL-6 Pelican Demining UAV", "C_IDAP_UAV_06_antimine_F", 1000, "vehicle", "SKIPSAVE"],

	["MQ-12 Falcon", "B_T_UAV_03_F", 110000, "vehicle"], // Do NOT use "B_T_UAV_03_dynamicLoadout_F" (unlees you don't need ASRAAM)

	["K40 Ababil-3 (Missle) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 (Missle) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 (Bomber) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkBomber"],
	["K40 Ababil-3 (Bomber) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkBomber"],
	["K40 Ababil-3 (Cluster) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 (Cluster) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 (DAGR) Opfor", "O_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkDAGR"],
	["K40 Ababil-3 (DAGR) Indy", "I_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkDAGR"],

	["MQ4A Greyhawk (Missle)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkMissile"],
	["MQ4A Greyhawk (Bomber)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkBomber"],
	["MQ4A Greyhawk (Cluster)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkCluster"],
	["MQ4A Greyhawk (Missle)", "B_UAV_02_dynamicLoadout_F", 200000, "vehicle", "variant_greyhawkDAGR"],

	["UCAV Sentinel (Missile)", "B_UAV_05_F", 350000, "vehicle", "variant_sentinelMissile"],
	["UCAV Sentinel (Bomber)", "B_UAV_05_F", 350000, "vehicle", "variant_sentinelBomber"],
	["UCAV Sentinel (Cluster)", "B_UAV_05_F", 350000, "vehicle", "variant_sentinelCluster"],

	["MQ-9 Reaper (Multi-Role)", "USAF_MQ9", 370000, "vehicle"],
	["MQ-9 Reaper (Missle)", "USAF_MQ9", 370000, "vehicle", "variant_mq9missle"],
	["MQ-9 Reaper (Bomber)", "USAF_MQ9", 370000, "vehicle", "variant_mq9Bomber"],

	["MQ-9 Reaper (RAF)", "UK3CB_BAF_MQ9_Reaper", 350000, "vehicle"],

	["RQ-4A Global Hawk (Spy)", "USAF_RQ4A", 100000, "vehicle"]
];

antiAirArray = compileFinal str
[
	["Mk21 Centurion", "B_SAM_System_02_F", 150000],
	["Mk41 VLS", "B_Ship_MRLS_01_F", 300000],
	["Mk45 Hammer", "B_Ship_Gun_01_F", 240000],
	["Mk49 Spartan", "B_SAM_System_01_F", 160000],
	["Praetorian 1C", "B_AAA_System_01_F", 120000],
	["AN/MPQ-105 Radar", "B_Radar_System_01_F", 80000],
	["P-37 Radar", "rhs_p37_turret_vpvo", 80000],
	["PRV-13 Radar", "rhs_prv13_turret_vpvo", 80000],
	["Mantis Radar", "rnt_mantis_radar", 80000],
	["Mantis GDF-020", "rnt_mantis_base", 120000],
	["MIM-145 Defender", "B_SAM_System_03_F", 140000],
	["R-750 Cronus Radar", "O_Radar_System_02_F", 80000],
	["S-750 Rhea", "O_SAM_System_04_F", 150000]
];

advJetArray = compileFinal str
[
	["A10", "USAF_A10", 480000, "vehicle"],
	["A10 Heavy", "USAF_A10", 520000, "vehicle", "variant_a10heavy"],
	["F22 Stealth", "USAF_F22", 400000, "vehicle"],
	["F22 Heavy", "USAF_F22_Heavy", 500000, "vehicle"],
	["F35A Stealth", "USAF_F35A_STEALTH", 400000, "vehicle", "HIDDEN"], // Removed for the new AA variant.
	["F35A Stealth AA", "USAF_F35A_STEALTH", 400000, "vehicle"],
	["F35A Stealth AARG", "USAF_F35A_STEALTH", 400000, "vehicle", "variant_f35asantiradar"],
	["F35A Heavy", "USAF_F35A", 500000, "vehicle"]
];

advUtilityArray = compileFinal str
[
	["C130 Super Hercules", "USAF_C130J", 100000, "vehicle"],
	["C130 Super Hercules (Cargo)", "USAF_C130J_Cargo", 100000, "vehicle"],
	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 100000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 200000, "vehicle"]
];

advHeliArray = compileFinal str
[
	["AH-6M Little Bird (unarmed)", "RHS_MELB_MH6M", 30000, "vehicle"],
	["AH-6M Little Bird", "RHS_MELB_AH6M", 80000, "vehicle"],
	["AH-6M Little Bird Heavy", "RHS_MELB_AH6M", 90000, "vehicle", "variant_ah6mheavy"],
	["UH-1Y Venom", "RHS_UH1Y_d", 95000, "vehicle"],
	["UH-60M Miniguns", "RHS_UH60M", 95000, "vehicle"],
	["CH-53E Super Stallion", "rhsusf_CH53E_USMC_GAU21_D", 100000, "vehicle"],
	["UH-60M ESSS", "RHS_UH60M_ESSS", 120000, "vehicle"],
	["AH-1Z Viper", "RHS_AH1Z", 120000, "vehicle"]
];

advArmorArray = compileFinal str
[
	["MZRZR4 Buggy", "rhsusf_mrzr4_d", 12000, "vehicle"],
	["M1165 Security M240", "rhsusf_m1165_asv_m240_usaf_d", 40000, "vehicle"],
	["M1165A1 SO MK19", "rhsusf_m1165a1_gmv_mk19_m240_socom_d", 60000, "vehicle"],
	["M1165A1 SO Mini-Gun", "rhsusf_m1165a1_gmv_m134d_m240_socom_d", 50000, "vehicle"],
	["M1165A1 M240 SOCOM", "rhsusf_m1165a1_gmv_m2_m240_socom_d", 40000, "vehicle"],
	["M1078 Scout Utility", "rhsusf_M1078A1R_SOV_M2_D_fmtv_socom", 40000, "vehicle"],
	["M1084 Light Utility", "rhsusf_M1084A1R_SOV_M2_D_fmtv_socom", 40000, "vehicle"],
	["M1239 M2 SOCOM", "rhsusf_M1239_M2_Deploy_socom_d", 50000, "vehicle"],
	["M1239 MK19 SOCOM", "rhsusf_M1239_MK19_Deploy_socom_d", 55000, "vehicle"]
];

specOpsStore = compileFinal str (call droneArray + call antiAirArray + call advJetArray + call advUtilityArray + call advHeliArray + call advArmorArray);
