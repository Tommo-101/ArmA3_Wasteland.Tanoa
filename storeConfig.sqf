// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 125],
	["P07 Pistol", "hgun_P07_F", 150],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 150, "noDLC"],
	["P07 Pistol (Black)", "hgun_P07_blk_F", 150, "noDLC"],
	["Rook-40 Pistol", "hgun_Rook40_F", 150],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 175],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 175],
	["4-five Pistol", "hgun_Pistol_heavy_01_F", 200],
	["4-five Pistol (Green)", "hgun_Pistol_heavy_01_green_F", 200, "noDLC"],
	["Starter Pistol", "hgun_Pistol_Signal_F", 200],
	// RHS
	["M9 Beretta", "rhsusf_weap_m9", 200],  // M9 Beretta
	["M320 GLM", "rhs_weap_M320", 200],  // M320 GLM
	["Glock 17", "rhsusf_weap_glock17g4", 200],  // Glock 17
	["M1911A1", "rhsusf_weap_m1911a1", 200], // M1911A1
	["PM Makarov", "rhs_weap_makarov_pm", 200],
	["MP-443", "rhs_weap_pya", 200],
	["RSP-30 Red Flare", "rhs_weap_rsp30_red", 100],
	["RSP-30 Green Flare", "rhs_weap_rsp30_green", 100],
	["RSP-30 White Flare", "rhs_weap_rsp30_white", 100],
	//BWMod
	["P12 Pistol", "BWA3_P12", 100],
	["P2A1 Pistol", "BWA3_P2A1", 100],
	["P8A1 Pistol", "BWA3_P8", 100]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 300],
	["Protector SMG", "SMG_05_F", 300],
	["Sting SMG", "SMG_02_F", 325],
	["Vermin SMG", "SMG_01_F", 325],

	["ADR-97C (Black)", "SMG_03C_black", 300],
	["ADR-97C (Camo)", "SMG_03C_camo", 300],
	["ADR-97C (Hex)", "SMG_03C_hex", 300],
	["ADR-97C (Khaki)","SMG_03C_khaki", 300],
	["ADR-97C TR (Black)", "SMG_03C_TR_black", 325],
	["ADR-97C TR (Camo)", "SMG_03C_TR_camo", 325],
	["ADR-97C TR (Hex)", "SMG_03C_TR_hex", 325],
	["ADR-97C TR (Khaki)", "SMG_03C_TR_khaki", 325],
	["ADR-97 (Black)", "SMG_03_black", 325],
	["ADR-97 (Camo)", "SMG_03_camo", 325],
	["ADR-97 (Hex)", "SMG_03_hex", 325],
	["ADR-97 (Khaki)", "SMG_03_khaki", 325],
	["ADR-97 TR (Black)", "SMG_03_TR_black", 350],
	["ADR-97 TR (Camo)", "SMG_03_TR_camo", 350],
	["ADR-97 TR (Hex)", "SMG_03_TR_hex", 350],
	["ADR-97 TR (Khaki)", "SMG_03_TR_khaki", 350],
	// Shotguns
	["Kozlice Shotgun", "sgun_HunterShotgun_01_f", 350],
	["Kozlice Shotgun (Sawed-Off)", "sgun_HunterShotgun_01_sawedoff_f", 175],
	// RHS
	["M590A1 (Short)", "rhs_weap_M590_5RD", 400],
	["M590A1 (Long)", "rhs_weap_M590_8RD", 400],

	["MP7A2 (AOR1)", "rhsusf_weap_MP7A2_aor1", 400],  // MP7A2 (AOR1)
	["MP7A2 (Desert)", "rhsusf_weap_MP7A2_desert", 400],  // MP7A2 (Desert)
	["MP7A2 (Winter)", "rhsusf_weap_MP7A2_winter", 400],  // MP7A2 (Winter)
	["MP7A2", "rhsusf_weap_MP7A2", 400],  // MP7A2
	//BWMod
	["MP7", "BWA3_MP7", 400]
];

rifleArray = compileFinal str
[

	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 500],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 550],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 550],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 600],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 600],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 650],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 650],

	["TRG-20 Carbine", "arifle_TRG20_F", 550],
	["TRG-21 Rifle ", "arifle_TRG21_F", 600],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 650],

	["Katiba Carbine", "arifle_Katiba_C_F", 550],
	["Katiba Rifle", "arifle_Katiba_F", 600],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 650],

	["MX Carbine", "arifle_MXC_F", 550],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 550],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 550, "noDLC"],
	["MX Rifle", "arifle_MX_F", 600],
	["MX Rifle (Black)", "arifle_MX_Black_F", 600],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 600, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 650],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 650],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 650, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 600],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 600],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 600],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 650],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 650],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 650],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 600],
	["CAR-95 Rifle (Hex)", "arifle_CTAR_hex_F", 600],
	["CAR-95 Rifle (G Hex)", "arifle_CTAR_ghex_F", 600],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 650],
	["CAR-95 GL Rifle (Hex)", "arifle_CTAR_GL_hex_F", 650],
	["CAR-95 GL Rifle (G Hex)", "arifle_CTAR_GL_ghex_F", 650],
	["Type 115 Stealth Rifle", "arifle_ARX_blk_F", 700],
	["Type 115 Stealth Rifle (Hex)", "arifle_ARX_hex_F", 700],
	["Type 115 Stealth Rifle (G Hex)", "arifle_ARX_ghex_F", 700],

	//RHS
	["HK416 D10 (SOPMOD Stock/Desert)", "rhs_weap_hk416d10_LMT_d", 600],
	["HK416 D10 (SOPMOD Stock/Woodland)", "rhs_weap_hk416d10_LMT_wd", 600],
	["HK416 D10 (SOPMOD Stock)", "rhs_weap_hk416d10_LMT", 600],
	["HK416 D10 (M320)", "rhs_weap_hk416d10_m320", 600],
	["HK416 D10", "rhs_weap_hk416d10", 600],
	["HK416 D14.5 (Desert Net)", "rhs_weap_hk416d145_d_2", 600],
	["HK416 D14.5 (Desert Grass)", "rhs_weap_hk416d145_d", 600],
	["HK416 D14.5 (M320)", "rhs_weap_hk416d145_m320", 600],
	["HK416 D14.5 (Woodland Net)", "rhs_weap_hk416d145_wd_2", 600],
	["HK416 D14.5 (Woodland Grass)", "rhs_weap_hk416d145_wd", 600],
	["HK416 D14.5", "rhs_weap_hk416d145", 600],
	["M4 (Carryhandle/M203)", "rhs_weap_m4_carryhandle_m203", 550],
	["M4 (Carryhandle/M203S)", "rhs_weap_m4_carryhandle_m203S", 550],
	["M4 (Carryhandle/Magpull Stock)", "rhs_weap_m4_carryhandle_mstock", 550],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 550],
	["M4 (M203)", "rhs_weap_m4_m203", 550],
	["M4 (M203S)", "rhs_weap_m4_m203S", 550],
	["M4 (M320)", "rhs_weap_m4_m320", 550],
	["M4 (Magpull Stock)", "rhs_weap_m4_mstock", 550],
	["M4", "rhs_weap_m4", 550],
	["M4A1 Block II (Black Rail)", "rhs_weap_m4a1_blockII_bk", 600],
	["M4A1 Block II (Desert)", "rhs_weap_m4a1_blockII_d", 600],
	["M4A1 Block II (Black Rail/SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC_bk", 600],
	["M4A1 Block II (Desert/SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC_d", 600],
	["M4A1 Block II (Woodland/SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC_wd", 600],
	["M4A1 Block II (SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC", 600],
	["M4A1 Block II (Black Rail/M203)", "rhs_weap_m4a1_blockII_M203_bk", 600],
	["M4A1 Block II (Desert/M203)", "rhs_weap_m4a1_blockII_M203_d", 600],
	["M4A1 Block II (Woodland/M203)", "rhs_weap_m4a1_blockII_M203_wd", 600],
	["M4A1 Block II (M203)", "rhs_weap_m4a1_blockII_M203", 600],
	["M4A1 Block II (Woodland)", "rhs_weap_m4a1_blockII_wd", 600],
	["M4A1 Block II", "rhs_weap_m4a1_blockII", 600],
	["M4A1 (M203)", "rhs_weap_m4a1_carryhandle_m203", 600],
	["M4A1 (M203S)", "rhs_weap_m4a1_carryhandle_m203S", 600],
	["M4A1 (Magpull Stock)", "rhs_weap_m4a1_carryhandle_mstock", 600],
	["M4A1", "rhs_weap_m4a1_carryhandle", 600],
	["M4A1 PIP (Desert/Magpull Stock)", "rhs_weap_m4a1_d_mstock", 600],
	["M4A1 PIP (Desert)", "rhs_weap_m4a1_d", 600],
	["M4A1 PIP (M203)", "rhs_weap_m4a1_m203", 600],
	["M4A1 PIP (Desert/M203S)", "rhs_weap_m4a1_m203s_d", 600],
	["M4A1 PIP (Woodland/M203S)", "rhs_weap_m4a1_m203s_wd", 600],
	["M4A1 PIP (M203S)", "rhs_weap_m4a1_m203s", 600],
	["M4A1 PIP (M320)", "rhs_weap_m4a1_m320", 600],
	["M4A1 PIP (Magpull Stock)", "rhs_weap_m4a1_mstock", 600],
	["M4A1 PIP (Woodland/Magpull Stock)", "rhs_weap_m4a1_wd_mstock", 600],
	["M4A1 PIP (Woodland)", "rhs_weap_m4a1_wd", 600],
	["M4A1 PIP", "rhs_weap_m4a1", 600],
	["SCAR-H (USA/CQC)", "rhs_weap_SCARH_USA_CQC", 600],
	["SCAR-H (USA/LB)", "rhs_weap_SCARH_USA_LB", 600],
	["SCAR-H (USA/STD)", "rhs_weap_SCARH_USA_STD", 600],
	["M14 EBR-RI", "rhs_weap_m14ebrri", 600],
	["M16A4 (Carryhandle/M203)", "rhs_weap_m16a4_carryhandle_M203", 600],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 600],
	["M16A4 (IMOD Stock/M203)", "rhs_weap_m16a4_imod_M203", 600],
	["M16A4 (IMOD Stock)", "rhs_weap_m16a4_imod", 600],
	["M16A4", "rhs_weap_m16a4", 600],
	["M27 IAR (KAC Grip)", "rhs_weap_m27iar_grip", 650],
	["M27 IAR", "rhs_weap_m27iar", 650],
	["Mk 11 Mod 0 (Desert)", "rhs_weap_sr25_d", 650],
	["Mk 11 Mod 0 (EC/Desert)", "rhs_weap_sr25_ec_d", 650],
	["Mk 11 Mod 0 (EC/Woodland)", "rhs_weap_sr25_ec_wd", 650],
	["Mk 11 Mod 0 (EC)", "rhs_weap_sr25_ec", 650],
	["Mk 11 Mod 0 (Woodland)", "rhs_weap_sr25_wd", 650],
	["Mk 11 Mod 0", "rhs_weap_sr25", 650],
	["Mk 17 Mod 0 (CQC)", "rhs_weap_mk17_CQC", 650],
	["Mk 17 Mod 0 (LB)", "rhs_weap_mk17_LB", 650],
	["Mk 17 Mod 0 (STD)", "rhs_weap_mk17_STD", 650],
	["Mk 18 Mod 1 (Black Rail)", "rhs_weap_mk18_bk", 650],
	["Mk 18 Mod 1 (Desert)", "rhs_weap_mk18_d", 650],
	["Mk 18 Mod 1 (Black Rail/SOPMOD Stock)", "rhs_weap_mk18_KAC_bk", 650],
	["Mk 18 Mod 1 (Desert/SOPMOD Stock)", "rhs_weap_mk18_KAC_d", 650],
	["Mk 18 Mod 1 (Woodland/SOPMOD Stock)", "rhs_weap_mk18_KAC_wd", 650],
	["Mk 18 Mod 1 (SOPMOD Stock)", "rhs_weap_mk18_KAC", 650],
	["Mk 18 Mod 1 (M320)", "rhs_weap_mk18_m320", 650],
	["Mk 18 Mod 1 (Woodland)", "rhs_weap_mk18_wd", 650],
	["Mk 18 Mod 1", "rhs_weap_mk18", 650],
	["M32 MGL", "rhs_weap_m32", 1000],
	//RHSAFRF
	["AK103","rhs_weap_ak103", 600],
	["AK103-1","rhs_weap_ak103_1", 600],
	["AK103-2","rhs_weap_ak103_2", 600],
	["AK103 (GP25)","rhs_weap_ak103_gp25", 600],
	["AK103 (GP25/B-13)","rhs_weap_ak103_gp25_npz", 600],
	["AK103 (B-13)","rhs_weap_ak103_npz", 600],
	["AK104","rhs_weap_ak104", 600],
	["AK104 (B-13)","rhs_weap_ak104_npz", 600],
	["AK105","rhs_weap_ak105", 600],
	["AK105 (B-13)","rhs_weap_ak105_npz", 600],
	["AK74","rhs_weap_ak74m", 600],
	["AK74M 2-MAG","rhs_weap_ak74m_2mag", 600],
	["AK74M (Green)","rhs_weap_ak74m_2mag_camo", 600],
	["AK74M 2-MAG (B-13)","rhs_weap_ak74m_2mag_npz", 600],
	["AK74M (Green)","rhs_weap_ak74m_camo", 600],
	["AK74M Folded (Green)","rhs_weap_ak74m_camo_folded", 600],
	["AK74M (B-13/Green)","rhs_weap_ak74m_camo_npz", 600],
	["AK74M (Desert)","rhs_weap_ak74m_desert", 600],
	["AK74M Folded (Desert)","rhs_weap_ak74m_desert_folded", 600],
	["AK74M (B-13/Desert)","rhs_weap_ak74m_desert_npz", 600],
	["AK74M Folded","rhs_weap_ak74m_folded", 600],
	["AK74M (GP25)","rhs_weap_ak74m_gp25", 600],
	["AK74M (GP25/B-13)","rhs_weap_ak74m_gp25_npz", 600],
	["AK74M (B-13)","rhs_weap_ak74m_npz", 600],
	["AK74M (PLUM)","rhs_weap_ak74m_plummag", 600],
	["AK74M Folded (PLUM)","rhs_weap_ak74m_plummag_folded", 600],
	["AK74M (B-13/PLUM)","rhs_weap_ak74m_plummag_npz", 600],
	["AKM","rhs_weap_akm", 600],
	["AKM (GP25)","rhs_weap_akm_gp25", 600],
	["AKM S","rhs_weap_akms", 600],
	["AKM S (GP25)","rhs_weap_akms_gp25", 600],
	["AS Val","rhs_weap_asval", 600],
	["AS Val (Grip)","rhs_weap_asval_grip", 600],
	["AS Val (B-13)","rhs_weap_asval_npz", 600],
	["AS Val (Grip/B-13)","rhs_weap_asval_grip_npz", 600],
	["AKS-74U Carbine", "arifle_AKS_F", 550],
	["AKM Rifle", "arifle_AKM_F", 600],
	["AKU-12 Carbine", "arifle_AK12U_F", 600],
	["AKU-12 Carbine (Arid)", "arifle_AK12U_arid_F", 600],
	["AKU-12 Carbine (Lush)", "arifle_AK12U_lush_F", 600],
	["AK-12 Rifle", "arifle_AK12_F", 650],
	["AK-12 Rifle (Arid)", "arifle_AK12_arid_F", 650],
	["AK-12 Rifle (Lush)", "arifle_AK12_lush_F", 650],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 700],
	["AK-12 GL Rifle (Arid)", "arifle_AK12_GL_arid_F", 700],
	["AK-12 GL Rifle (Lush)", "arifle_AK12_GL_lush_F", 700],
	//BWMod
	["G27", "BWA3_G27", 600],
	["G27 (Tan)", "BWA3_G27_tan", 600],
	["G27 AG40", "BWA3_G27_AG40", 600],
	["G27 AG40 (Tan)", "BWA3_G27_AG40_tan", 600],
	["G28", "BWA3_G28", 600],
	["G29", "BWA3_G29", 600],
	["G36A1", "BWA3_G36A1", 600],
	["G36A1 (Green)", "BWA3_G36A1_green", 600],
	["G36A1 (Tan)", "BWA3_G36A1_tan", 600],
	["G36A1 AG40-2", "BWA3_G36A1_AG40", 600],
	["G36A1 AG40-2 (Green)", "BWA3_G36A1_AG40_green", 600],
	["G36A1 AG40-2 (Tan)", "BWA3_G36A1_AG40_tan", 600],
	["G36A2", "BWA3_G36A2", 600],
	["G36A2 (Green)", "BWA3_G36A2_green", 600],
	["G36A2 (Tan)", "BWA3_G36A2_tan", 600],
	["G36A2 AG40-2", "BWA3_G36A2_AG40", 600],
	["G36A2 AG40-2 (Green)", "BWA3_G36A2_AG40_green", 600],
	["G36A2 AG40-2 (Tan)", "BWA3_G36A2_AG40_tan", 600],
	["G36A3", "BWA3_G36A3", 600],
	["G36A3 (Green)", "BWA3_G36A3_green", 600],
	["G36A3 (Tan)", "BWA3_G36A3_tan", 600],
	["G36A3 AG40-2", "BWA3_G36A3_AG40", 600],
	["G36A3 AG40-2 (Green)", "BWA3_G36A3_AG40_green", 600],
	["G36A3 AG40-2 (Tan)", "BWA3_G36A3_AG40_tan", 600],
	["G36KA0", "BWA3_G36KA0", 600],
	["G36KA0 (Green)", "BWA3_G36KA0_green", 600],
	["G36KA0 (Tan)", "BWA3_G36KA0_tan", 600],
	["G36KA1", "BWA3_G36KA1", 600],
	["G36KA1 (Green)", "BWA3_G36KA1_green", 600],
	["G36KA1 (Tan)", "BWA3_G36KA1_tan", 600],
	["G36KA2", "BWA3_G36KA2", 600],
	["G36KA2 (Green)", "BWA3_G36KA2_green", 600],
	["G36KA2 (Tan)", "BWA3_G36KA2_tan", 600],
	["G36KA3", "BWA3_G36KA3", 600],
	["G36KA3 (Green)", "BWA3_G36KA3_green", 600],
	["G36KA3 (Tan)", "BWA3_G36KA3_tan", 600],
	["G36KA4", "BWA3_G36KA4", 600],
	["G36KA4 (Green)", "BWA3_G36KA4_green", 600],
	["G36KA4 (Tan)", "BWA3_G36KA4_tan", 600],
	["G38", "BWA3_G38", 600],
	["G38 (Tan)", "BWA3_G38_tan", 600],
	["G38 AG40-2", "BWA3_G38_AG40", 600],
	["G38 AG40-2 (Tan)", "BWA3_G38_AG40_tan", 600],
	["G38C", "BWA3_G38C", 600],
	["G38C (Tan)", "BWA3_G38C_tan", 600],
	["G38K", "BWA3_G38K", 600],
	["G38K (Tan)", "BWA3_G38K_tan", 600],
	["G38K AG40-2", "BWA3_G38K_AG40", 600],
	["G38K AG40-2 (Tan)", "BWA3_G38K_AG40_tan", 600],
	//
	["Promet Rifle", "arifle_MSBS65_F", 600, "noDLC"],
	["Promet Rifle (Black)", "arifle_MSBS65_black_F", 600, "noDLC"],
	["Promet Rifle (Camo)", "arifle_MSBS65_camo_F", 600, "noDLC"],
	["Promet Rifle (Sand)", "arifle_MSBS65_sand_F", 600, "noDLC"],
	["Promet GL Rifle", "arifle_MSBS65_GL_F", 650, "noDLC"],
	["Promet GL Rifle (Black)", "arifle_MSBS65_GL_black_F", 650, "noDLC"],
	["Promet GL Rifle (Camo)", "arifle_MSBS65_GL_camo_F", 650, "noDLC"],
	["Promet GL Rifle (Sand)", "arifle_MSBS65_GL_sand_F", 650, "noDLC"],
	["Promet SG Rifle", "arifle_MSBS65_UBS_F", 650, "noDLC"],
	["Promet SG Rifle (Black)", "arifle_MSBS65_UBS_black_F", 650, "noDLC"],
	["Promet SG Rifle (Camo)", "arifle_MSBS65_UBS_camo_F", 650, "noDLC"],
	["Promet SG Rifle (Sand)", "arifle_MSBS65_UBS_sand_F", 650, "noDLC"]
];

sniperArray = compileFinal str
[
	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 900, "noDLC"],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 900, "noDLC"],
	["Mk14 Rifle (Classic)", "srifle_DMR_06_hunter_F", 900, "noDLC"],
	["Mk18 ABR Rifle", "srifle_EBR_F", 950],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 1000],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 1250],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 1250],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 1250],

	["Promet MR Rifle", "arifle_MSBS65_Mark_F", 700, "noDLC"],
	["Promet MR Rifle (Black)", "arifle_MSBS65_Mark_black_F", 700, "noDLC"],
	["Promet MR Rifle (Camo)", "arifle_MSBS65_Mark_camo_F", 700, "noDLC"],
	["Promet MR Rifle (Sand)", "arifle_MSBS65_Mark_sand_F", 700, "noDLC"],
	["MXM Rifle", "arifle_MXM_F", 700],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 700],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 700, "noDLC"],
	["CMR-76 Stealth Rifle", "srifle_DMR_07_blk_F", 1000],
	["CMR-76 Stealth Rifle (Hex)", "srifle_DMR_07_hex_F", 1000],
	["CMR-76 Stealth Rifle (G Hex)", "srifle_DMR_07_ghex_F", 1000],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 1050],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 1050],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 1050],

	["Mk-I EMR Rifle", "srifle_DMR_03_F", 1500],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 1500],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 1500],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 1500],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 1500],
	["MAR-10 Rifle", "srifle_DMR_02_F", 1250],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 1250],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 1250],
	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 1250],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 1250],
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 3000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 3200],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_LRPS_F", 3200, "noDLC"],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 3250],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 3500],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_LRPS_F", 3500, "noDLC"],
	// RHS
	["M107 (Desert)", "rhs_weap_M107_d", 6000],  // M107 (Desert)
  ["M107 (Woodland)", "rhs_weap_M107_w", 6000], // M107 (Woodland)
  ["M107", "rhs_weap_M107", 6000],  // M107
	["M24 SWS (Desert)", "rhs_weap_m24sws_d", 1250], // M24 SWS (Desert)
  ["M24 SWS (Woodland)", "rhs_weap_m24sws_wd", 1250], // M24 SWS (Woodland)
  ["M24 SWS", "rhs_weap_m24sws", 1250],  // M24 SWS
	["M40A5 (Desert)", "rhs_weap_m40a5_d", 1250],  // M40A5 (Desert)
  ["M40A5 (Woodland)", "rhs_weap_m40a5_wd", 1250], // M40A5 (Woodland)
  ["M40A5", "rhs_weap_m40a5", 1250],  // M40A5
	["M2010 ESR (Desert)", "rhs_weap_XM2010_d", 3000], // M2010 ESR (Desert)
  ["M2010 ESR (Semi-arid)", "rhs_weap_XM2010_sa", 3000], // M2010 ESR (Semi-arid)
  ["M2010 ESR (Camo)", "rhs_weap_XM2010_wd", 3000], // M2010 ESR (Camo)
  ["M2010 ESR", "rhs_weap_XM2010", 3000],  // M2010 ESR
	["SVDP", "rhs_weap_svdp", 1250],
	["SVDP (Rail)","rhs_weap_svdp_npz", 1250],
	["SVDP (Woodland)","rhs_weap_svdp_wd", 1250],
	["SVDP (Rail/Woodland)","rhs_weap_svdp_wd_npz", 1250],
	["SVDS","rhs_weap_svds", 1250],
	["SVDS (Rail)","rhs_weap_svds_npz", 1250],
	//BWMod
	["G82", "BWA3_G82", 3000]  // M2010 ESR
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 1300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 1325],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 1325, "noDLC"],
	["Mk200 LMG", "LMG_Mk200_F", 1400],
	["Mk200 LMG (Black)", "LMG_Mk200_black_F", 1400, "noDLC"],
	["Zafir LMG", "LMG_Zafir_F", 1500],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 1300],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 1300],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 1300],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 1300],
	["CAR-95-1 LMG (Hex)", "arifle_CTARS_hex_F", 1300],
	["CAR-95-1 LMG (G Hex)", "arifle_CTARS_ghex_F", 1300],
	["LIM-85 LMG", "LMG_03_F", 1350],

	["RPK-12 LMG", "arifle_RPK12_F", 1500],
	["RPK-12 LMG (Arid)", "arifle_RPK12_arid_F", 1500],
	["RPK-12 LMG (Lush)", "arifle_RPK12_lush_F", 1500],

	["SPMG MMG (Sand)", "MMG_02_sand_F", 2750],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 2750],
	["SPMG MMG (Black)", "MMG_02_black_F", 2750],
	["Navid MMG (Tan)", "MMG_01_tan_F", 3000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 3000],
	//RHS
	["M240B", "rhs_weap_m240B", 3000],  // M240B
  ["M240G", "rhs_weap_m240G", 3000],  // M240G
	["M249 PIP (Long/Ltwt.)", "rhs_weap_m249_light_L", 3000],  // M249 PIP (Long/Ltwt.)
  ["M249 PIP (Short/Ltwt.)", "rhs_weap_m249_light_S", 3000], // M249 PIP (Short/Ltwt.)
  ["M249 PIP (Long/Para)", "rhs_weap_m249_pip_L_para", 3000], // M249 PIP (Long/Para)
  ["M249 PIP (Long/Savit)", "rhs_weap_m249_pip_L", 3000],  // M249 PIP (Long/Savit)
  ["M249 PIP (RIS)", "rhs_weap_m249_pip_ris", 3000],  // M249 PIP (RIS)
  ["M249 PIP (Short/Para)", "rhs_weap_m249_pip_S_para", 3000], // M249 PIP (Short/Para)
  ["M249 PIP (Short/Savit)", "rhs_weap_m249_pip_S", 3000], // M249 PIP (Short/Savit)
  ["M249 PIP", "rhs_weap_m249_pip", 3000], // M249 PIP
  ["M249", "rhs_weap_m249", 3000], // M249
	["PKM","rhs_weap_pkm", 2000],
	["PKP","rhs_weap_pkp", 2000],
	//BWMod
	["MG3","BWA3_MG3", 2000],
	["MG4","BWA3_MG4", 2000],
	["MG5","BWA3_MG5", 2000],
	["MG5 (Tan)","BWA3_MG5_tan", 2000]
];

launcherArray = compileFinal str
[
	["RPG-7", "launch_RPG7_F", 2000],
	["RPG-42 Alamut", "launch_RPG32_F", 2250],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 2250, "noDLC"],
	["RPG-42 Alamut (Green)", "launch_RPG32_green_F", 2250, "noDLC"],
	["PCML", "launch_NLAW_F", 2750],
	["MAAWS Mk4 Mod 0 (Green)", "launch_MRAWS_green_rail_F", 2500, "noDLC"], // RPG-42 and MAAWS are similar, but MAAWS has longer range
	["MAAWS Mk4 Mod 0 (Olive)", "launch_MRAWS_olive_rail_F", 2500, "noDLC"],
	["MAAWS Mk4 Mod 0 (Sand)", "launch_MRAWS_sand_rail_F", 2500, "noDLC"],
	["MAAWS Mk4 Mod 1 (Green)", "launch_MRAWS_green_F", 3000, "noDLC"], // MAAWS Mod 1 has nightvision and laser rangefinder, while Mod 0 doesn't
	["MAAWS Mk4 Mod 1 (Olive)", "launch_MRAWS_olive_F", 3000, "noDLC"],
	["MAAWS Mk4 Mod 1 (Sand)", "launch_MRAWS_sand_F", 3000, "noDLC"],
	["9M135 Vorona (Brown)", "launch_O_Vorona_brown_F", 4500, "noDLC"],
	["9M135 Vorona (Green)", "launch_O_Vorona_green_F", 4500, "noDLC"],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 4250],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 4250],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 4250],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 4250, "noDLC"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 4250, "noDLC"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 3500],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 3500],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 3500],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 3500, "noDLC"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 3500, "noDLC"],
	["Titan MPRL AA (Geometric)", "launch_I_Titan_eaf_F", 3500, "noDLC"],
	//RHS
	["FGM-148 Javelin", "rhs_weap_fgm148", 3500],  // FGM-148 Javelin
  ["FIM-92F", "rhs_weap_fim92", 3500],  // FIM-92F
	["M136 (HEDP)", "rhs_weap_M136_hedp", 2000],  // M136 (HEDP)
  ["M136 (HP)", "rhs_weap_M136_hp", 2000], // M136 (HP)
  ["M136 (HEAT)", "rhs_weap_M136", 2000],  // M136 (HEAT)
	["M72A7", "rhs_weap_m72a7", 2000], // M72A7
	["M3 MAAWS", "rhs_weap_maaws", 2500], // M3 MAAWS
	["MK153 Mod 0 SMAW (Green)", "rhs_weap_smaw_green", 2500], // MK153 Mod 0 SMAW (Green)
  ["MK153 Mod 0 SMAW (Black)", "rhs_weap_smaw", 2500], // MK153 Mod 0 SMAW (Black)
	["9K38 Igla","rhs_weap_igla", 2000],
	["RGP-26","rhs_weap_rpg26", 2000],
	["RPG-7","rhs_weap_rpg7", 2000],
	["RSHG-2","rhs_weap_rshg2", 2000],
	//BWMod
	["Bunkerfaust","BWA3_Bunkerfaust_Loaded", 2000],
	["Panzerfaust 3","BWA3_PzF3_Tandem_Loaded", 2000],
	["Fliegerfaust","BWA3_Fliegerfaust", 2000],
	["Leuchtbüchse 84 mm","BWA3_CarlGustav", 2000],
	["RGW 90","BWA3_RGW90", 2000]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call sniperArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 9000], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 9000],
	["Static Titan AT 4Rnd", "I_static_AT_F", 9000],
	["Static Titan AA 4Rnd", "B_static_AA_F", 7500],
	["Static Titan AA 4Rnd", "O_static_AA_F", 7500],
	["Static Titan AA 4Rnd", "I_static_AA_F", 7500],
	["M2 HMG .50", "B_G_HMG_02_F", 4000],
	["M2 HMG .50", "O_G_HMG_02_F", 4000],
	["M2 HMG .50", "I_G_HMG_02_F", 4000],
	["M2 HMG .50 (Raised)", "B_G_HMG_02_high_F", 4200],
	["M2 HMG .50 (Raised)", "O_G_HMG_02_high_F", 4200],
	["M2 HMG .50 (Raised)", "I_G_HMG_02_high_F", 4200],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 5000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 5000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 5000],
	["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 15000],
	["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 15000],
	["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 15000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 5500],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 5500],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 5500],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 7500],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 7500],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 7500],
	["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 20000],
	["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 20000],
	["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 20000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 10000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 10000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 10000],
	["Mk6 Mortar", "B_Mortar_01_F", 25000],
	["Mk6 Mortar", "O_Mortar_01_F", 25000],
	["Mk6 Mortar", "I_Mortar_01_F", 25000],
	["MRS120 120mm Mortar", "BWA3_MRS120_Fleck", 25000],
	["2B14-1 'Podnos' Mortar", "rhs_2b14_82mm_vmf", 25000],
	//RHS
	["ZU-23-2", "RHS_ZU23_MSV", 22000],
	["SPG-9M Low tripod", "rhs_SPG9M_MSV", 10000],
	["NSV (6T7) Low tripod", "RHS_NSV_TriPod_MSV", 10000],
	["KORD 6U16 High tripod", "rhs_KORD_high_MSV", 12000],
	["KORD 6U16 Low tripod", "rhs_KORD_MSV", 12000],
	["AGS-30 Low tripod", "RHS_AGS30_TriPod_MSV", 12000],
	["9K38 AA Seat", "rhs_Igla_AA_pod_msv", 12000],
	["9K133-1 Kornet Low tripod", "rhs_Kornet_9M133_2_msv", 10000],
	["9k115-2 Metis", "rhs_Metis_9k115_2_msv", 10000],

	["M119 Howitzer", "RHS_M119_D", 45000],
	["2A18M (D-30A) Artillery", "rhs_D30_vmf", 45000],
	["TOW tripod", "RHS_TOW_TriPod_WD", 10000],
	["M2 .50 High tripod", "RHS_M2StaticMG_WD", 10000],
	["MK19 Low tripod", "RHS_MK19_TriPod_WD", 12000],
	["MG3 Low tripod", "rnt_mg3_static", 10000],
	["Milan AT Low tripod", "Redd_Milan_Static", 12000]
];

throwputArray = compileFinal str
[
	["RGN Mini Grenade", "MiniGrenade", 150],
	["RGO Frag Grenade", "HandGrenade", 200],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 400],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 420],
	["APERS Mine", "APERSMine_Range_Mag", 450],
	["APERS Mine Dispenser", "APERSMineDispenser_Mag", 2000],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 475],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 650],
	["AT Mine", "ATMine_Range_Mag", 700],
	["Explosive Charge", "DemoCharge_Remote_Mag", 750],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 1000],
	["Smoke Grenade (White)", "SmokeShell", 150],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 150],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 150],
	["Smoke Grenade (Green)", "SmokeShellGreen", 150],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 150],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 150],
	["Smoke Grenade (Red)", "SmokeShellRed", 150],
	["Small IED (Urban)", "IEDUrbanSmall_Remote_Mag", 2000],
	["Large IED (Urban)", "IEDUrbanBig_Remote_Mag", 2500],
	["Chemlight (Blue)", "Chemlight_blue", 75],
	["Chemlight (Green)", "Chemlight_green", 75],
	["Chemlight (Yellow)", "Chemlight_yellow", 75],
	["Chemlight (Red)", "Chemlight_red", 75],
	["IR Designator Grenade", "B_IR_Grenade", 100, "WEST"],
	["IR Designator Grenade", "O_IR_Grenade", 100, "EAST"],
	["IR Designator Grenade", "I_IR_Grenade", 100, "GUER"],
	//RHS
	["M14", "rhsusf_mine_m14_mag", 150],               // M14
  ["M49A1 (10m)", "rhsusf_mine_m49a1_10m_mag", 150],         // M49A1 (10m)
  ["M49A1 (3m)", "rhsusf_mine_m49a1_3m_mag", 150],          // M49A1 (3m)
  ["M49A1 (6m)", "rhsusf_mine_m49a1_6m_mag", 150],          // M49A1 (6m)
	["M67 Fragmentation Grenade", "rhs_mag_m67", 60], // M67 Fragmentation Grenade
	["M69 Practice Grenade", "rhs_mag_m69", 20], // M69 Practice Grenade
	["M7A3 CS Gas Grenade", "rhs_mag_m7a3_cs", 60],                   // M7A3 CS Gas Grenade
	["M19", "rhs_mine_M19_mag", 150],                  // M19
	["AN-M14 TH3 Invendenary Grenade", "rhs_mag_an_m14_th3", 60],                   // AN-M14 TH3 Invendenary Grenade
  ["AN-M8HC White Smooke", "rhs_mag_an_m8hc", 60],                   // AN-M8HC White Smooke
  ["M18 Green Smoke Grenade", "rhs_mag_m18_green", 60],                 // M18 Green Smoke Grenade
  ["M18 Purple Smoke Grenade", "rhs_mag_m18_purple", 60],                // M18 Purple Smoke Grenade
  ["M18 Red Smoke Grenade", "rhs_mag_m18_red", 60],                   // M18 Red Smoke Grenade
  ["M18 Yellow Smoke Grenade", "rhs_mag_m18_yellow", 60],                // M18 Yellow Smoke Grenade
	["MK3A2 Concussion Grenade", "rhs_mag_mk3a2", 60],                     // MK3A2 Concussion Grenade
  ["M84 Stun Grenade", "rhs_mag_mk84", 60],// M84 Stun Grenade
	//BWMod
	["DM51A1 Frag Grenade", "BWA3_DM51A1", 150],
	["DM25 Smoke Grenade (white)", "BWA3_DM25", 150],
	["DM32A2B1 (orange)", "BWA3_DM32_Orange", 150],
	["DM32A2B1 (yellow)", "BWA3_DM32_Yellow", 150],
	["DM32A2B1 (green)", "BWA3_DM32_Green", 150],
	["DM32A2B1 (red)", "BWA3_DM32_Red", 150],
	["DM32A2B1 (purple)", "BWA3_DM32_Purple", 150],
	["DM32A2B1 (blue)", "BWA3_DM32_Blue", 150]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 10Rnd Mag", "10Rnd_9x21_Mag", 25],
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 30],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 35],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 35],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 25],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 30],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 35],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 40],
	[".45 ACP 30Rnd Vermin Mag T-G", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 35],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 70],
	["5.45mm 30Rnd Mag T-Y", "30Rnd_545x39_Mag_Tracer_F", 75],
	["5.45mm 30Rnd Mag T-R", "30Rnd_545x39_Mag_Tracer_Green_F", 75],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 90],
	["5.56mm 30Rnd Mag", "30Rnd_556x45_Stanag", 70],
	["5.56mm 30Rnd Mag T-G", "30Rnd_556x45_Stanag_Tracer_Green", 75],
	["5.56mm 30Rnd Mag T-Y", "30Rnd_556x45_Stanag_Tracer_Yellow", 75],
	["5.56mm 30Rnd Mag T-R", "30Rnd_556x45_Stanag_Tracer_Red", 75],
	["5.56mm 30Rnd Mag (Sand)", "30Rnd_556x45_Stanag_Sand", 75],
	["5.56mm 30Rnd Mag (Sand) T-G", "30Rnd_556x45_Stanag_Sand_Tracer_Green", 70],
	["5.56mm 30Rnd Mag (Sand) T-Y", "30Rnd_556x45_Stanag_Sand_Tracer_Yellow", 70],
	["5.56mm 30Rnd Mag (Sand) T-R", "30Rnd_556x45_Stanag_Sand_Tracer_Red", 70],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 100],
	["5.56mm 150Rnd Mag T-R", "150Rnd_556x45_Drum_Mag_Tracer_F", 185],
	["5.56mm 150Rnd Mag (Khaki)", "150Rnd_556x45_Drum_Green_Mag_F", 110],
	["5.56mm 150Rnd Mag (Khaki) T-R", "150Rnd_556x45_Drum_Green_Mag_Tracer_F", 185],
	["5.56mm 150Rnd Mag (Sand)", "150Rnd_556x45_Drum_Sand_Mag_F", 110],
	["5.56mm 150Rnd Mag (Sand) T-R", "150Rnd_556x45_Drum_Sand_Mag_Tracer_F", 185],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 225],
	["5.56mm 200Rnd Box T-Y", "200Rnd_556x45_Box_Tracer_F", 200],
	["5.56mm 200Rnd Box T-R", "200Rnd_556x45_Box_Tracer_Red_F", 200],
	["5.7mm 50Rnd Mag", "50Rnd_570x28_SMG_03", 80],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 80],
	["5.8mm 30Rnd Mag T-G", "30Rnd_580x42_Mag_Tracer_F", 85],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 200],
	["5.8mm 100Rnd Mag T-G", "100Rnd_580x42_Mag_Tracer_F", 275],
	["5.8mm 100Rnd Mag (Hex)", "100Rnd_580x42_hex_Mag_F", 210],
	["5.8mm 100Rnd Mag (Hex) T-G", "100Rnd_580x42_hex_Mag_Tracer_F", 285],
	["5.8mm 100Rnd Mag (G Hex)", "100Rnd_580x42_ghex_Mag_F", 210],
	["5.8mm 100Rnd Mag (G Hex) T-G", "100Rnd_580x42_ghex_Mag_Tracer_F", 285],
	["6.5mm 20Rnd CMR Mag", "20Rnd_650x39_Cased_Mag_F", 215],
	["6.5mm 30Rnd Promet Mag", "30Rnd_65x39_caseless_msbs_mag", 220],
	["6.5mm 30Rnd Promet Mag T-R", "30Rnd_65x39_caseless_msbs_mag_Tracer", 215],
	["6.5mm 30Rnd Katiba Mag", "30Rnd_65x39_caseless_green", 220],
	["6.5mm 30Rnd Katiba Mag T-G", "30Rnd_65x39_caseless_green_mag_Tracer", 215],
	["6.5mm 30Rnd MX Mag (Sand)", "30Rnd_65x39_caseless_mag", 220],
	["6.5mm 30Rnd MX Mag (Sand) T-R", "30Rnd_65x39_caseless_mag_Tracer", 215],
	["6.5mm 30Rnd MX Mag (Black)", "30Rnd_65x39_caseless_black_mag", 225],
	["6.5mm 30Rnd MX Mag (Black) T-R", "30Rnd_65x39_caseless_black_mag_Tracer", 225],
	["6.5mm 30Rnd MX Mag (Khaki)", "30Rnd_65x39_caseless_khaki_mag", 225],
	["6.5mm 30Rnd MX Mag (Khaki) T-R", "30Rnd_65x39_caseless_khaki_mag_Tracer", 225],
	["6.5mm 100Rnd MX Mag (Sand)", "100Rnd_65x39_caseless_mag", 275],
	["6.5mm 100Rnd MX Mag (Sand) T-R", "100Rnd_65x39_caseless_mag_Tracer", 250],
	["6.5mm 100Rnd MX Mag (Black)", "100Rnd_65x39_caseless_black_mag", 285],
	["6.5mm 100Rnd MX Mag (Black) T-R", "100Rnd_65x39_caseless_black_mag_tracer", 260],
	["6.5mm 100Rnd MX Mag (Khaki)", "100Rnd_65x39_caseless_khaki_mag", 285],
	["6.5mm 100Rnd MX Mag (Khaki) T-R", "100Rnd_65x39_caseless_khaki_mag_tracer", 260],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 250],
	["6.5mm 200Rnd Belt Case T-Y", "200Rnd_65x39_cased_Box_Tracer", 225],
	["6.5mm 200Rnd Belt Case T-R", "200Rnd_65x39_cased_Box_Tracer_Red", 225],
	["7.62mm 10Rnd Rahim Mag", "10Rnd_762x54_Mag", 315],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 325],
	["7.62mm 30Rnd AKM Mag", "30Rnd_762x39_Mag_F", 320],
	["7.62mm 30Rnd AKM Mag T-Y", "30Rnd_762x39_Mag_Tracer_F", 315],
	["7.62mm 30Rnd AKM Mag T-G", "30Rnd_762x39_Mag_Tracer_Green_F", 315],
	["7.62mm 30Rnd AK12 Mag", "30Rnd_762x39_AK12_Mag_F", 320],
	["7.62mm 30Rnd AK12 Mag T-Y", "30Rnd_762x39_AK12_Mag_Tracer_F", 315],
	["7.62mm 30Rnd AK12 Mag (Arid)", "30rnd_762x39_AK12_Arid_Mag_F", 325],
	["7.62mm 30Rnd AK12 Mag (Arid) T-Y", "30rnd_762x39_AK12_Arid_Mag_Tracer_F", 320],
	["7.62mm 30Rnd AK12 Mag (Lush)", "30rnd_762x39_AK12_Lush_Mag_F", 325],
	["7.62mm 30Rnd AK12 Mag (Lush) T-Y", "30rnd_762x39_AK12_Lush_Mag_Tracer_F", 320],
	["7.62mm 75Rnd AKM Mag", "75Rnd_762x39_Mag_F", 175],
	["7.62mm 75Rnd AKM Mag T-Y", "75Rnd_762x39_Mag_Tracer_F", 165],
	["7.62mm 75Rnd AK12 Mag", "75rnd_762x39_AK12_Mag_F", 175],
	["7.62mm 75Rnd AK12 Mag T-Y", "75rnd_762x39_AK12_Mag_Tracer_F", 165],
	["7.62mm 75Rnd AK12 Mag (Arid)", "75rnd_762x39_AK12_Arid_Mag_F", 180],
	["7.62mm 75Rnd AK12 Mag (Arid) T-Y", "75rnd_762x39_AK12_Arid_Mag_Tracer_F", 170],
	["7.62mm 75Rnd AK12 Mag (Lush)", "75rnd_762x39_AK12_Lush_Mag_F", 180],
	["7.62mm 75Rnd AK12 Mag (Lush) T-Y", "75rnd_762x39_AK12_Lush_Mag_Tracer_F", 170],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 350],
	["7.62mm 150Rnd Box T-G", "150Rnd_762x54_Box_Tracer", 325],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 250],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 950],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 150],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 1050],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 150],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 250],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 260],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 275],
	["12 Gauge 2Rnd Pellets", "2Rnd_12Gauge_Pellets", 65],
	["12 Gauge 2Rnd Slug", "2Rnd_12Gauge_Slug", 65],
	["12 Gauge 6Rnd Pellets", "6Rnd_12Gauge_Pellets", 90],
	["12 Gauge 6Rnd Slug", "6Rnd_12Gauge_Slug", 100],
	["Signal Flares (Green)", "6Rnd_GreenSignal_F", 45],
	["Signal Flares (Red)", "6Rnd_RedSignal_F", 45],
	///RHSAFRF
	["30rnd 545x39 AK", "rhs_30Rnd_545x39_AK", 200],
	["30rnd 545x39 AK no tracers", "rhs_30Rnd_545x39_AK_no_tracers", 200],
	["30rnd 545x39 AK Green", "rhs_30Rnd_545x39_AK_green", 200200],
	["30rnd 545x39 7N10 AK", "rhs_30Rnd_545x39_7N10_AK", 200],
	["30rnd 545x39 7N22 AK", "rhs_30Rnd_545x39_7N22_AK", 200],
	["30rnd 545x39 7U1 AK", "rhs_30Rnd_545x39_7U1_AK", 200],
	["45rnd 545X39 7N22 AK", "rhs_45Rnd_545X39_7N22_AK", 200],
	["45rnd 545X39 7N10 AK", "rhs_45Rnd_545X39_7N10_AK", 200],
	["45rnd 545X39 Green", "rhs_45Rnd_545X39_AK_Green", 200],
	["45rnd 545X39", "rhs_45Rnd_545X39_AK", 200],
	["45rnd 545X39 7U1 AK", "rhs_45Rnd_545X39_7U1_AK", 200],
	["30rnd 762x39mm", "rhs_30Rnd_762x39mm", 200],
	["30rnd 762x39mm (Tracer)", "rhs_30Rnd_762x39mm_tracer", 200],
	["30rnd 762x39mm 89", "rhs_30Rnd_762x39mm_89", 200],
	["30rnd 762x39mm U", "rhs_30Rnd_762x39mm_U", 200],
	["20rnd 9x39mm SP5", "rhs_20rnd_9x39mm_SP5", 200],
	["20rnd 9x39mm SP6", "rhs_20rnd_9x39mm_SP6", 200],
	["100rnd 762x54mmR","rhs_100Rnd_762x54mmR", 250],
	["100rnd 762x54mmR Green","rhs_100Rnd_762x54mmR_green", 250],
	["10Rnd 762x54mmR 7N1","rhs_10Rnd_762x54mmR_7N1", 100],
	["RPG-26 Ammo","rhs_rpg26_mag",100],
	["RPG-2 Ammo","rhs_rshg2_mag",100],
	["RPG-18 Ammo","rhs_rpg18_mag",100],
	["RPG-7 PG-7VL","rhs_rpg7_PG7VL_mag",250],
	["RPG-7 PG-7VR","rhs_rpg7_PG7VR_mag",250],
	["RPG-7 TBG-7V","rhs_rpg7_TBG7V_mag",250],
	["RPG-7 OG-7V","rhs_rpg7_OG7V_mag",250],
	["9k32 Rocket","rhs_mag_9k32_rocket",250],
	["9k38 Rocket","rhs_mag_9k38_rocket",250],
	["17rnd 9x19","rhs_mag_9x19_17", 30],
	["12rnd 9x18 57N181S","rhs_mag_9x18_12_57N181S", 30],
	//RHSUSF
	["Javelin AT", "rhs_fgm148_magazine_AT", 1700],
  ["FGM172A SRAW", "rhs_fgm172a_magazine_AT", 800],
  ["FGM172B SRAW-MPV", "rhs_fgm172b_magazine_MPV", 800],
  ["FIM-92F", "rhs_fim92_mag", 800],   // FIM-92F
  ["100rnd C-Mag M855 (Mixed)", "rhs_mag_100Rnd_556x45_M855_cmag_mixed", 250], // 100rnd C-Mag M855 (Mixed)
  ["100rnd C-Mag M855", "rhs_mag_100Rnd_556x45_M855_cmag", 250], // 100rnd C-Mag M855
  ["100rnd C-Mag M855A1 (Mixed)", "rhs_mag_100Rnd_556x45_M855A1_cmag_mixed", 250], // 100rnd C-Mag M855A1 (Mixed)
  ["100rnd C-Mag M855A1", "rhs_mag_100Rnd_556x45_M855A1_cmag", 250], // 100rnd C-Mag M855A1
  ["100rnd C-Mag Mk262 Mod 1", "rhs_mag_100Rnd_556x45_Mk262_cmag", 250],  // 100rnd C-Mag Mk262 Mod 1
  ["100rnd C-Mag Mk262 Mod 0", "rhs_mag_100Rnd_556x45_Mk318_cmag", 250],  // 100rnd C-Mag Mk262 Mod 0
  ["20rnd STANAG (2x) M193", "rhs_mag_20Rnd_556x45_M193_2MAG_Stanag", 200], // 20rnd STANAG (2x) M193
  ["20rnd STANAG M193", "rhs_mag_20Rnd_556x45_M193_Stanag", 200],  // 20rnd STANAG M193
  ["20rnd STANAG (2x) M196 (Tracer)", "rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red", 200],  // 20rnd STANAG (2x) M196 (Tracer)
  ["20rnd STANAG M196 (Tracer)", "rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red", 200],  // 20rnd STANAG M196 (Tracer)
  ["20rnd STANAG M200 (Blank)", "rhs_mag_20Rnd_556x45_M200_Stanag", 200],  // 20rnd STANAG M200 (Blank)
  ["20rnd STANAG M855", "rhs_mag_20Rnd_556x45_M855_Stanag", 200],  // 20rnd STANAG M855
  ["20rnd STANAG M855A1", "rhs_mag_20Rnd_556x45_M855A1_Stanag", 200],  // 20rnd STANAG M855A1
  ["20rnd STANAG Mk262 Mod 1", "rhs_mag_20Rnd_556x45_Mk262_Stanag", 200], // 20rnd STANAG Mk262 Mod 1
  ["20rnd SCAR M118 Ball", "rhs_mag_20Rnd_SCAR_762x51_m118_special", 200], // 20rnd SCAR M118 Ball
  ["20rnd SCAR M61 AP", "rhs_mag_20Rnd_SCAR_762x51_m61_ap", 200],  // 20rnd SCAR M61 AP
  ["20rnd SCAR M62 (Tracer)", "rhs_mag_20Rnd_SCAR_762x51_m62_tracer", 200], // 20rnd SCAR M62 (Tracer)
  ["20rnd SCAR M80", "rhs_mag_20Rnd_SCAR_762x51_m80_ball", 200], // 20rnd SCAR M80
  ["20rnd SCAR M80A1 EPR", "rhs_mag_20Rnd_SCAR_762x51_m80a1_epr", 200],  // 20rnd SCAR M80A1 EPR
  ["20rnd SCAR Mk316 Mod 0", "rhs_mag_20Rnd_SCAR_762x51_mk316_special", 200], // 20rnd SCAR Mk316 Mod 0
  ["30rnd STANAG M193", "rhs_mag_30Rnd_556x45_M193_Stanag", 240],  // 30rnd STANAG M193
  ["30rnd STANAG M196 (Tracer)", "rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red", 240],  // 30rnd STANAG M196 (Tracer)
  ["30rnd STANAG M200 (Blank)", "rhs_mag_30Rnd_556x45_M200_Stanag", 240],  // 30rnd STANAG M200 (Blank)
  ["30rnd PMAG M856 (Tracer)", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan_Tracer_Red", 240],  // 30rnd PMAG M856 (Tracer)
  ["30rnd PMAG M855", "rhs_mag_30Rnd_556x45_M855_PMAG_Tan", 240],  // 30rnd PMAG M855
  ["30rnd PMAG M856 (Tracer)", "rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red", 240], // 30rnd PMAG M856 (Tracer)
  ["30rnd PMAG M855", "rhs_mag_30Rnd_556x45_M855_PMAG", 240],    // 30rnd PMAG M855
  ["30rnd STANAG (Puller) M856 (Tracer)", "rhs_mag_30Rnd_556x45_M855_Stanag_Pull_Tracer_Red", 240],  // 30rnd STANAG (Puller) M856 (Tracer)
  ["30rnd STANAG (Puller) M855", "rhs_mag_30Rnd_556x45_M855_Stanag_Pull", 240],  // 30rnd STANAG (Puller) M855
  ["30rnd STANAG (Ranger) M856 (Tracer)", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red", 240], // 30rnd STANAG (Ranger) M856 (Tracer)
  ["30rnd STANAG (Ranger) M855", "rhs_mag_30Rnd_556x45_M855_Stanag_Ranger", 240],  // 30rnd STANAG (Ranger) M855
  ["30rnd STANAG M856 (Tracer)", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", 240], // 30rnd STANAG M856 (Tracer)
  ["30rnd STANAG M855", "rhs_mag_30Rnd_556x45_M855_Stanag", 240],  // 30rnd STANAG M855
  ["30rnd EPM (Puller) M855A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_EPM_Pull_Tracer_Red", 240], // 30rnd EPM (Puller) M855A1 (Tracer)
  ["30rnd EPM (Puller) M855A1", "rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", 240],                   // 30rnd EPM (Puller) M855A1
  ["30rnd EPM (Ranger) M855A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger_Tracer_Red", 240],                   // 30rnd EPM (Ranger) M855A1 (Tracer)
  ["30rnd EPM (Ranger) M855A1", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", 240],                   // 30rnd EPM (Ranger) M855A1
  ["30rnd EPM M855A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red", 240],                   // 30rnd EPM M855A1 (Tracer)
  ["30rnd EPM M855A1", "rhs_mag_30Rnd_556x45_M855A1_EPM", 240],                   // 30rnd EPM M855A1
  ["30rnd PMAG M856A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", 240],                   // 30rnd PMAG M856A1 (Tracer)
  ["30rnd PMAG M855A1", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", 240],                   // 30rnd PMAG M855A1
  ["30rnd PMAG M856A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 240],                   // 30rnd PMAG M856A1 (Tracer)
  ["30rnd PMAG M855A1", "rhs_mag_30Rnd_556x45_M855A1_PMAG", 240],                   // 30rnd PMAG M855A1
  ["30rnd STANAG (Puller) M856A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red", 240],                   // 30rnd STANAG (Puller) M856A1 (Tracer)
  ["30rnd STANAG (Puller) M855A1", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", 240],                   // 30rnd STANAG (Puller) M855A1
  ["30rnd STANAG (Ranger) M856A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red", 240],                   // 30rnd STANAG (Ranger) M856A1 (Tracer)
  ["30rnd STANAG (Ranger) M855A1", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", 240],                   // 30rnd STANAG (Ranger) M855A1
  ["30rnd STANAG M856A1 (Tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 240],                   // 30rnd STANAG M856A1 (Tracer)
  ["30rnd STANAG M855A1", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 240],                   // 30rnd STANAG M855A1
  ["30rnd PMAG Mk262 Mod 1", "rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", 240],                   // 30rnd PMAG Mk262 Mod 1
  ["30rnd PMAG Mk262 Mod 1", "rhs_mag_30Rnd_556x45_Mk262_PMAG", 240],                   // 30rnd PMAG Mk262 Mod 1
  ["30rnd STANAG (Puller) Mk262 Mod 1", "rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull", 240],                   // 30rnd STANAG (Puller) Mk262 Mod 1
  ["30rnd STANAG (Ranger) Mk262 Mod 1", "rhs_mag_30Rnd_556x45_Mk262_Stanag_Ranger", 240],                   // 30rnd STANAG (Ranger) Mk262 Mod 1
  ["30rnd STANAG Mk262 Mod 1", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 240],                   // 30rnd STANAG Mk262 Mod 1
  ["30rnd PMAG Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", 240],                   // 30rnd PMAG Mk318 Mod 0
  ["30rnd PMAG Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_PMAG", 240],                   // 30rnd PMAG Mk318 Mod 0
  ["30rnd SCAR (Puller) Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull", 240],                   // 30rnd SCAR (Puller) Mk318 Mod 0
  ["30rnd SCAR (Ranger) Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger", 240],                   // 30rnd SCAR (Ranger) Mk318 Mod 0
  ["30rnd SCAR Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_SCAR", 240],                   // 30rnd SCAR Mk318 Mod 0
  ["30rnd STANAG (Puller) Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_Stanag_Pull", 240],                   // 30rnd STANAG (Puller) Mk318 Mod 0
  ["30rnd STANAG (Ranger) Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_Stanag_Ranger", 240],                   // 30rnd STANAG (Ranger) Mk318 Mod 0
  ["30rnd STANAG Mk318 Mod 0", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 240],                   // 30rnd STANAG Mk318 Mod 0
  ["M397 HET Grenade Round", "rhs_mag_M397_HET", 80],                  // M397 HET Grenade Round
  ["GL Stun Grenade Round", "rhs_mag_m4009", 80],                     // GL Stun Grenade Round
  ["M433 HEDP Grenade Round", "rhs_mag_M433_HEDP", 80],                 // M433 HEDP Grenade Round
  ["M441 HE Grenade Round", "rhs_mag_M441_HE", 80],                   // M441 HE Grenade Round
  ["M576 Buckshot Round", "rhs_mag_m576", 60],// M576 Buckshot Round
  ["M585 White Flare Round", "rhs_mag_M585_white", 50],                // M585 White Flare Round
  ["M661 Green Flare Round", "rhs_mag_m661_green", 50],                // M661 Green Flare Round
  ["M662 Red Flare Round", "rhs_mag_m662_red", 50],                  // M662 Red Flare Round
  ["M713 Red Smoke Round", "rhs_mag_m713_Red", 50],                  // M713 Red Smoke Round
  ["M714 White Smoke Round", "rhs_mag_m714_White", 50],                // M714 White Smoke Round
  ["M715 Green Smoke Round", "rhs_mag_m715_Green", 50],                // M715 Green Smoke Round
  ["M716 Yellow Smoke Round", "rhs_mag_m716_yellow", 50],               // M716 Yellow Smoke Round
  ["M781 Practice Round", "rhs_mag_M781_Practice", 50],             // M781 Practice Round
	["FFV441 HE", "rhs_mag_maaws_HE", 800],                  // FFV441 HE
  ["FFV751 HEAT", "rhs_mag_maaws_HEAT", 800],                // FFV751 HEAT
  ["FFV502 HEDP", "rhs_mag_maaws_HEDP", 800],                // FFV502 HEDP
  ["Six-12 Slug", "rhs_mag_six12_slug", 800],                // Six-12 Slug
  ["Mk.6 HEAA", "rhs_mag_smaw_HEAA", 800],                 // Mk.6 HEAA
  ["Mk.3 HEDP", "rhs_mag_smaw_HEDP", 800],                 // Mk.3 HEDP
  ["Mk.217 Spotting", "rhs_mag_smaw_SR", 60],                   // Mk.217 Spotting
  ["100rnd M249 Softpack M855", "rhsusf_100Rnd_556x45_M200_soft_pouch_coyote", 250],                  // 100rnd M249 Softpack M855
  ["100rnd M249 Softpack M200", "rhsusf_100Rnd_556x45_M200_soft_pouch_ucp", 250],                     // 100rnd M249 Softpack M200
  ["100rnd M249 Softpack M200", "rhsusf_100Rnd_556x45_M200_soft_pouch", 250], // 100rnd M249 Softpack M200
  ["100rnd M249 Softpack M855 (Mixed)", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote", 250],                  // 100rnd M249 Softpack M855 (Mixed)
  ["100rnd M249 Softpack M855 (Mixed)", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_ucp", 250],                  // 100rnd M249 Softpack M855 (Mixed)
  ["100rnd M249 Softpack M855 (Mixed)", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch", 250],                   // 100rnd M249 Softpack M855 (Mixed)
  ["100rnd M249 Softpack M855", "rhsusf_100Rnd_556x45_M855_soft_pouch_coyote", 250],                  // 100rnd M249 Softpack M855
  ["100rnd M249 Softpack M855", "rhsusf_100Rnd_556x45_M855_soft_pouch_ucp", 250],                     // 100rnd M249 Softpack M855
  ["100rnd M249 Softpack M855", "rhsusf_100Rnd_556x45_M855_soft_pouch", 250], // 100rnd M249 Softpack M855
  ["100rnd M249 Softpack M855A1 (Mixed)", "rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote", 250],                  // 100rnd M249 Softpack M855A1 (Mixed)
  ["100rnd M249 Softpack M855A1 (Mixed)", "rhsusf_100Rnd_556x45_mixed_soft_pouch_ucp", 250],                    // 100rnd M249 Softpack M855A1 (Mixed)
  ["100rnd M249 Softpack M855A1 (Mixed)", "rhsusf_100Rnd_556x45_mixed_soft_pouch", 250],// 100rnd M249 Softpack M855A1 (Mixed)
  ["100rnd M249 Softpack M855A1", "rhsusf_100Rnd_556x45_soft_pouch_coyote", 250], // 100rnd M249 Softpack M855A1
  ["100rnd M249 Softpack M855A1", "rhsusf_100Rnd_556x45_soft_pouch_ucp", 250],  // 100rnd M249 Softpack M855A1
  ["100rnd M249 Softpack M855A1", "rhsusf_100Rnd_556x45_soft_pouch", 250],   // 100rnd M249 Softpack M855A1
  ["100rnd M240 Box M61 AP", "rhsusf_100Rnd_762x51_m61_ap", 250],       // 100rnd M240 Box M61 AP
  ["100rnd M240 Box M62 (Tracer)", "rhsusf_100Rnd_762x51_m62_tracer", 250],   // 100rnd M240 Box M62 (Tracer)
  ["100rnd M240 Box M80A1 EPR", "rhsusf_100Rnd_762x51_m80a1epr", 250],     // 100rnd M240 Box M80A1 EPR
  ["100rnd M240 Box M82 (Blank)", "rhsusf_100Rnd_762x51_m82_blank", 250],    // 100rnd M240 Box M82 (Blank)
  ["100rnd M240 Box M80", "rhsusf_100Rnd_762x51", 250],              // 100rnd M240 Box M80
  ["10rnd AICS M118", "rhsusf_10Rnd_762x51_m118_special_Mag", 250], // 10rnd AICS M118
  ["10rnd AICS M62 (Tracer)", "rhsusf_10Rnd_762x51_m62_Mag", 250],       // 10rnd AICS M62 (Tracer)
  ["10rnd AICS M993 AP", "rhsusf_10Rnd_762x51_m993_Mag", 250],      // 10rnd AICS M993 AP
  ["200rnd M249 Box M855A1", "rhsusf_200Rnd_556x45_box", 350],          // 200rnd M249 Box M855A1
  ["200rnd M249 Box M855", "rhsusf_200rnd_556x45_M855_box", 350],     // 200rnd M249 Box M855
  ["200rnd M249 Box M855 (Mixed)", "rhsusf_200rnd_556x45_M855_mixed_box", 350],  // 200rnd M249 Box M855 (Mixed)
  ["200rnd M249 Softpack M855 (Mixed)", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote", 350],                  // 200rnd M249 Softpack M855 (Mixed)
  ["200rnd M249 Softpack M855 (Mixed)", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_ucp", 350],                  // 200rnd M249 Softpack M855 (Mixed)
  ["200rnd M249 Softpack M855 (Mixed)", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch", 350],                   // 200rnd M249 Softpack M855 (Mixed)
  ["200rnd M249 Softpack M855", "rhsusf_200Rnd_556x45_M855_soft_pouch_coyote", 350],                  // 200rnd M249 Softpack M855
  ["200rnd M249 Softpack M855", "rhsusf_200Rnd_556x45_M855_soft_pouch_ucp", 350],                     // 200rnd M249 Softpack M855
  ["200rnd M249 Softpack M855", "rhsusf_200Rnd_556x45_M855_soft_pouch", 350], // 200rnd M249 Softpack M855
  ["200rnd M249 Box M855A1 (Mixed)", "rhsusf_200rnd_556x45_mixed_box", 350],    // 200rnd M249 Box M855A1 (Mixed)
  ["200rnd M249 Softpack M855A1 (Mixed)", "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote", 350],                  // 200rnd M249 Softpack M855A1 (Mixed)
  ["200rnd M249 Softpack M855A1 (Mixed)", "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp", 350],                    // 200rnd M249 Softpack M855A1 (Mixed)
  ["200rnd M249 Softpack M855A1 (Mixed)", "rhsusf_200Rnd_556x45_mixed_soft_pouch", 350],// 200rnd M249 Softpack M855A1 (Mixed)
  ["200rnd M249 Softpack M855A1", "rhsusf_200Rnd_556x45_soft_pouch_coyote", 350], // 200rnd M249 Softpack M855A1
  ["200rnd M249 Softpack M855A1", "rhsusf_200Rnd_556x45_soft_pouch_ucp", 350],  // 200rnd M249 Softpack M855A1
  ["200rnd M249 Softpack M855A1", "rhsusf_200Rnd_556x45_soft_pouch", 350],   // 200rnd M249 Softpack M855A1
  ["20rnd M14 M118", "rhsusf_20Rnd_762x51_m118_special_Mag", 200], // 20rnd M14 M118
  ["20rnd M14 M62 (Tracer)", "rhsusf_20Rnd_762x51_m62_Mag", 200],       // 20rnd M14 M62 (Tracer)
  ["20rnd M14 M993AP", "rhsusf_20Rnd_762x51_m993_Mag", 200],      // 20rnd M14 M993AP
  ["20rnd SR-25 M118", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", 200],                    // 20rnd SR-25 M118
  ["20rnd SR-25 M62 (Tracer)", "rhsusf_20Rnd_762x51_SR25_m62_Mag", 200],  // 20rnd SR-25 M62 (Tracer)
  ["20rnd SR-25 M993 AP", "rhsusf_20Rnd_762x51_SR25_m993_Mag", 200], // 20rnd SR-25 M993 AP
  ["20rnd SR-25 Mk316 Mod 0", "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", 200],                   // 20rnd SR-25 Mk316 Mod 0
  ["50rnd M240 Softpack M61 AP", "rhsusf_50Rnd_762x51_m61_ap", 200],        // 50rnd M240 Softpack M61 AP
  ["50rnd M240 Softpack M62 (Tracer)", "rhsusf_50Rnd_762x51_m62_tracer", 200],    // 50rnd M240 Softpack M62 (Tracer)
  ["50rnd M240 Softpack M80A1 EPR", "rhsusf_50Rnd_762x51_m80a1epr", 200],      // 50rnd M240 Softpack M80A1 EPR
  ["50rnd M240 Belt M82 (Blank)", "rhsusf_50Rnd_762x51_m82_blank", 200],     // 50rnd M240 Belt M82 (Blank)
  ["50rnd M240 Softpack M80", "rhsusf_50Rnd_762x51", 200],               // 50rnd M240 Softpack M80
  ["5Rnd .00 Buckshot", "rhsusf_5Rnd_00Buck", 90],                // 5Rnd .00 Buckshot
  ["5Rnd .300WM Mk248 MOD 1", "rhsusf_5Rnd_300winmag_xm2010", 90],      // 5Rnd .300WM Mk248 MOD 1
  ["5Rnd AICS M118", "rhsusf_5Rnd_762x51_AICS_m118_special_Mag", 90],                     // 5Rnd AICS M118
  ["5Rnd AICS M62 (Tracer)", "rhsusf_5Rnd_762x51_AICS_m62_Mag", 90],   // 5Rnd AICS M62 (Tracer)
  ["5Rnd AICS M993 AP", "rhsusf_5Rnd_762x51_AICS_m993_Mag", 90],  // 5Rnd AICS M993 AP
  ["5Rnd M118", "rhsusf_5Rnd_762x51_m118_special_Mag", 90],  // 5Rnd M118
  ["5Rnd M62 (Tracer)", "rhsusf_5Rnd_762x51_m62_Mag", 90],        // 5Rnd M62 (Tracer)
  ["5Rnd M993 AP", "rhsusf_5Rnd_762x51_m993_Mag", 90],       // 5Rnd M993 AP
  ["5Rnd 12g FRAG", "rhsusf_5Rnd_FRAG", 90],                  // 5Rnd 12g FRAG
  ["5Rnd 12g HE-EP", "rhsusf_5Rnd_HE", 90],                    // 5Rnd 12g HE-EP
  ["5Rnd 12g Slug", "rhsusf_5Rnd_Slug", 90],                  // 5Rnd 12g Slug
  ["8Rnd .00 Buckshot", "rhsusf_8Rnd_00Buck", 90],                // 8Rnd .00 Buckshot
  ["8Rnd 12g FRAG", "rhsusf_8Rnd_FRAG", 90],                  // 8Rnd 12g FRAG
  ["8Rnd 12g HE-EP", "rhsusf_8Rnd_HE", 90],                    // 8Rnd 12g HE-EP
  ["8Rnd 12g Slug", "rhsusf_8Rnd_Slug", 90],                  // 8Rnd 12g Slug
	["M112", "rhsusf_m112_mag", 60],                   // M112
  ["M112 (x4)", "rhsusf_m112x4_mag", 60],                 // M112 (x4)
  ["10rnd M107 M33", "rhsusf_mag_10Rnd_STD_50BMG_M33", 350],    // 10rnd M107 M33
  ["10rnd M107 Mk211", "rhsusf_mag_10Rnd_STD_50BMG_mk211", 350],  // 10rnd M107 Mk211
	["15rnd M9 M882 FMJ", "rhsusf_mag_15Rnd_9x19_FMJ", 120],         // 15rnd M9 M882 FMJ
  ["15rnd M9 Mk243 JHP", "rhsusf_mag_15Rnd_9x19_JHP", 120],         // 15rnd M9 Mk243 JHP
	["17rnd Glock M882 FMJ", "rhsusf_mag_17Rnd_9x19_FMJ", 120],         // 17rnd Glock M882 FMJ
  ["17rnd Glock Mk243 JHP", "rhsusf_mag_17Rnd_9x19_JHP", 120],         // 17rnd Glock Mk243 JHP
  ["40rnd MP7 SX AP", "rhsusf_mag_40Rnd_46x30_AP", 60],         // 40rnd MP7 SX AP
  ["40rnd MP7 SX FMJ", "rhsusf_mag_40Rnd_46x30_FMJ", 60],        // 40rnd MP7 SX FMJ
  ["40rnd MP7 SX JHP", "rhsusf_mag_40Rnd_46x30_JHP", 60],        // 40rnd MP7 SX JHP
  ["6rnd M397 HET Grenades", "rhsusf_mag_6Rnd_M397_HET", 60],          // 6rnd M397 HET Grenades
  ["6rnd. GL Stun Grenade Round", "rhsusf_mag_6Rnd_m4009", 60],             // 6rnd. GL Stun Grenade Round
  ["6rnd M433 HEDP Grenades", "rhsusf_mag_6Rnd_M433_HEDP", 60],         // 6rnd M433 HEDP Grenades
  ["6rnd M441 HE Grenade Rounds", "rhsusf_mag_6Rnd_M441_HE", 60],           // 6rnd M441 HE Grenade Rounds
  ["6rnd. M576 Buckshot Round", "rhsusf_mag_6Rnd_M576_Buckshot", 60],     // 6rnd. M576 Buckshot Round
  ["6rnd. M585 White Flare Round", "rhsusf_mag_6Rnd_M585_white", 60],        // 6rnd. M585 White Flare Round
  ["6rnd. M661 Green Flare Round", "rhsusf_mag_6Rnd_m661_green", 60],        // 6rnd. M661 Green Flare Round
  ["6rnd. M662 Red Flare Round", "rhsusf_mag_6Rnd_m662_red", 60],          // 6rnd. M662 Red Flare Round
  ["6rnd. M713 Red Smoke Round", "rhsusf_mag_6Rnd_M713_red", 60],          // 6rnd. M713 Red Smoke Round
  ["6rnd. M714 White Smoke Round", "rhsusf_mag_6Rnd_M714_white", 60],        // 6rnd. M714 White Smoke Round
  ["6rnd. M715 Green Smoke Round", "rhsusf_mag_6Rnd_M715_green", 60],        // 6rnd. M715 Green Smoke Round
  ["6rnd. M716 Yellow Smoke Round", "rhsusf_mag_6Rnd_M716_yellow", 60],       // 6rnd. M716 Yellow Smoke Round
  ["6rnd. M751 Practice Round", "rhsusf_mag_6Rnd_M781_Practice", 60],     // 6rnd. M751 Practice Round
  ["7rnd M1911 HP", "rhsusf_mag_7x45acp_MHP", 60],            // 7rnd M1911 HP
	// RHS end
	// BWMod
	["P8 9 mm 15Rnd Mag", "BWA3_15Rnd_9x19_P8", 60],
	["P12 .45 ACP 12Rnd Mag", "BWA3_12Rnd_45ACP_P12", 60],
	["P2A1 26.5 mm DM55 Single Star (white)", "BWA3_1Rnd_Flare_Singlestar_White", 30],
	["P2A1 26.5 mm DM51 Single Star (green)", "BWA3_1Rnd_Flare_Singlestar_Green", 30],
	["P2A1 26.5 mm DM51 Single Star (red)", "BWA3_1Rnd_Flare_Singlestar_Red", 30],
	["P2A1 26.5 mm DM516 Illumination", "BWA3_1Rnd_Flare_Illum", 60],
	["P2A1 26.5 mm DM25 Multi Star (white)", "BWA3_1Rnd_Flare_Multistar_White", 60],
	["P2A1 26.5 mm DM25 Multi Star (green)", "BWA3_1Rnd_Flare_Multistar_Green", 60],
	["P2A1 26.5 mm DM25 Multi Star (red)", "BWA3_1Rnd_Flare_Multistar_Red", 60],
	["84 mm HEAT-T Rocket", "BWA3_CarlGustav_HEAT", 1000],
	["84 mm HE Rocket", "BWA3_CarlGustav_HE", 1000],
	["84 mm HEDP Rocket", "BWA3_CarlGustav_HEDP", 1000],
	["84 mm Smoke Rocket", "BWA3_CarlGustav_Smoke", 1000],
	["84 mm Illum Rocket", "BWA3_CarlGustav_Illum", 1000],
	["7.62x51 mm 20Rnd Mag", "BWA3_20Rnd_762x51_G28", 120],
	["7.62x51 mm 20Rnd Mag Tracer", "BWA3_20Rnd_762x51_G28_Tracer", 120],
	["7.62x51 mm 20Rnd Mag (IR-DIM)", "BWA3_20Rnd_762x51_G28_Tracer_Dim", 120],
	["7.62x51 mm 20Rnd Mag (AP)", "BWA3_20Rnd_762x51_G28_AP", 120],
	["7.62x51 mm 20Rnd Mag (SD)", "BWA3_20Rnd_762x51_G28_SD", 120],
	["7.62x51 mm M118LR 20Rnd Mag (LR)", "BWA3_20Rnd_762x51_G28_LR", 120],
	["G29 8.6x70 mm 10Rnd Mag", "BWA3_10Rnd_86x70_G29", 120],
	["G29 8.6x70 mm 10Rnd Mag (Tracer)", "BWA3_10Rnd_86x70_G29_Tracer", 120],
	["G36 5.56x45 mm DM11 30Rnd Mag", "BWA3_30Rnd_556x45_G36", 120],
	["G36 5.56x45 mm DM21 30Rnd Mag (Tracer)", "BWA3_30Rnd_556x45_G36_Tracer", 120],
	["G36 5.56x45 mm 30Rnd Mag (IR-DIM)", "BWA3_30Rnd_556x45_G36_Tracer_Dim", 120],
	["G36 5.56x45 mm 30Rnd Mag (SD)", "BWA3_30Rnd_556x45_G36_SD", 120],
	["G36 5.56x45 mm DM31 30Rnd Mag (AP)", "BWA3_30Rnd_556x45_G36_AP", 120],
	["G82 12.7x99 mm 10Rnd Mag", "BWA3_10Rnd_127x99_G82", 120],
	["G82 12.7x99 mm 10Rnd Mag (Tracer)", "BWA3_10Rnd_127x99_G82_Tracer", 120],
	["G82 12.7x99 mm 10Rnd Mag (IR-DIM)", "BWA3_10Rnd_127x99_G82_Tracer_Dim", 120],
	["G82 12.7x99 mm 10Rnd Mag (AP)", "BWA3_10Rnd_127x99_G82_AP", 120],
	["G82 12.7x99 mm 10Rnd Mag (AP Tracer)", "BWA3_10Rnd_127x99_G82_AP_Tracer", 120],
	["G82 12.7x99 mm 10Rnd Mag (SD)", "BWA3_10Rnd_127x99_G82_SD", 120],
	["G82 12.7x99 mm Mk 211 10Rnd Mag (Raufoss)", "BWA3_10Rnd_127x99_G82_Raufoss", 120],
	["G82 12.7x99 mm Mk 211 10Rnd Mag (Raufoss Tracer)", "BWA3_10Rnd_127x99_G82_Raufoss_Tracer", 120],
	["G82 12.7x99 mm Mk 211 10Rnd Mag (Raufoss IR-DIM)", "BWA3_10Rnd_127x99_G82_Raufoss_Tracer_Dim", 120],
	["MP7 4.6x30 mm 40Rnd Mag<", "BWA3_40Rnd_46x30_MP7", 120],
	["MP7 4.6x30 mm 20Rnd Mag", "BWA3_20Rnd_46x30_MP7", 50],
	["MP7 4.6x30 mm 40Rnd Mag (SD)", "BWA3_40Rnd_46x30_MP7_SD", 120],
	["MP7 4.6x30 mm 20Rnd Mag (SD)", "BWA3_20Rnd_46x30_MP7_SD", 50],
	["Belt Case 7.62x51 mm 120Rnd", "BWA3_120Rnd_762x51", 250],
	["Belt Case 7.62x51 mm 120Rnd (Tracer)", "BWA3_120Rnd_762x51_Tracer", 250],
	["MG4 5.56x45 mm 200Rnd Belt Case", "BWA3_200Rnd_556x45", 300],
	["MG4 5.56x45 mm 200Rnd Belt Case (Tracer)", "BWA3_200Rnd_556x45_Tracer", 300],
	["Belt Bag 7.62x51 mm 120Rnd", "BWA3_120Rnd_762x51_soft", 300],
	["Belt Bag 7.62x51 mm 120Rnd (Tracer)", "BWA3_120Rnd_762x51_Tracer_soft", 300],

	//
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 350],             //                 hit                      hit,  radius
	["PG-7VM HEAT Grenade", "RPG7_F", 900],                   // Direct damage:  343     | Splash damage:  13,  3.0m     | Guidance: none
	["RPG-42 AT Rocket", "RPG32_F", 1000],                     //                 422     |                 28,  2.5m     |           none
	["RPG-42 HE Rocket", "RPG32_HE_F", 1000],                  //                 200     |                 50,  6.0m     |           none
	["MAAWS HEAT 75 Rocket", "MRAWS_HEAT_F", 1500],            //                 495     |                 14,  2.0m     |           none
	["MAAWS HEAT 55 Rocket", "MRAWS_HEAT55_F", 1450],          //                 450     |                 14,  2.0m     |           none
	["MAAWS HE 44 Rocket", "MRAWS_HE_F", 1000],                //                 200     |                 50,  6.0m     |           none
	["9M135 HEAT Missile", "Vorona_HEAT", 2000],              //                 634     |                 28,  2.5m     |           mouse
	["9M135 HE Missile", "Vorona_HE", 1750],                   //                 220     |                 45,  8.0m     |           mouse
	["PCML AT Missile", "NLAW_F", 1750], //                 462     |                 25,  2.4m     |           laser/IR, cold/hot ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 3000],            //                 515     |                 20,  2.0m     |           mouse, laser/IR, hot ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 1750],        //                 100     |                 25, 10.0m     |           mouse, laser/IR
	["Titan AA Missile", "Titan_AA", 1750],                    //                  80     |                 60,  6.0m     |           aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 225],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 750],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 100],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 100],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 100],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 300],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 300],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 125],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 125],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 125],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 125],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 125],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 350],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 350],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 350],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 350],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 350]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 250, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 175, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 200, "item"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 200, "item", "noDLC"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 200, "item", "noDLC"],
	["Suppressor 5.7mm", "muzzle_snds_570", 175, "item"],
	["Suppressor 5.8mm Stealth", "muzzle_snds_58_blk_F", 200, "item"],
	["Suppressor 5.8mm Stealth (Hex)", "muzzle_snds_58_hex_F", 200, "item"],
	["Suppressor 5.8mm Stealth (G Hex)", "muzzle_snds_58_ghex_F", 200, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 200, "item"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 200, "item", "noDLC"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 200, "item", "noDLC"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 225, "item"],
	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 225, "item", "noDLC"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 225, "item", "noDLC"],
	["Suppressor 6.5mm Stealth", "muzzle_snds_65_TI_blk_F", 225, "item"],
	["Suppressor 6.5mm Stealth (Hex)", "muzzle_snds_65_TI_hex_F", 225, "item"],
	["Suppressor 6.5mm Stealth (G Hex)", "muzzle_snds_65_TI_ghex_F", 225, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 300, "item"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 300, "item", "noDLC"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 300, "item", "noDLC"],
	["Suppressor 7.62mm AK (Arid)", "muzzle_snds_B_arid_F", 300, "item"],
	["Suppressor 7.62mm AK (Lush)", "muzzle_snds_B_lush_F", 300, "item"],
	["Suppressor .338", "muzzle_snds_338_black", 350, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 350, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 1375, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 475, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 475, "item"],
	["Bipod (NATO)", "bipod_01_F_blk", 200, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 200, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 200, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 200, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 200, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 200, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 200, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 200, "item", "noDLC"],
	["Bipod (Khaki)", "bipod_01_F_khk", 200, "item", "noDLC"],
	["Flashlight", "acc_flashlight", 125, "item"],
	["Pistol Flashlight" ,"acc_flashlight_pistol", 125, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 125, "item"],
	["Yorris J2 (Zubr)", "optic_Yorris", 125, "item"],
	["MRD (4-five/Sand)", "optic_MRD", 125, "item"],
	["MRD (4-five/Black)", "optic_MRD_black", 125, "item", "noDLC"],
	["ACO SMG (Red)", "optic_aco_smg", 150, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 150, "item"],
	["ACO (Red)", "optic_Aco", 175, "item"],
	["ACO (Green)", "optic_Aco_grn", 175, "item"],
	["Holosight SMG", "optic_Holosight_smg", 150, "item"],
	["Holosight SMG (Black)", "optic_Holosight_smg_blk_F", 150, "item", "noDLC"],
	["Holosight SMG (Khaki)", "optic_Holosight_smg_khk_F", 150, "item", "noDLC"],
	["Holosight", "optic_Holosight", 175, "item"],
	["Holosight (Arid)", "optic_Holosight_arid_F", 175, "item", "noDLC"],
	["Holosight (Black)", "optic_Holosight_blk_F", 175, "item", "noDLC"],
	["Holosight (Khaki)", "optic_Holosight_khk_F", 175, "item", "noDLC"],
	["Holosight (Lush)", "optic_Holosight_lush_F", 175, "item", "noDLC"],
	["Promet Modular Sight", "optic_ico_01_f", 200, "item"],
	["Promet Modular Sight (Black)", "optic_ico_01_black_f", 200, "item"],
	["Promet Modular Sight (Camo)", "optic_ico_01_camo_f", 200, "item"],
	["Promet Modular Sight (Sand)", "optic_ico_01_sand_f", 200, "item"],
	["MRCO", "optic_MRCO", 200, "item"],
	["ERCO", "optic_ERCO_blk_F", 200, "item"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 200, "item"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 200, "item"],
	["ARCO", "optic_Arco", 225, "item"],
	["ARCO (Arid)", "optic_Arco_arid_F", 225, "item", "noDLC"],
	["ARCO (Black)", "optic_Arco_blk_F", 225, "item", "noDLC"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 225, "item", "noDLC"],
	["ARCO (Lush)", "optic_Arco_lush_F", 225, "item", "noDLC"],
	["ARCO AK (Arid)", "optic_Arco_AK_arid_F", 225, "item", "noDLC"],
	["ARCO AK (Black)", "optic_Arco_AK_black_F", 225, "item", "noDLC"],
	["ARCO AK (Lush)", "optic_Arco_AK_lush_F", 225, "item", "noDLC"],
	["RCO", "optic_Hamr", 250, "item"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 250, "item", "noDLC"],
	["MOS", "optic_SOS", 250, "item"],
	["MOS (Khaki)", "optic_SOS_khk_F", 250, "item", "noDLC"],
	["DMS", "optic_DMS", 275, "item"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 275, "item", "noDLC"],
	["DMS (Weathered)", "optic_DMS_weathered_F", 225, "item", "noDLC"],
	["DMS (Weathered Kir)", "optic_DMS_weathered_Kir_F", 225, "item", "noDLC"],
	["Kahlia (Sightless)", "optic_KHS_old", 300, "item"],
	["Kahlia", "optic_KHS_blk", 325, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 325, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 325, "item"],
	["AMS", "optic_AMS", 350, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 350, "item"],
	["AMS (Sand)", "optic_AMS_snd", 350, "item"],
	["LRPS", "optic_LRPS", 500, "item"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 500, "item", "noDLC"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 500, "item", "noDLC"],
	["NVS", "optic_NVS", 1500, "item"],
	["TWS", "optic_tws", 4000, "item", "HIDDEN"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 5000, "item", "HIDDEN"],
	["Nightstalker", "optic_Nightstalker", 6500, "item", "HIDDEN"],
	["LEUPOLD MK4", "rhsusf_acc_LEUPOLDMK4_2", 225, "item"],

	//RHSAFRF
	["RUS BIPOD","rhs_bipod", 200, "item"],
	["THPA","rhs_acc_tgpa", 200, "item"],
	["PBS-1","rhs_acc_pbs1", 200, "item"],
	["DTK-4 short","rhs_acc_dtk4short", 200, "item"],
	["TGPV","rhs_acc_tgpv", 200, "item"],
	["DTK-4 long","rhs_acc_dtk4long", 200, "item"],
	["DTK-4 screw","rhs_acc_dtk4screws", 200, "item"],
	["DTK Muzzle Flash","rhs_acc_muzzleFlash_dtk", 200, "item"],
	["DTK-3","rhs_acc_dtk3", 200, "item"],
	["DTK-1","rhs_acc_dtk1", 200, "item"],
	["DTK","rhs_acc_dtk", 200, "item"],
	["DTK-1L","rhs_acc_dtk1l", 200, "item"],
	["AK5","rhs_acc_ak5", 200, "item"],
	["1P29","rhs_acc_1p29", 200, "item"],
	["1P78","rhs_acc_1p78", 200, "item"],
	["PKAS","rhs_acc_pkas", 200, "item"],
	["EKP-1","rhs_acc_ekp1", 200, "item"],
	["1P63","rhs_acc_1p63", 200, "item"],
	["EKP1-B","rhs_acc_ekp1b", 200, "item"],
	["EKP1-C","rhs_acc_ekp1c", 200, "item"],
	["EKP1-D","rhs_acc_ekp1d", 200, "item"],
	["NPZ","rhs_acc_npz", 200, "item"],
	["PSO-1M2","rhs_acc_pso1m2", 200, "item"],
	["PGO-7V","rhs_acc_pgo7v", 200, "item"],
	["1PN93-1","rhs_acc_1pn93_1", 200, "item"],
	["1PN93-2","rhs_acc_1pn93_2", 200, "item"],
	// RHSUSAF
	["AT-4 Peep hole handler", "rhs_acc_at4_handler", 400, "item"],  // AT-4 Peep hole handler
  ["M3 MAAWS sight", "rhs_optic_maaws", 400, "item"], // M3 MAAWS sight
  ["SMAW sight", "rhs_weap_optic_smaw", 400, "item"], // SMAW sight
  ["AAC 762-SD", "rhsusf_acc_aac_762sd_silencer", 400, "item"], // AAC 762-SD
  ["AAC 762-SDN-6", "rhsusf_acc_aac_762sdn6_silencer", 400, "item"], // AAC 762-SDN-6
  ["AAC SCAR-H SD", "rhsusf_acc_aac_scarh_silencer", 400, "item"], // AAC SCAR-H SD
  ["M150 RCO + AN/PVS-27", "rhsusf_acc_ACOG_anpvs27", 400, "item"], // M150 RCO + AN/PVS-27
  ["TA31RCO (Desert)", "rhsusf_acc_ACOG_d", 400, "item"], // TA31RCO (Desert)
  ["SU-260/P (MOD)", "rhsusf_acc_ACOG_MDO", 400, "item"], // SU-260/P (MOD)
  ["TA31RCO-RMR", "rhsusf_acc_ACOG_RMR", 400, "item"], // TA31RCO-RMR
  ["AN/PVQ-31A RCO", "rhsusf_acc_ACOG_USMC", 400, "item"], // AN/PVQ-31A RCO
  ["TA31RCO (Woodland)", "rhsusf_acc_ACOG_wd", 400, "item"],  // TA31RCO (Woodland)
  ["M150 RCO", "rhsusf_acc_ACOG", 400, "item"], // M150 RCO
  ["AN/PVQ-31A (ARD)", "rhsusf_acc_ACOG2_USMC", 400, "item"], // AN/PVQ-31A (ARD)
  ["M150 RCO (ARD)", "rhsusf_acc_ACOG2", 400, "item"], // M150 RCO (ARD)
  ["AN/PVQ-31A (ARD/Lens Cover)", "rhsusf_acc_ACOG3_USMC", 400, "item"], // AN/PVQ-31A (ARD/Lens Cover)
  ["M150 RCO (ARD/Lens Cover)", "rhsusf_acc_ACOG3", 400, "item"], // M150 RCO (ARD/Lens Cover)
  ["AN/PAS-13G(V)1", "rhsusf_acc_anpas13gv1", 400, "item"], // AN/PAS-13G(V)1
  ["AN/PEQ-15/M952V Black (Light)", "rhsusf_acc_anpeq15_bk_light", 400, "item"], // AN/PEQ-15/M952V Black (Light)
  ["AN/PEQ-15 Black (Top)", "rhsusf_acc_anpeq15_bk_top", 400, "item"],  // AN/PEQ-15 Black (Top)
  ["AN/PEQ-15/M952V Black (Laser)", "rhsusf_acc_anpeq15_bk", 400, "item"], // AN/PEQ-15/M952V Black (Laser)
  ["AN/PEQ-15/M952V (Light)", "rhsusf_acc_anpeq15_light", 400, "item"],  // AN/PEQ-15/M952V (Light)
  ["AN/PEQ-15 (Top)", "rhsusf_acc_anpeq15_top", 400, "item"], // AN/PEQ-15 (Top)
  ["AN/PEQ-15 + WMX (light)", "rhsusf_acc_anpeq15_wmx_light", 400, "item"],  // AN/PEQ-15 + WMX (light)
  ["AN/PEQ-15 + WMX (laser)", "rhsusf_acc_anpeq15_wmx", 400, "item"], // AN/PEQ-15 + WMX (laser)
  ["AN/PEQ-15/M952V (Laser)", "rhsusf_acc_anpeq15", 400, "item"],  // AN/PEQ-15/M952V (Laser)
  ["AN/PEQ-15A", "rhsusf_acc_anpeq15A", 400, "item"], // AN/PEQ-15A
  ["AN/PEQ-15 Black", "rhsusf_acc_anpeq15side_bk", 400, "item"],  // AN/PEQ-15 Black
  ["AN/PEQ-15", "rhsusf_acc_anpeq15side", 400, "item"], // AN/PEQ-15
  ["AN/PEQ-16A (Top/Light)", "rhsusf_acc_anpeq16a_light_top", 400, "item"],  // AN/PEQ-16A (Top/Light)
  ["AN/PEQ-16A (Light)", "rhsusf_acc_anpeq16a_light", 400, "item"], // AN/PEQ-16A (Light)
  ["AN/PEQ-16A (Top/Laser)", "rhsusf_acc_anpeq16a_top", 400, "item"],  // AN/PEQ-16A (Top/Laser)
  ["AN/PEQ-16A (Laser)", "rhsusf_acc_anpeq16a", 400, "item"], // AN/PEQ-16A (Laser)
  ["AN/PVS-27", "rhsusf_acc_anpvs27", 400, "item"],  // AN/PVS-27
  ["ARDEC 4-Prong", "rhsusf_acc_ARDEC_M240", 400, "item"],  // ARDEC 4-Prong
  ["M68 CCO", "rhsusf_acc_compm4", 400, "item"],  // M68 CCO
  ["M145 MGO (ARD)", "rhsusf_acc_ELCAN_ard", 400, "item"], // M145 MGO (ARD)
  ["M145 MGO", "rhsusf_acc_ELCAN", 400, "item"],  // M145 MGO
  ["M552 CCO (Desert)", "rhsusf_acc_eotech_552_d", 400, "item"],  // M552 CCO (Desert)
  ["M552 CCO (Woodland)", "rhsusf_acc_eotech_552_wd", 400, "item"], // M552 CCO (Woodland)
  ["M552 CCO", "rhsusf_acc_eotech_552", 400, "item"], // M552 CCO
  ["XPS3", "rhsusf_acc_eotech_xps3", 400, "item"],  // XPS3
  ["EXPS3", "rhsusf_acc_EOTECH", 400, "item"], // EXPS3
  ["G33 + SU-278/PVS", "rhsusf_acc_g33_T1", 400, "item"],  // G33 + SU-278/PVS
  ["G33 + XPS3 (Tan)", "rhsusf_acc_g33_xps3_tan", 400, "item"], // G33 + XPS3 (Tan)
  ["G33 + XPS3", "rhsusf_acc_g33_xps3", 400, "item"],   // G33 + XPS3
  ["Grip Pod", "rhsusf_acc_grip1", 400, "item"],  // Grip Pod
  ["AFG Grip (Tan)", "rhsusf_acc_grip2_tan", 400, "item"],  // AFG Grip (Tan)
  ["AFG Grip (Woodland)", "rhsusf_acc_grip2_wd", 400, "item"], // AFG Grip (Woodland)
  ["AFG Grip", "rhsusf_acc_grip2", 400, "item"],  // AFG Grip
  ["TD Vertical Grip (Tan)", "rhsusf_acc_grip3_tan", 400, "item"], // TD Vertical Grip (Tan)
  ["TD Vertical Grip", "rhsusf_acc_grip3", 400, "item"],  // TD Vertical Grip
  ["SAW Grip & Bipod", "rhsusf_acc_grip4_bipod", 400, "item"], // SAW Grip & Bipod
  ["SAW Grip", "rhsusf_acc_grip4", 400, "item"], // SAW Grip
  ["Harris Bipod", "rhsusf_acc_harris_bipod", 400, "item"],  // Harris Bipod
  ["Harris Bipod", "rhsusf_acc_harris_swivel", 400, "item"],  // Harris Bipod
  ["KAC Grip & SAW Bipod", "rhsusf_acc_kac_grip_saw_bipod", 400, "item"],  // KAC Grip & SAW Bipod
  ["KAC Vertical Grip", "rhsusf_acc_kac_grip", 400, "item"],  // KAC Vertical Grip
  ["Mk. 4 M5 (Desert)", "rhsusf_acc_LEUPOLDMK4_2_d", 400, "item"], // Mk. 4 M5 (Desert)
  ["Mk. 4 M5 (MRDS)", "rhsusf_acc_LEUPOLDMK4_2_mrds", 400, "item"],  // Mk. 4 M5 (MRDS)
  ["Mk. 4 ER/T 6.5-20x M5", "rhsusf_acc_LEUPOLDMK4_2", 400, "item"], // Mk. 4 ER/T 6.5-20x M5
  ["Mk. 4 M3 (Desert)", "rhsusf_acc_LEUPOLDMK4_d", 400, "item"],  // Mk. 4 M3 (Desert)
  ["Mk. 4 M3 (Woodland)", "rhsusf_acc_LEUPOLDMK4_wd", 400, "item"], // Mk. 4 M3 (Woodland)
  ["Mk. 4 ER/T 3.5-10x M3", "rhsusf_acc_LEUPOLDMK4", 400, "item"],  // Mk. 4 ER/T 3.5-10x M3
  ["TiTan (Desert)", "rhsusf_acc_M2010S_d", 400, "item"], // TiTan (Desert)
  ["TiTan (Semi-Arid)", "rhsusf_acc_M2010S_sa", 400, "item"],  // TiTan (Semi-Arid)
  ["TiTan (Woodland)", "rhsusf_acc_M2010S_wd", 400, "item"],  // TiTan (Woodland)
  ["TiTan", "rhsusf_acc_M2010S", 400, "item"], // TiTan
  ["M24 150X. Flash Hider", "rhsusf_acc_m24_muzzlehider_black", 400, "item"],  // M24 150X. Flash Hider
  ["M24 150X. Flash Hider (Desert)", "rhsusf_acc_m24_muzzlehider_d", 400, "item"],  // M24 150X. Flash Hider (Desert)
  ["M24 150X. Flash Hider (Woodland)", "rhsusf_acc_m24_muzzlehider_wd", 400, "item"], // M24 150X. Flash Hider (Woodland)
  ["M24 Suppressor", "rhsusf_acc_m24_silencer_black", 400, "item"],  // M24 Suppressor
  ["M24 Suppressor (Desert)", "rhsusf_acc_m24_silencer_d", 400, "item"], // M24 Suppressor (Desert)
  ["M24 Suppressor (Woodland)", "rhsusf_acc_m24_silencer_wd", 400, "item"],  // M24 Suppressor (Woodland)
  ["M2A1 GL Sight", "rhsusf_acc_M2A1", 400, "item"],  // M2A1 GL Sight
  ["M8541 (low mount/Desert)", "rhsusf_acc_M8541_low_d", 400, "item"], // M8541 (low mount/Desert)
  ["M8541 (low mount/Woodland)", "rhsusf_acc_M8541_low_wd", 400, "item"],  // M8541 (low mount/Woodland)
  ["M8541 (low mount)", "rhsusf_acc_M8541_low", 400, "item"],   // M8541 (low mount)
  ["M8541 (MRDS)", "rhsusf_acc_M8541_mrds", 400, "item"], // M8541 (MRDS)
  ["M8541", "rhsusf_acc_M8541", 400, "item"], // M8541
  ["M952V", "rhsusf_acc_M952V", 400, "item"],  // M952V
  ["MRDS Coyote", "rhsusf_acc_mrds_c", 400, "item"],  // MRDS Coyote
  ["MRDS Coyote (Forward)", "rhsusf_acc_mrds_fwd_c", 400, "item"],  // MRDS Coyote (Forward)
  ["MRDS (Forward)", "rhsusf_acc_mrds_fwd", 400, "item"],  // MRDS (Forward)
  ["MRDS", "rhsusf_acc_mrds", 400, "item"],  // MRDS
  ["NT4 QDSS (Black)", "rhsusf_acc_nt4_black", 400, "item"], // NT4 QDSS (Black)
  ["NT4 QDSS (Tan)", "rhsusf_acc_nt4_tan", 400, "item"],  // NT4 QDSS (Tan)
  ["SILENCERCO OMEGA 9K", "rhsusf_acc_omega9k", 400, "item"], // SILENCERCO OMEGA 9K
  ["M8541A + AN/PVS-27", "rhsusf_acc_premier_anpvs27", 400, "item"],  // M8541A + AN/PVS-27
  ["M8541A (low mount)", "rhsusf_acc_premier_low", 400, "item"],  // M8541A (low mount)
  ["M8541A SSDS (MRDS)", "rhsusf_acc_premier_mrds", 400, "item"], // M8541A SSDS (MRDS)
  ["M8541A SSDS", "rhsusf_acc_premier", 400, "item"],   // M8541A SSDS
  ["RM05 RMR LT726 (Forward)", "rhsusf_acc_RM05_fwd", 400, "item"],   // RM05 RMR LT726 (Forward)
  ["RM05 RMR LT726", "rhsusf_acc_RM05", 400, "item"],   // RM05 RMR LT726
  ["Rotex-II (AOR1)", "rhsusf_acc_rotex_mp7_aor1", 400, "item"],  // Rotex-II (AOR1)
  ["Rotex-II (Desert)", "rhsusf_acc_rotex_mp7_desert", 400, "item"],    // Rotex-II (Desert)
  ["Rotex-II (Winter)", "rhsusf_acc_rotex_mp7_winter", 400, "item"],  // Rotex-II (Winter)
  ["Rotex-II (Black)", "rhsusf_acc_rotex_mp7", 400, "item"],   // Rotex-II (Black)
  ["Rotex-5 (Grey)", "rhsusf_acc_rotex5_grey", 400, "item"], // Rotex-5 (Grey)
  ["Rotex-5 (Tan)", "rhsusf_acc_rotex5_tan", 400, "item"],  // Rotex-5 (Tan)
  ["RVG Grip (Black)", "rhsusf_acc_rvg_blk", 400, "item"],   // RVG Grip (Black)
  ["RVG Grip (Dark Earth)", "rhsusf_acc_rvg_de", 400, "item"],  // RVG Grip (Dark Earth)
  ["RX01 Tan (w/o Filter)", "rhsusf_acc_RX01_NoFilter_tan", 400, "item"],  // RX01 Tan (w/o Filter)
  ["RX01 (w/o Filter)", "rhsusf_acc_RX01_NoFilter", 400, "item"],  // RX01 (w/o Filter)
  ["RX01 Reflex Tan", "rhsusf_acc_RX01_tan", 400, "item"],  // RX01 Reflex Tan
  ["RX01 Reflex", "rhsusf_acc_RX01", 400, "item"], // RX01 Reflex
  ["SAW Bipod", "rhsusf_acc_saw_bipod", 400, "item"],  // SAW Bipod
  ["SAW Improved Bipod", "rhsusf_acc_saw_lw_bipod", 400, "item"], // SAW Improved Bipod
  ["SF3P-556-1/2-28", "rhsusf_acc_SF3P556", 400, "item"], // SF3P-556-1/2-28
  ["SFMB-556-1/2-28", "rhsusf_acc_SFMB556", 400, "item"],  // SFMB-556-1/2-28
  ["SR-25 Rifle Suppressor (Desert)", "rhsusf_acc_SR25S_d", 400, "item"],  // SR-25 Rifle Suppressor (Desert)
  ["SR-25 Rifle Suppressor (Woodland)", "rhsusf_acc_SR25S_wd", 400, "item"], // SR-25 Rifle Suppressor (Woodland)
  ["SR-25 Rifle Suppressor", "rhsusf_acc_SR25S", 400, "item"],  // SR-25 Rifle Suppressor
  ["SU-230/PVS Coyote", "rhsusf_acc_su230_c", 400, "item"],  // SU-230/PVS Coyote
  ["SU-230/PVS MRDS Coyote", "rhsusf_acc_su230_mrds_c", 400, "item"], // SU-230/PVS MRDS Coyote
  ["SU-230/PVS MRDS", "rhsusf_acc_su230_mrds", 400, "item"], // SU-230/PVS MRDS
  ["SU-230/PVS", "rhsusf_acc_su230", 400, "item"], // SU-230/PVS
  ["SU-230A/PVS Coyote", "rhsusf_acc_su230a_c", 400, "item"],   // SU-230A/PVS Coyote
  ["SU-230A/PVS MRDS Coyote", "rhsusf_acc_su230a_mrds_c", 400, "item"],  // SU-230A/PVS MRDS Coyote
  ["SU-230A/PVS MRDS", "rhsusf_acc_su230a_mrds", 400, "item"],   // SU-230A/PVS MRDS
  ["SU-230A/PVS", "rhsusf_acc_su230a", 400, "item"],  // SU-230A/PVS
  ["SU-278/PVS LT660", "rhsusf_acc_T1_high", 400, "item"],  // SU-278/PVS LT660
  ["SU-278/PVS LT661 (Forward)", "rhsusf_acc_T1_low_fwd", 400, "item"],  // SU-278/PVS LT661 (Forward)
  ["SU-278/PVS LT661", "rhsusf_acc_T1_low", 400, "item"],   // SU-278/PVS LT661
  ["Tac-Sac Grip (Black)", "rhsusf_acc_tacsac_blk", 400, "item"], // Tac-Sac Grip (Black)
  ["Tac-Sac Grip (Blue)", "rhsusf_acc_tacsac_blue", 400, "item"],  // Tac-Sac Grip (Blue)
  ["Tac-Sac Grip (Tan)", "rhsusf_acc_tacsac_tan", 400, "item"],  // Tac-Sac Grip (Tan)
  ["TD Stubby Grip (Black)", "rhsusf_acc_tdstubby_blk", 400, "item"],  // TD Stubby Grip (Black)
  ["TD Stubby Grip (Tan)", "rhsusf_acc_tdstubby_tan", 400, "item"], // TD Stubby Grip (Tan)
  ["WMX Flashlight (Black)", "rhsusf_acc_wmx_bk", 400, "item"], // WMX Flashlight (Black)
  ["WMX Flashlight", "rhsusf_acc_wmx", 400, "item"],  // WMX Flashlight
  ["M151 Spotting Scope", "rhsusf_bino_leopold_mk4", 400, "item"],   // M151 Spotting Scope
	// RHS END
	//BWMod
	["LLM01 IR Laser","BWA3_acc_LLM01_irlaser", 400, "item"],
  ["LLM01 Flash","BWA3_acc_LLM01_flash", 400, "item"],
	["LLM01 Laser","BWA3_acc_LLM01_laser", 400, "item"],
	["LLM01 IR Laser (Tan)","BWA3_acc_LLM01_irlaser_tan", 400, "item"],
	["LLM01 Flash (Tan)","BWA3_acc_LLM01_flash_tan", 400, "item"],
	["LLM01 Laser (Tan)","BWA3_acc_LLM01_laser_tan", 400, "item"],
	["LLM01 IR Laser (Green)","BWA3_acc_LLM01_irlaser_green", 400, "item"],
	["LLM01 Flash (Green)","BWA3_acc_LLM01_flash_green", 400, "item"],
	["LLM01 Laser (Green)","BWA3_acc_LLM01_laser_green", 400, "item"],
	["LLM01 IR Laser (UB)","BWA3_acc_LLM01_irlaser_underbarrel", 400, "item"],
	["LLM01 Flash (UB)","BWA3_acc_LLM01_flash_underbarrel", 400, "item"],
	["LLM01 Laser (UB)","BWA3_acc_LLM01_laser_underbarrel", 400, "item"],
	["LLMPI IR Laser","BWA3_acc_LLMPI_irlaser", 400, "item"],
	["LLMPI Flash","BWA3_acc_LLMPI_flash", 400, "item"],
	["LLMPI Laser","BWA3_acc_LLMPI_laser", 400, "item"],
	["VarioRay IR Laser","BWA3_acc_VarioRay_irlaser", 400, "item"],
	["VarioRay Flash","BWA3_acc_VarioRay_flash", 400, "item"],
	["VarioRay Laser","BWA3_acc_VarioRay_laser", 400, "item"],
	["VarioRay IR Laser (Black)","BWA3_acc_VarioRay_irlaser_black", 400, "item"],
	["VarioRay Flash (Black)","BWA3_acc_VarioRay_flash_black", 400, "item"],
	["VarioRay Laser (Black)","BWA3_acc_VarioRay_laser_black", 400, "item"],
	["Rotex IIA","BWA3_muzzle_snds_Rotex_IIA", 400, "item"],
	["Rotex Monoblock","BWA3_muzzle_snds_Rotex_Monoblock", 400, "item"],
	["Rotex IIIC","BWA3_muzzle_snds_Rotex_IIIC", 400, "item"],
	["Rotex IIIC (Tan)","BWA3_muzzle_snds_Rotex_IIIC_tan", 400, "item"],
	["Rotex IIIC (Green)","BWA3_muzzle_snds_Rotex_IIIC_green", 400, "item"],
	["QDSS","BWA3_muzzle_snds_QDSS", 400, "item"],
	["QDSS (Tan)","BWA3_muzzle_snds_QDSS_tan", 400, "item"],
	["QDSS (Green)","BWA3_muzzle_snds_QDSS_green", 400, "item"],
	["Rotex II","BWA3_muzzle_snds_Rotex_II", 400, "item"],
	["Impuls IIA","BWA3_muzzle_snds_Impuls_IIA", 400, "item"],
	["Bipod MG3","BWA3_bipod_MG3", 400, "item"],
	["Atlas Bipod","BWA3_bipod_Atlas", 400, "item"],
	["Harris Bipod","BWA3_bipod_Harris", 400, "item"],
	["Harris Bipod (Tan)","BWA3_bipod_Harris_tan", 400, "item"],
	["Harris Bipod (Green)","BWA3_bipod_Harris_green", 400, "item"],
	["RSAS","BWA3_optic_RSAS", 400, "item"],
  ["RSAS (brown)","BWA3_optic_RSAS_brown", 400, "item"],
  ["RSAS (sand)","BWA3_optic_RSAS_sand", 400, "item"],
  ["RSAS (tan)","BWA3_optic_RSAS_tan", 400, "item"],
  ["RSAS green","BWA3_optic_RSAS_green", 400, "item"],
  ["RSAS riser","BWA3_optic_RSAS_riser", 400, "item"],
  ["Flipsights","BWA3_optic_Flipsights", 400, "item"],
  ["Ironsight 100","BWA3_optic_G36C_Ironsight_100", 400, "item"],
  ["G36C Ironsight 300","BWA3_optic_G36C_Ironsight_300", 400, "item"],
  ["MicroT1","BWA3_optic_MicroT1", 400, "item"],
  ["MicroT2","BWA3_optic_MicroT2", 400, "item"],
  ["CompM2","BWA3_optic_CompM2", 400, "item"],
  ["CompM2 (tan)","BWA3_optic_CompM2_tan", 400, "item"],
  ["CompM2 (green)","BWA3_optic_CompM2_green", 400, "item"],
  ["EOTech552","BWA3_optic_EOTech552", 400, "item"],
  ["EOTech552 (tan)","BWA3_optic_EOTech552_tan", 400, "item"],
  ["EOTech552 (green)","BWA3_optic_EOTech552_green", 400, "item"],
  ["EOTech","BWA3_optic_EOTech", 400, "item"],
  ["EOTech (sand)","BWA3_optic_EOTech_sand", 400, "item"],
  ["EOTech Mag Off","BWA3_optic_EOTech_Mag_Off", 400, "item"],
  ["EOTech (sand) Mag Off","BWA3_optic_EOTech_sand_Mag_Off", 400, "item"],
  ["ZO4x30","BWA3_optic_ZO4x30", 400, "item"],
  ["ZO4x30 (brown)","BWA3_optic_ZO4x30_brown", 400, "item"],
  ["ZO4x30 RSAS","BWA3_optic_ZO4x30_RSAS", 400, "item"],
  ["ZO4x30 RSAS (brown)","BWA3_optic_ZO4x30_RSAS_brown", 400, "item"],
  ["ZO4x30 MicroT2","BWA3_optic_ZO4x30_MicroT2", 400, "item"],
  ["ZO4x30 MicroT2 (brown)","BWA3_optic_ZO4x30_MicroT2_brown", 400, "item"],
  ["ZO4x30i","BWA3_optic_ZO4x30i", 400, "item"],
  ["ZO4x30i (sand)","BWA3_optic_ZO4x30i_sand", 400, "item"],
  ["ZO4x30i RSAS","BWA3_optic_ZO4x30i_RSAS", 400, "item"],
  ["ZO4x30i RSAS (sand)","BWA3_optic_ZO4x30i_RSAS_sand", 400, "item"],
  ["ZO4x30i MicroT2","BWA3_optic_ZO4x30i_MicroT2", 400, "item"],
  ["ZO4x30i MicroT2 (sand)","BWA3_optic_ZO4x30i_MicroT2_sand", 400, "item"],
  ["PMII Shortdot CC","BWA3_optic_PMII_ShortdotCC", 400, "item"],
  ["PMII DMR","BWA3_optic_PMII_DMR", 400, "item"],
  ["PMII DMR MicroT1 Front","BWA3_optic_PMII_DMR_MicroT1_front", 400, "item"],
  ["PMII DMR MicroT1 Rear","BWA3_optic_PMII_DMR_MicroT1_rear", 400, "item"],
  ["M5Xi Tremor3","BWA3_optic_M5Xi_Tremor3", 400, "item"],
  ["M5Xi Tremor3 MicroT2","BWA3_optic_M5Xi_Tremor3_MicroT2", 400, "item"],
  ["M5Xi MSR","BWA3_optic_M5Xi_MSR", 400, "item"],
  ["M5Xi MSR MicroT2","BWA3_optic_M5Xi_MSR_MicroT2", 400, "item"],
  ["Hensoldt","BWA3_optic_Hensoldt", 400, "item"],
  ["NSV600","BWA3_optic_NSV600", 400, "item"],
  ["IRV600","BWA3_optic_IRV600", 400, "item"],
  ["NSA80","BWA3_optic_NSV80", 400, "item"],
  ["CarlGustav Optic","BWA3_optic_CarlGustav", 400, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Tin Foil Hat", "H_Hat_Tinfoil_F", 666, "hat"],
	["Advanced Modular Helmet", "H_HelmetHBK_headset_F", 50, "hat"],
	["Advanced Modular Helmet (Olive)", "H_HelmetHBK_F", 50, "hat"],
	["Advanced Modular Helmet (Chops)", "H_HelmetHBK_chops_F", 75, "hat"],
	["Advanced Modular Helmet (Ear Protectors)", "H_HelmetHBK_ear_F", 75, "hat"],
	["Modular Helmet (Digi)", "H_HelmetIA", 50, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Combat Helmet", "H_HelmetB", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_black", 50, "hat"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 50, "hat"],
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 75, "hat"],
	["Enhanced Combat Helmet", "H_HelmetSpecB", 75, "hat"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 75, "hat"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 75, "hat"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 75, "hat", "noDLC"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 60, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 60, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 75, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 75, "hat"],
	["Avenger Helmet", "H_HelmetAggressor_F", 75, "hat"],
	["Avenger Helmet (Cover B)", "H_HelmetAggressor_cover_F", 75, "hat"],
	["Avenger Helmet (Cover T)", "H_HelmetAggressor_cover_taiga_F", 75, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 100, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 100, "hat"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 100, "hat", "noDLC"],
	// RHS
	["Pilot Helmet (IHADSS)", "rhsusf_ihadss", 60, "hat"],
 	//
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 60, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 60, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 60, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 60, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 60, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 60, "hat"],
	// RHS
	["Ops-Core 1", "rhsusf_opscore_01", 60, "hat"],
	["Ops-Core 2", "rhsusf_opscore_02", 60, "hat"],
	// Headgear
  ["Utility Cap MARPAT-D", "rhs_8point_marpatd", 25, "hat"],  // Utility Cap MARPAT-D
  ["Utility Cap MARPAT-WD", "rhs_8point_marpatwd", 25, "hat"], // Utility Cap MARPAT-WD
  ["Booniehat M81", "rhs_Booniehat_m81", 25, "hat"],   // Booniehat M81
  ["Booniehat OEF-CP", "rhs_Booniehat_ocp", 25, "hat"],   // Booniehat OEF-CP
  ["Booniehat UCP", "rhs_Booniehat_ucp", 25, "hat"],   // Booniehat UCP
  ["Booniehat MARPAT-D", "rhs_booniehat2_marpatd", 25, "hat"],    // Booniehat MARPAT-D
  ["Booniehat MARPAT-WD", "rhs_booniehat2_marpatwd", 25, "hat"],   // Booniehat MARPAT-WD
  ["Jet Pilot Helmet", "RHS_jetpilot_usaf", 25, "hat"],   // Jet Pilot Helmet
  ["Christmas Antlers", "rhs_xmas_antlers", 25, "hat", "HIDDEN"],    // Christmas Antlers
  ["ACH (Desert/ESS)", "rhsusf_ach_bare_des_ess", 25, "hat"],// ACH (Desert/ESS)
  ["ACH (Desert/Headset/ESS)", "rhsusf_ach_bare_des_headset_ess", 25, "hat"], // ACH (Desert/Headset/ESS)
  ["ACH (Desert/Headset)", "rhsusf_ach_bare_des_headset", 25, "hat"],  // ACH (Desert/Headset)
  ["ACH (Desert)", "rhsusf_ach_bare_des", 25, "hat"],    // ACH (Desert)
  ["ACH (ESS)", "rhsusf_ach_bare_ess", 25, "hat"],    // ACH (ESS)
  ["ACH (Headset/ESS)", "rhsusf_ach_bare_headset_ess", 25, "hat"],  // ACH (Headset/ESS)
  ["ACH (Headset)", "rhsusf_ach_bare_headset", 25, "hat"],// ACH (Headset)
  ["ACH (Semi-Arid/ESS)", "rhsusf_ach_bare_semi_ess", 25, "hat"],     // ACH (Semi-Arid/ESS)
  ["ACH (Semi-Arid/Headset/ESS)", "rhsusf_ach_bare_semi_headset_ess", 25, "hat"],// ACH (Semi-Arid/Headset/ESS)
  ["ACH (Semi-Arid/Headset)", "rhsusf_ach_bare_semi_headset", 25, "hat"], // ACH (Semi-Arid/Headset)
  ["ACH (Semi-Arid)", "rhsusf_ach_bare_semi", 25, "hat"],   // ACH (Semi-Arid)
  ["ACH (Tan/ESS)", "rhsusf_ach_bare_tan_ess", 25, "hat"],// ACH (Tan/ESS)
  ["ACH (Tan/Headset/ESS)", "rhsusf_ach_bare_tan_headset_ess", 25, "hat"], // ACH (Tan/Headset/ESS)
  ["ACH (Tan/Headset)", "rhsusf_ach_bare_tan_headset", 25, "hat"],  // ACH (Tan/Headset)
  ["ACH (Tan)", "rhsusf_ach_bare_tan", 25, "hat"],    // ACH (Tan)
  ["ACH (Woodland/ESS)", "rhsusf_ach_bare_wood_ess", 25, "hat"],     // ACH (Woodland/ESS)
  ["ACH (Woodland/Headset/ESS)", "rhsusf_ach_bare_wood_headset_ess", 25, "hat"],// ACH (Woodland/Headset/ESS)
  ["ACH (Woodland/Headset)", "rhsusf_ach_bare_wood_headset", 25, "hat"], // ACH (Woodland/Headset)
  ["ACH (Woodland)", "rhsusf_ach_bare_wood", 25, "hat"],   // ACH (Woodland)
  ["ACH", "rhsusf_ach_bare", 25, "hat"],        // ACH
  ["ACH OEF-CP (Netting)", "rhsusf_ach_helmet_camo_ocp", 25, "hat"],   // ACH OEF-CP (Netting)
  ["ACH DCU (Early/Rhino)", "rhsusf_ach_helmet_DCU_early_rhino", 25, "hat"], // ACH DCU (Early/Rhino)
  ["ACH DCU (Early)", "rhsusf_ach_helmet_DCU_early", 25, "hat"],  // ACH DCU (Early)
  ["ACH DCU", "rhsusf_ach_helmet_DCU", 25, "hat"],  // ACH DCU
  ["ACH OEF-CP (ESS/Alt)", "rhsusf_ach_helmet_ESS_ocp_alt", 25, "hat"],// ACH OEF-CP (ESS/Alt)
  ["ACH OEF-CP (ESS)", "rhsusf_ach_helmet_ESS_ocp", 25, "hat"],    // ACH OEF-CP (ESS)
  ["ACH UCP (ESS/Alt)", "rhsusf_ach_helmet_ESS_ucp_alt", 25, "hat"],// ACH UCP (ESS/Alt)
  ["ACH UCP (ESS)", "rhsusf_ach_helmet_ESS_ucp", 25, "hat"],    // ACH UCP (ESS)
  ["ACH OEF-CP (Headset/ESS/Alt)", "rhsusf_ach_helmet_headset_ess_ocp_alt", 25, "hat"],   // ACH OEF-CP (Headset/ESS/Alt)
  ["ACH OEF-CP (Headset/ESS)", "rhsusf_ach_helmet_headset_ess_ocp", 25, "hat"], // ACH OEF-CP (Headset/ESS)
  ["ACH UCP (Headset/ESS/Alt)", "rhsusf_ach_helmet_headset_ess_ucp_alt", 25, "hat"],   // ACH UCP (Headset/ESS/Alt)
  ["ACH UCP (Headset/ESS)", "rhsusf_ach_helmet_headset_ess_ucp", 25, "hat"], // ACH UCP (Headset/ESS)
  ["ACH OEF-CP (Headset/Alt)", "rhsusf_ach_helmet_headset_ocp_alt", 25, "hat"], // ACH OEF-CP (Headset/Alt)
  ["ACH OEF-CP (Headset)", "rhsusf_ach_helmet_headset_ocp", 25, "hat"],// ACH OEF-CP (Headset)
  ["ACH UCP (Headset/Alt)", "rhsusf_ach_helmet_headset_ucp_alt", 25, "hat"], // ACH UCP (Headset/Alt)
  ["ACH UCP (Headset)", "rhsusf_ach_helmet_headset_ucp", 25, "hat"],// ACH UCP (Headset)
  ["ACH M81", "rhsusf_ach_helmet_M81", 25, "hat"],  // ACH M81
  ["ACH OEF-CP (Alt)", "rhsusf_ach_helmet_ocp_alt", 25, "hat"],    // ACH OEF-CP (Alt)
  ["ACH OEF-CP (Norotos)", "rhsusf_ach_helmet_ocp_norotos", 25, "hat"],// ACH OEF-CP (Norotos)
  ["ACH OEF-CP", "rhsusf_ach_helmet_ocp", 25, "hat"],  // ACH OEF-CP
  ["ACH UCP (Alt)", "rhsusf_ach_helmet_ucp_alt", 25, "hat"],    // ACH UCP (Alt)
  ["ACH UCP (Norotos)", "rhsusf_ach_helmet_ucp_norotos", 25, "hat"],// ACH UCP (Norotos)
  ["ACH UCP", "rhsusf_ach_helmet_ucp", 25, "hat"],  // ACH UCP
  ["Bowman Elite II (Cap)", "rhsusf_bowman_cap", 25, "hat"],      // Bowman Elite II (Cap)
  ["Bowman Elite II", "rhsusf_Bowman", 25, "hat"],          // Bowman Elite II
  ["ACVC-H, MK-1697 (Tan/Alt.)", "rhsusf_cvc_alt_helmet", 25, "hat"],  // ACVC-H, MK-1697 (Tan/Alt.)
  ["ACVC-H, MK-1697 (Tan/ESS)", "rhsusf_cvc_ess", 25, "hat"],         // ACVC-H, MK-1697 (Tan/ESS)
  ["ACVC-H, MK-1697 (Alt.)", "rhsusf_cvc_green_alt_helmet", 25, "hat"],  // ACVC-H, MK-1697 (Alt.)
  ["ACVC-H, MK-1697 (ESS)", "rhsusf_cvc_green_ess", 25, "hat"],   // ACVC-H, MK-1697 (ESS)
  ["ACVC-H, MK-1697", "rhsusf_cvc_green_helmet", 25, "hat"],// ACVC-H, MK-1697
  ["ACVC-H, MK-1697 (Tan)", "rhsusf_cvc_helmet", 25, "hat"],      // ACVC-H, MK-1697 (Tan)
  ["HGU-56/P (Black)", "rhsusf_hgu56p_black", 25, "hat"],    // HGU-56/P (Black)
  ["HGU-56/P (Green)", "rhsusf_hgu56p_green", 25, "hat"],    // HGU-56/P (Green)
  ["HGU-56/P (Black/Mask/Skull)", "rhsusf_hgu56p_mask_black_skull", 25, "hat"],  // HGU-56/P (Black/Mask/Skull)
  ["HGU-56/P (Black/Mask)", "rhsusf_hgu56p_mask_black", 25, "hat"],     // HGU-56/P (Black/Mask)
  ["HGU-56/P (Green/Mask/Mo)", "rhsusf_hgu56p_mask_green_mo", 25, "hat"],  // HGU-56/P (Green/Mask/Mo)
  ["HGU-56/P (Green/Mask)", "rhsusf_hgu56p_mask_green", 25, "hat"],     // HGU-56/P (Green/Mask)
  ["HGU-56/P (Olive/Mask/Mo)", "rhsusf_hgu56p_mask_mo", 25, "hat"],  // HGU-56/P (Olive/Mask/Mo)
  ["HGU-56/P (Pink/Mask)", "rhsusf_hgu56p_mask_pink", 25, "hat"],// HGU-56/P (Pink/Mask)
  ["HGU-56/P (SAF/Mask)", "rhsusf_hgu56p_mask_saf", 25, "hat"], // HGU-56/P (SAF/Mask)
  ["HGU-56/P (Olive/Mask/Skull)", "rhsusf_hgu56p_mask_skull", 25, "hat"],     // HGU-56/P (Olive/Mask/Skull)
  ["HGU-56/P (Smiley/Mask)", "rhsusf_hgu56p_mask_smiley", 25, "hat"],    // HGU-56/P (Smiley/Mask)
  ["HGU-56/P (Tan/Mask)", "rhsusf_hgu56p_mask_tan", 25, "hat"], // HGU-56/P (Tan/Mask)
  ["HGU-56/P (Olive/Mask)", "rhsusf_hgu56p_mask", 25, "hat"],     // HGU-56/P (Olive/Mask)
  ["HGU-56/P (Pink)", "rhsusf_hgu56p_pink", 25, "hat"],     // HGU-56/P (Pink)
  ["HGU-56/P (SAF)", "rhsusf_hgu56p_saf", 25, "hat"],      // HGU-56/P (SAF)
  ["HGU-56/P (Tan)", "rhsusf_hgu56p_tan", 25, "hat"],      // HGU-56/P (Tan)
  ["HGU-56/P (USA)", "rhsusf_hgu56p_usa", 25, "hat"],      // HGU-56/P (USA)
  ["HGU-56/P (Black/Visor)", "rhsusf_hgu56p_visor_black", 25, "hat"],    // HGU-56/P (Black/Visor)
  ["HGU-56/P (Green/Visor)", "rhsusf_hgu56p_visor_green", 25, "hat"],    // HGU-56/P (Green/Visor)
  ["HGU-56/P (Black/Visor/Mask/Skull)", "rhsusf_hgu56p_visor_mask_black_skull", 25, "hat"],// HGU-56/P (Black/Visor/Mask/Skull)
  ["HGU-56/P (Black/Visor/Mask)", "rhsusf_hgu56p_visor_mask_black", 25, "hat"],  // HGU-56/P (Black/Visor/Mask)
  ["HGU-56/P (Black/Visor/Mask/Empire)", "rhsusf_hgu56p_visor_mask_Empire_black", 25, "hat"],   // HGU-56/P (Black/Visor/Mask/Empire)
  ["HGU-56/P (Green/Visor/Mask/Mo)", "rhsusf_hgu56p_visor_mask_green_mo", 25, "hat"], // HGU-56/P (Green/Visor/Mask/Mo)
  ["HGU-56/P (Green/Visor/Mask)", "rhsusf_hgu56p_visor_mask_green", 25, "hat"],  // HGU-56/P (Green/Visor/Mask)
  ["HGU-56/P (Olive/Visor/Mask/Mo)", "rhsusf_hgu56p_visor_mask_mo", 25, "hat"],  // HGU-56/P (Olive/Visor/Mask/Mo)
  ["HGU-56/P (Pink/Visor/Mask)", "rhsusf_hgu56p_visor_mask_pink", 25, "hat"],// HGU-56/P (Pink/Visor/Mask)
  ["HGU-56/P (SAF/Visor/Mask)", "rhsusf_hgu56p_visor_mask_saf", 25, "hat"], // HGU-56/P (SAF/Visor/Mask)
  ["HGU-56/P (Olive/Visor/Mask/Skull)", "rhsusf_hgu56p_visor_mask_skull", 25, "hat"],  // HGU-56/P (Olive/Visor/Mask/Skull)
  ["HGU-56/P (Smiley/Visor/Mask)", "rhsusf_hgu56p_visor_mask_smiley", 25, "hat"], // HGU-56/P (Smiley/Visor/Mask)
  ["HGU-56/P (Tan/Visor/Mask)", "rhsusf_hgu56p_visor_mask_tan", 25, "hat"], // HGU-56/P (Tan/Visor/Mask)
  ["HGU-56/P (Olive/Visor/Mask)", "rhsusf_hgu56p_visor_mask", 25, "hat"],     // HGU-56/P (Olive/Visor/Mask)
  ["HGU-56/P (Pink/Visor)", "rhsusf_hgu56p_visor_pink", 25, "hat"],     // HGU-56/P (Pink/Visor)
  ["HGU-56/P (SAF/Visor)", "rhsusf_hgu56p_visor_saf", 25, "hat"],// HGU-56/P (SAF/Visor)
  ["HGU-56/P (Tan/Visor)", "rhsusf_hgu56p_visor_tan", 25, "hat"],// HGU-56/P (Tan/Visor)
  ["HGU-56/P (USA/Visor)", "rhsusf_hgu56p_visor_usa", 25, "hat"],// HGU-56/P (USA/Visor)
  ["HGU-56/P (White/Visor)", "rhsusf_hgu56p_visor_white", 25, "hat"],    // HGU-56/P (White/Visor)
  ["HGU-56/P (Olive/Visor)", "rhsusf_hgu56p_visor", 25, "hat"],    // HGU-56/P (Olive/Visor)
  ["HGU-56/P (White)", "rhsusf_hgu56p_white", 25, "hat"],    // HGU-56/P (White)
  ["HGU-56/P (Olive)", "rhsusf_hgu56p", 25, "hat"],          // HGU-56/P (Olive)
  ["LWH M1942", "rhsusf_lwh_helmet_M1942", 25, "hat"],// LWH M1942
  ["LWH MARPAT-D (ESS)", "rhsusf_lwh_helmet_marpatd_ess", 25, "hat"],// LWH MARPAT-D (ESS)
  ["LWH MARPAT-D (Headset/ESS)", "rhsusf_lwh_helmet_marpatd_headset", 25, "hat"], // LWH MARPAT-D (Headset/ESS)
  ["LWH MARPAT-D", "rhsusf_lwh_helmet_marpatd", 25, "hat"],    // LWH MARPAT-D
  ["LWH MARPAT-WD (Black ESS)", "rhsusf_lwh_helmet_marpatwd_blk_ess", 25, "hat"],// LWH MARPAT-WD (Black ESS)
  ["LWH MARPAT-WD (Tan ESS)", "rhsusf_lwh_helmet_marpatwd_ess", 25, "hat"],  // LWH MARPAT-WD (Tan ESS)
  ["LWH MARPAT-WD (Headset/Black ESS)", "rhsusf_lwh_helmet_marpatwd_headset_blk", 25, "hat"],  // LWH MARPAT-WD (Headset/Black ESS)
  ["LWH MARPAT-WD (Headset)", "rhsusf_lwh_helmet_marpatwd_headset_blk2", 25, "hat"], // LWH MARPAT-WD (Headset)
  ["LWH MARPAT-WD (Headset/Tan ESS)", "rhsusf_lwh_helmet_marpatwd_headset", 25, "hat"],// LWH MARPAT-WD (Headset/Tan ESS)
  ["LWH MARPAT-WD", "rhsusf_lwh_helmet_marpatwd", 25, "hat"],   // LWH MARPAT-WD
  ["MICH 2000 (Semi-Arid/Alt)", "rhsusf_mich_bare_alt_semi", 25, "hat"],    // MICH 2000 (Semi-Arid/Alt)
  ["MICH 2000 (Tan/Alt)", "rhsusf_mich_bare_alt_tan", 25, "hat"],     // MICH 2000 (Tan/Alt)
  ["MICH 2000 (Alt)", "rhsusf_mich_bare_alt", 25, "hat"],   // MICH 2000 (Alt)
  ["MICH 2000 (Headset)", "rhsusf_mich_bare_headset", 25, "hat"],     // MICH 2000 (Headset)
  ["MICH 2000 (Norotos/Alt/Headset)", "rhsusf_mich_bare_norotos_alt_headset", 25, "hat"],// MICH 2000 (Norotos/Alt/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/Alt/Headset)", "rhsusf_mich_bare_norotos_alt_semi_headset", 25, "hat"], // MICH 2000 (Semi-Arid/Norotos/Alt/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/Alt)", "rhsusf_mich_bare_norotos_alt_semi", 25, "hat"], // MICH 2000 (Semi-Arid/Norotos/Alt)
  ["MICH 2000 (Tan/Norotos/Alt/Headset)", "rhsusf_mich_bare_norotos_alt_tan_headset", 25, "hat"],// MICH 2000 (Tan/Norotos/Alt/Headset)
  ["MICH 2000 (Tan/Norotos/Alt)", "rhsusf_mich_bare_norotos_alt_tan", 25, "hat"],// MICH 2000 (Tan/Norotos/Alt)
  ["MICH 2000 (Norotos/Alt)", "rhsusf_mich_bare_norotos_alt", 25, "hat"], // MICH 2000 (Norotos/Alt)
  ["MICH 2000 (Norotos/ARC/Alt/Headset)", "rhsusf_mich_bare_norotos_arc_alt_headset", 25, "hat"],// MICH 2000 (Norotos/ARC/Alt/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/ARC/Alt/Headset)", "rhsusf_mich_bare_norotos_arc_alt_semi_headset", 25, "hat"],                   // MICH 2000 (Semi-Arid/Norotos/ARC/Alt/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/ARC/Alt)", "rhsusf_mich_bare_norotos_arc_alt_semi", 25, "hat"],   // MICH 2000 (Semi-Arid/Norotos/ARC/Alt)
  ["MICH 2000 (Tan/Norotos/ARC/Alt/Headset)", "rhsusf_mich_bare_norotos_arc_alt_tan_headset", 25, "hat"],                    // MICH 2000 (Tan/Norotos/ARC/Alt/Headset)
  ["MICH 2000 (Tan/Norotos/ARC/Alt)", "rhsusf_mich_bare_norotos_arc_alt_tan", 25, "hat"],// MICH 2000 (Tan/Norotos/ARC/Alt)
  ["MICH 2000 (Norotos/ARC/Alt)", "rhsusf_mich_bare_norotos_arc_alt", 25, "hat"],// MICH 2000 (Norotos/ARC/Alt)
  ["MICH 2000 (Norotos/ARC/Headset)", "rhsusf_mich_bare_norotos_arc_headset", 25, "hat"],// MICH 2000 (Norotos/ARC/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/ARC/Headset)", "rhsusf_mich_bare_norotos_arc_semi_headset", 25, "hat"], // MICH 2000 (Semi-Arid/Norotos/ARC/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/ARC)", "rhsusf_mich_bare_norotos_arc_semi", 25, "hat"], // MICH 2000 (Semi-Arid/Norotos/ARC)
  ["MICH 2000 (Tan/Norotos/ARC)", "rhsusf_mich_bare_norotos_arc_tan", 25, "hat"],// MICH 2000 (Tan/Norotos/ARC)
  ["MICH 2000 (Norotos/ARC)", "rhsusf_mich_bare_norotos_arc", 25, "hat"], // MICH 2000 (Norotos/ARC)
  ["MICH 2000 (Norotos/Headset)", "rhsusf_mich_bare_norotos_headset", 25, "hat"],// MICH 2000 (Norotos/Headset)
  ["MICH 2000 (Semi-Arid/Norotos/Headset)", "rhsusf_mich_bare_norotos_semi_headset", 25, "hat"],   // MICH 2000 (Semi-Arid/Norotos/Headset)
  ["MICH 2000 (Semi-Arid/Norotos)", "rhsusf_mich_bare_norotos_semi", 25, "hat"],// MICH 2000 (Semi-Arid/Norotos)
  ["MICH 2000 (Tan/Norotos/Headset)", "rhsusf_mich_bare_norotos_tan_headset", 25, "hat"],// MICH 2000 (Tan/Norotos/Headset)
  ["MICH 2000 (Tan/Norotos)", "rhsusf_mich_bare_norotos_tan", 25, "hat"], // MICH 2000 (Tan/Norotos)
  ["MICH 2000 (Norotos)", "rhsusf_mich_bare_norotos", 25, "hat"],     // MICH 2000 (Norotos)
  ["MICH 2000 (Semi-Arid/Headset)", "rhsusf_mich_bare_semi_headset", 25, "hat"],// MICH 2000 (Semi-Arid/Headset)
  ["MICH 2000 (Semi-Arid)", "rhsusf_mich_bare_semi", 25, "hat"],  // MICH 2000 (Semi-Arid)
  ["MICH 2000 (Tan/Headset)", "rhsusf_mich_bare_tan_headset", 25, "hat"], // MICH 2000 (Tan/Headset)
  ["MICH 2000 (Tan)", "rhsusf_mich_bare_tan", 25, "hat"],   // MICH 2000 (Tan)
  ["MICH 2000", "rhsusf_mich_bare", 25, "hat"],       // MICH 2000
  ["MICH 2000 MARPAD-D (Alt/Headset)", "rhsusf_mich_helmet_marpatd_alt_headset", 25, "hat"],  // MICH 2000 MARPAD-D (Alt/Headset)
  ["MICH 2000 MARPAD-D (Alt)", "rhsusf_mich_helmet_marpatd_alt", 25, "hat"],  // MICH 2000 MARPAD-D (Alt)
  ["MICH 2000 MARPAD-D (Headset)", "rhsusf_mich_helmet_marpatd_headset", 25, "hat"],// MICH 2000 MARPAD-D (Headset)
  ["MICH 2000 MARPAD-D (Norotos/ARC/Headset)", "rhsusf_mich_helmet_marpatd_norotos_arc_headset", 25, "hat"],                  // MICH 2000 MARPAD-D (Norotos/ARC/Headset)
  ["MICH 2000 MARPAD-D (Norotos/ARC)", "rhsusf_mich_helmet_marpatd_norotos_arc", 25, "hat"],  // MICH 2000 MARPAD-D (Norotos/ARC)
  ["MICH 2000 MARPAD-D (Norotos/Headset)", "rhsusf_mich_helmet_marpatd_norotos_headset", 25, "hat"],// MICH 2000 MARPAD-D (Norotos/Headset)
  ["MICH 2000 MARPAD-D (Norotos)", "rhsusf_mich_helmet_marpatd_norotos", 25, "hat"],// MICH 2000 MARPAD-D (Norotos)
  ["MICH 2000 MARPAD-D", "rhsusf_mich_helmet_marpatd", 25, "hat"],   // MICH 2000 MARPAD-D
  ["MICH 2000 MARPAD-WD (Alt/Headset)", "rhsusf_mich_helmet_marpatwd_alt_headset", 25, "hat"],// MICH 2000 MARPAD-WD (Alt/Headset)
  ["MICH 2000 MARPAD-WD (Alt)", "rhsusf_mich_helmet_marpatwd_alt", 25, "hat"], // MICH 2000 MARPAD-WD (Alt)
  ["MICH 2000 MARPAD-WD (Headset)", "rhsusf_mich_helmet_marpatwd_headset", 25, "hat"], // MICH 2000 MARPAD-WD (Headset)
  ["MICH 2000 MARPAD-WD (Norotos/ARC/Headset)", "rhsusf_mich_helmet_marpatwd_norotos_arc_headset", 25, "hat"],                 // MICH 2000 MARPAD-WD (Norotos/ARC/Headset)
  ["MICH 2000 MARPAD-WD (Norotos/ARC)", "rhsusf_mich_helmet_marpatwd_norotos_arc", 25, "hat"], // MICH 2000 MARPAD-WD (Norotos/ARC)
  ["MICH 2000 MARPAD-WD (Norotos/Headset)", "rhsusf_mich_helmet_marpatwd_norotos_headset", 25, "hat"],                     // MICH 2000 MARPAD-WD (Norotos/Headset)
  ["MICH 2000 MARPAD-WD (Norotos)", "rhsusf_mich_helmet_marpatwd_norotos", 25, "hat"], // MICH 2000 MARPAD-WD (Norotos)
  ["MICH 2000 MARPAD-WD", "rhsusf_mich_helmet_marpatwd", 25, "hat"],  // MICH 2000 MARPAD-WD
  ["FAST Ballistic (AOR1/Headset/NSW)", "rhsusf_opscore_aor1_pelt_nsw", 25, "hat"], // FAST Ballistic (AOR1/Headset/NSW)
  ["FAST Ballistic (AOR1/Headset)", "rhsusf_opscore_aor1_pelt", 25, "hat"],     // FAST Ballistic (AOR1/Headset)
  ["FAST Ballistic (AOR1)", "rhsusf_opscore_aor1", 25, "hat"],    // FAST Ballistic (AOR1)
  ["FAST Ballistic (AOR2/Headset/NSW)", "rhsusf_opscore_aor2_pelt_nsw", 25, "hat"], // FAST Ballistic (AOR2/Headset/NSW)
  ["FAST Ballistic (AOR2/Headset)", "rhsusf_opscore_aor2_pelt", 25, "hat"],     // FAST Ballistic (AOR2/Headset)
  ["FAST Ballistic (AOR2)", "rhsusf_opscore_aor2", 25, "hat"],    // FAST Ballistic (AOR2)
  ["FAST Ballistic (Black/Headset)", "rhsusf_opscore_bk_pelt", 25, "hat"], // FAST Ballistic (Black/Headset)
  ["FAST Ballistic (Black)", "rhsusf_opscore_bk", 25, "hat"],      // FAST Ballistic (Black)
  ["FAST Ballistic (Coyote Cover/Headset/NSW)", "rhsusf_opscore_coy_cover_pelt", 25, "hat"],// FAST Ballistic (Coyote Cover/Headset/NSW)
  ["FAST Ballistic (Coyote Cover)", "rhsusf_opscore_coy_cover", 25, "hat"],     // FAST Ballistic (Coyote Cover)
  ["FAST Ballistic (Foliage Green/Headset/Cam)", "rhsusf_opscore_fg_pelt_cam", 25, "hat"],   // FAST Ballistic (Foliage Green/Headset/Cam)
  ["FAST Ballistic (Foliage Green/Headset/NSW)", "rhsusf_opscore_fg_pelt_nsw", 25, "hat"],   // FAST Ballistic (Foliage Green/Headset/NSW)
  ["FAST Ballistic (Foliage Green/Headset)", "rhsusf_opscore_fg_pelt", 25, "hat"], // FAST Ballistic (Foliage Green/Headset)
  ["FAST Ballistic (Foliage Green)", "rhsusf_opscore_fg", 25, "hat"],      // FAST Ballistic (Foliage Green)
  ["FAST Maritime (Foliage Green/Headset)", "rhsusf_opscore_mar_fg_pelt", 25, "hat"],   // FAST Maritime (Foliage Green/Headset)
  ["FAST Maritime (Foliage Green)", "rhsusf_opscore_mar_fg", 25, "hat"],  // FAST Maritime (Foliage Green)
  ["FAST Maritime (Urban Tan/Headset)", "rhsusf_opscore_mar_ut_pelt", 25, "hat"],   // FAST Maritime (Urban Tan/Headset)
  ["FAST Maritime (Urban Tan)", "rhsusf_opscore_mar_ut", 25, "hat"],  // FAST Maritime (Urban Tan)
  ["FAST Ballistic (Multicam Cover/Headset/NSW/Cam)", "rhsusf_opscore_mc_cover_pelt_cam", 25, "hat"],// FAST Ballistic (Multicam Cover/Headset/NSW/Cam)
  ["FAST Ballistic (Multicam Cover/Headset/NSW)", "rhsusf_opscore_mc_cover_pelt_nsw", 25, "hat"],// FAST Ballistic (Multicam Cover/Headset/NSW)
  ["FAST Ballistic (Multicam Cover/Headset)", "rhsusf_opscore_mc_cover_pelt", 25, "hat"], // FAST Ballistic (Multicam Cover/Headset)
  ["FAST Ballistic (Multicam Cover)", "rhsusf_opscore_mc_cover", 25, "hat"],// FAST Ballistic (Multicam Cover)
  ["FAST Ballistic (Multicam Paint/Headset/NSW)", "rhsusf_opscore_mc_pelt_nsw", 25, "hat"],   // FAST Ballistic (Multicam Paint/Headset/NSW)
  ["FAST Ballistic (Multicam Paint/Headset)", "rhsusf_opscore_mc_pelt", 25, "hat"], // FAST Ballistic (Multicam Paint/Headset)
  ["FAST Ballistic (Multicam Paint)", "rhsusf_opscore_mc", 25, "hat"],      // FAST Ballistic (Multicam Paint)
  ["FAST Ballistic (Paint/Headset/NSW/Cam)", "rhsusf_opscore_paint_pelt_nsw_cam", 25, "hat"], // FAST Ballistic (Paint/Headset/NSW/Cam)
  ["FAST Ballistic (Paint/Headset/NSW)", "rhsusf_opscore_paint_pelt_nsw", 25, "hat"],// FAST Ballistic (Paint/Headset/NSW)
  ["FAST Ballistic (Paint/Headset)", "rhsusf_opscore_paint_pelt", 25, "hat"],    // FAST Ballistic (Paint/Headset)
  ["FAST Ballistic (Paint)", "rhsusf_opscore_paint", 25, "hat"],   // FAST Ballistic (Paint)
  ["FAST Ballistic (Ranger Green Cover/Headset/NSW)", "rhsusf_opscore_rg_cover_pelt", 25, "hat"], // FAST Ballistic (Ranger Green Cover/Headset/NSW)
  ["FAST Ballistic (Ranger Green Cover)", "rhsusf_opscore_rg_cover", 25, "hat"],// FAST Ballistic (Ranger Green Cover)
  ["FAST Ballistic (Urban Tan/Headset/Cam)", "rhsusf_opscore_ut_pelt_cam", 25, "hat"],   // FAST Ballistic (Urban Tan/Headset/Cam)
  ["FAST Ballistic (Urban Tan/Headset/NSW/Cam)", "rhsusf_opscore_ut_pelt_nsw_cam", 25, "hat"],  // FAST Ballistic (Urban Tan/Headset/NSW/Cam)
  ["FAST Ballistic (Urban Tan/Headset/NSW)", "rhsusf_opscore_ut_pelt_nsw", 25, "hat"],   // FAST Ballistic (Urban Tan/Headset/NSW)
  ["FAST Ballistic (Urban Tan/Headset)", "rhsusf_opscore_ut_pelt", 25, "hat"], // FAST Ballistic (Urban Tan/Headset)
  ["FAST Ballistic (Urban Tan)", "rhsusf_opscore_ut", 25, "hat"],      // FAST Ballistic (Urban Tan)
  ["Patrol Cap OEF-CP", "rhsusf_patrolcap_ocp", 25, "hat"],   // Patrol Cap OEF-CP
  ["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 25, "hat"],   // Patrol Cap UCP
  ["Pro-Tech SF (ESS)", "rhsusf_protech_helmet_ess", 25, "hat"],    // Pro-Tech SF (ESS)
  ["Pro-Tech SF (Rhino/ESS)", "rhsusf_protech_helmet_rhino_ess", 25, "hat"], // Pro-Tech SF (Rhino/ESS)
  ["Pro-Tech SF (Rhino)", "rhsusf_protech_helmet_rhino", 25, "hat"],  // Pro-Tech SF (Rhino)
  ["Pro-Tech S", "rhsusf_protech_helmet", 25, "hat"],  // Pro-Tech S

	//BWMod
	["Ops-Core FAST Helmet", "BWA3_OpsCore", 60, "hat"],
	["Ops-Core FAST Helmet (Camera)", "BWA3_OpsCore_Camera", 60, "hat"],
	["Ops-Core FAST Helmet (Flecktarn)", "BWA3_OpsCore_Fleck", 60, "hat"],
	["Ops-Core FAST Helmet (Flecktarn, Patch)", "BWA3_OpsCore_Fleck_Patch", 60, "hat"],
	["Ops-Core FAST Helmet (Flecktarn, Camera)", "BWA3_OpsCore_Fleck_Camera", 60, "hat"],
	["Ops-Core FAST Helmet (Tropentarn)", "BWA3_OpsCore_Tropen", 60, "hat"],
	["Ops-Core FAST Helmet (Tropentarn, Patch)", "BWA3_OpsCore_Tropen_Patch", 60, "hat"],
	["Ops-Core FAST Helmet (Tropentarn, Camera)", "BWA3_OpsCore_Tropen_Camera", 60, "hat"],
	["Crewman KSK Helmet", "BWA3_CrewmanKSK", 60, "hat"],
	["Crewman KSK Helmet (Flecktarn)", "BWA3_CrewmanKSK_Fleck", 60, "hat"],
	["Crewman KSK Helmet (Tropentarn)", "BWA3_CrewmanKSK_Tropen", 60, "hat"],
	["Crewman KSK Helmet (Headset)", "BWA3_CrewmanKSK_Headset", 60, "hat"],
	["Crewman KSK Flecktarn (Flecktarn, Headset)", "BWA3_CrewmanKSK_Fleck_Headset", 60, "hat"],
	["Crewman KSK Helmet (Tropentarn, Headset)", "BWA3_CrewmanKSK_Tropen_Headset", 60, "hat"],
	["Knighthelm IHS", "BWA3_Knighthelm", 60, "hat"],
	["M92 Helmet (Flecktarn)", "BWA3_M92_Fleck", 60, "hat"],
	["M92 Helmet (Tropentarn)", "BWA3_M92_Tropen", 60, "hat"],
	["M92 Helmet (Multitarn)", "BWA3_M92_Multi", 60, "hat"],
	["Booniehat (Flecktarn)", "BWA3_Booniehat_Fleck", 60, "hat"],
	["Booniehat (Tropentarn)", "BWA3_Booniehat_Tropen", 60, "hat"],
	["Booniehat (Multitarn)", "BWA3_Booniehat_Multi", 60, "hat"],
	["Beret (Panzergrenadiere)", "BWA3_Beret_PzGren", 60, "hat"],
	["Beret (Panzertruppen)", "BWA3_Beret_Pz", 60, "hat"],
	["Beret (Panzeraufklärer)", "BWA3_Beret_PzAufkl", 60, "hat"],
	["Beret (Jäger)", "BWA3_Beret_Jaeger", 60, "hat"],
	["Beret (Fallschirmjäger)", "BWA3_Beret_Falli", 60, "hat"],
	["Beret (Heeresflieger)", "BWA3_Beret_HFlieger", 60, "hat"],
	["Beret (Wachbattalion, Green)", "BWA3_Beret_Wach_green", 60, "hat"],
	["Beret (Wachbattalion, Blue)", "BWA3_Beret_Wach_blue", 60, "hat"],

	//
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Military Cap (Gendarmerie)", "H_MilCap_gen_F", 45, "hat", "noDLC"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 10, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 10, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 10, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 10, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 10, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 10, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	["Beret (Gendarmerie)", "H_Beret_gen_F", 30, "hat", "noDLC"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 10, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 10, "hat"],
	["Cap (Police)", "H_Cap_police", 10, "hat"],
	["Cap (Press)", "H_Cap_press", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 10, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 25, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"]
];

uniformArray = compileFinal str
[
	["Wetsuit", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit", "U_I_Wetsuit", 200, "uni"],
	["Gendarmerie Commander Uniform", "U_B_GEN_Commander_F", 200, "uni", "noDLC"],
	["Gendarmerie Uniform", "U_B_GEN_Soldier_F", 200, "uni", "noDLC"],
	["Gendarmerie Commander Uniform", "U_O_GEN_Commander_F", 200, "uni", "noDLC"],
	["Gendarmerie Uniform", "U_O_GEN_Soldier_F", 200, "uni", "noDLC"],
	["Light Ghillie", "U_B_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_O_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_I_GhillieSuit", 200, "uni"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 200, "uni"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 200, "uni"],
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 2000, "uni"],
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 1000, "uni"],
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 1000, "uni"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 1000, "uni"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 200, "uni"],
	["CBRN Suit (AAF)", "U_I_CBRN_Suit_01_AAF_F", 200, "uni"],
	["CBRN Suit (Blue)", "U_C_CBRN_Suit_01_Blue_F", 200, "uni"],
	["CBRN Suit (LDF)", "U_I_E_CBRN_Suit_01_EAF_F", 200, "uni"],
	["CBRN Suit (MTP)", "U_B_CBRN_Suit_01_MTP_F", 200, "uni"],
	["CBRN Suit (Tropic)", "U_B_CBRN_Suit_01_Tropic_F", 200, "uni"],
	["CBRN Suit (White)", "U_C_CBRN_Suit_01_White_F", 200, "uni"],
	["CBRN Suit (Woodland)", "U_B_CBRN_Suit_01_Wdl_F", 200, "uni"],
	["Granit-B Suit", "U_O_R_Gorka_01_F", 200, "uni"],
	["Granit-B Suit (Weathered)", "U_O_R_Gorka_01_brown_F", 200, "uni"],
	["Granit-T Suit", "U_O_R_Gorka_01_camo_F", 200, "uni"],
	["Granit-N Suit", "U_O_R_Gorka_01_black_F", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 25, "uni"],
	["Default Uniform (CSAT)", "U_O_officer_noInsignia_hex_F", 25, "uni", "noDLC"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 25, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 25, "uni"],
	["Recon Fatigues (Tropic)", "U_B_T_Soldier_SL_F", 25, "uni", "noDLC"],
	["Recon Fatigues (Woodland)", "U_B_CombatUniform_vest_mcam_wdl_f", 25, "uni", "noDLC"],
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 25, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 25, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 25, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 25, "uni"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 25, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 25, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 25, "uni"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 50, "uni", "noDLC"],
	["Officer Fatigues", "U_I_OfficerUniform", 25, "uni"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 25, "uni"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 25, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_BG_leader", 25, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_OG_leader", 25, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_IG_leader", 25, "uni"],

	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/

	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],

	// RHS
	["G3 Uniform (AOR)", "rhs_uniform_g3_aor2", 500, "uni"],
	["G3 Uniform (Black)", "rhs_uniform_g3_blk", 500, "uni"],
	["G3 Uniform (M81)", "rhs_uniform_g3_m81", 500, "uni"],
	["G3 Uniform (MultiCam)", "rhs_uniform_g3_mc", 500, "uni"],
	["G3 Uniform (Ranger Green)", "rhs_uniform_g3_rgr", 500, "uni"],
	["G3 Uniform (Tan)", "rhs_uniform_g3_tan", 500, "uni"],
	["Airman Battle Uniform", "rhs_uniform_abu", 500, "uni"],
	["Army Combat Uniform (OCP)", "rhs_uniform_acu_ocp", 500, "uni"],
	["Army Combat Uniform (OEF-CP)", "rhs_uniform_acu_oefcp", 500, "uni"],
	["Army Combat Uniform (UCP)", "rhs_uniform_acu_ucp", 500, "uni"],
	["Army Combat Uniform (UCP-D)", "rhs_uniform_acu_ucpd", 500, "uni"],
	["Battle Dress Uniform (ERDL)", "rhs_uniform_bdu_erdl", 500, "uni"],
	["Combat Uniform OCP","rhs_uniform_cu_ocp", 500, "uni"],
	["Combat Uniform OCP (Patchless)","rhs_uniform_cu_ocp_patchless", 500, "uni"],
	["Combat Uniform OCP (101st Airborne Div.)", "rhs_uniform_cu_ocp_101st", 500, "uni"],
	["Combat Uniform OCP (10th Mountain Div.)", "rhs_uniform_cu_ocp_10th", 500, "uni"],
	["Combat Uniform OCP (1st Cavalry Div.)", "rhs_uniform_cu_ocp_1stcav", 500, "uni"],
	["Combat Uniform OCP (82nd Airborne Div.)", "rhs_uniform_cu_ocp_82nd", 500, "uni"],
	["Combat Uniform UCP", "rhs_uniform_cu_ucp", 500, "uni"],
	["Combat Uniform UCP (Patchless)", "rhs_uniform_cu_ucp_patchless", 500, "uni"],
	["Combat Uniform UCP (101st Airborne Div.)", "rhs_uniform_cu_ucp_101st", 500, "uni"],
	["Combat Uniform UCP (10th Mountain Div.)", "rhs_uniform_cu_ucp_10th", 500, "uni"],
	["Combat Uniform UCP (1st Cavalry Div.)", "rhs_uniform_cu_ucp_1stcav", 500, "uni"],
	["Combat Uniform UCP (82nd Airborne Div.)", "rhs_uniform_cu_ucp_82nd", 500, "uni"],
	["Combat Uniform UCP", "rhs_uniform_cu_ucp", 500, "uni"],
	["FROG MARPAT-D", "rhs_uniform_FROG01_d", 500, "uni"],
	["FROG MARPAT-WD", "rhs_uniform_FROG01_wd", 500, "uni"],
	["FROG M81","rhs_uniform_FROG01_m81", 500, "uni"],
	["6hs122 (Spring)","rhs_uniform_6hs122_v1", 500, "uni"],
	["6hs122 (Spring/Gloves)","rhs_uniform_6hs122_gloves_v1", 500, "uni"],
	["6hs122 (Fall)","rhs_uniform_6hs122_v2", 500, "uni"],
	["6hs122 (Fall/Gloves)","rhs_uniform_6hs122_gloves_v2", 500, "uni"],
	["Cossack Uniform","rhs_uniform_cossack", 500, "uni"],
	["DF-15 Flight coverall","rhs_uniform_df15", 500, "uni"],
	["DF-15 Flight coverall (Tan)","rhs_uniform_df15_tan", 500, "uni"],
	["EMR (Desert)","rhs_uniform_emr_des_patchless", 500, "uni"],
	["EMR (Patchless/Desert)","rhs_uniform_emr_patchless", 500, "uni"],
	["Flora","rhs_uniform_flora", 500, "uni"],
	["Flora (Patchless)","rhs_uniform_flora_patchless", 500, "uni"],
	["M-Flora (Patchless)","rhs_uniform_mflora_patchless", 500, "uni"],
	["Flora Alt. (Patchless)","rhs_uniform_flora_patchless_alt", 500, "uni"],
	["Gorka 1 Afghanka","rhs_uniform_gorka_1_a", 500, "uni"],
	["Gorka 1 Berezka","rhs_uniform_gorka_1_b", 500, "uni"],
	["Gorka (Green)","rhs_uniform_gorka_r_g", 500, "uni"],
	["Gorka (Green/Gloves)","rhs_uniform_gorka_r_g_gloves", 500, "uni"],
	["Gorka (Yellow)","rhs_uniform_gorka_r_y", 500, "uni"],
	["Gorka (Yellow/Gloves)","rhs_uniform_gorka_r_y_gloves", 500, "uni"],
	["M88 (Patchless)","rhs_uniform_m88_patchless", 500, "uni"],
	//BWMod
	["IdZ Uniform (Flecktarn)","BWA3_Uniform_Fleck", 500, "uni"],
	["IdZ Uniform (Tropentarn)","BWA3_Uniform_Tropen", 500, "uni"],
	["IdZ Uniform (Multitarn)","BWA3_Uniform_Multi", 500, "uni"],
	["IdZ Uniform (Flecktarn, Tee)","BWA3_Uniform_tee_Fleck", 500, "uni"],
	["IdZ Uniform (Tropentarn, Tee)","BWA3_Uniform_tee_Tropen", 500, "uni"],
	["IdZ Uniform (Multitarn, Tee)","BWA3_Uniform_tee_Multi", 500, "uni"],
	["IdZ Uniform (Flecktarn, Sleeves)","BWA3_Uniform_sleeves_Fleck", 500, "uni"],
	["IdZ Uniform (Tropentarn, Sleeves)","BWA3_Uniform_sleeves_Tropen", 500, "uni"],
	["IdZ Uniform (Multitarn, Sleeves)","BWA3_Uniform_sleeves_Multi", 500, "uni"],
	["IdZ Ghillie suit (Flecktarn)","BWA3_Uniform_Ghillie_Fleck", 500, "uni"],
	["IdZ Ghillie suit (Tropentarn)","BWA3_Uniform_Ghillie_Tropen", 500, "uni"],
	["IdZ Ghillie suit (Multitarn)","BWA3_Uniform_Ghillie_Multi", 500, "uni"],
	["Boilersuit (Flecktarn)","BWA3_Uniform_Crew_Fleck", 500, "uni"],
	["Boilersuit (Tropentarn)","BWA3_Uniform_Crew_Tropen", 500, "uni"],
	["Boilersuit (Multitarn)","BWA3_Uniform_Crew_Multi", 500, "uni"],
	["Boilersuit (Heli Pilot)","BWA3_Uniform_Helipilot", 500, "uni"],
	["BW Uniform Alt (Flecktarn)","BWA3_Uniform2_Fleck", 500, "uni"],
	["BW Uniform Alt (Tropentarn)","BWA3_Uniform2_Tropen", 500, "uni"],
	["BW Uniform Alt (Multitarn)","BWA3_Uniform2_Multi", 500, "uni"],
	["BW Uniform Alt (Flecktarn, Sleeves)","BWA3_Uniform2_sleeves_Fleck", 500, "uni"],
	["BW Uniform Alt (Tropentarn, Sleeves)","BWA3_Uniform2_sleeves_Tropen", 500, "uni"],
	["BW Uniform Alt (Multitarn, Sleeves)","BWA3_Uniform2_sleeves_Multi", 500, "uni"],
	["BW Ghillie suit Alt (Flecktarn)","BWA3_Uniform2_Ghillie_Fleck", 500, "uni"],
	["BW Ghillie suit Alt (Tropentarn)","BWA3_Uniform2_Ghillie_Tropen", 500, "uni"],
	["BW Ghillie suit Alt (Multitarn)","BWA3_Uniform2_Ghillie_Multi", 500, "uni"],

	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/

	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", 200, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", 200, "vest"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", 200, "vest", "noDLC"],
	["Carrier Lite (Woodland)", "V_PlateCarrier1_wdl", 200, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", 200, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", 200, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", 200, "vest"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", 200, "vest", "noDLC"],
	["Carrier Rig (Woodland)", "V_PlateCarrier2_wdl", 200, "vest", "noDLC"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", 200, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", 200, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", 200, "vest"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", 200, "vest", "noDLC"],
	["Carrier GL Rig (Woodland)", "V_PlateCarrierGL_wdl", 200, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", 200, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", 200, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", 200, "vest"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", 200, "vest", "noDLC"],
	["Carrier Special Rig (Woodland)", "V_PlateCarrierSpec_wdl", 200, "vest", "noDLC"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", 200, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", 200, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", 200, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", 200, "vest"],
	["Modular Carrier GL Rig (LDF)", "V_CarrierRigKBT_01_heavy_EAF_F", 200, "vest"],
	["Modular Carrier GL Rig (Olive)", "V_CarrierRigKBT_01_heavy_Olive_F", 200, "vest"],
	["Modular Carrier Lite (LDF)", "V_CarrierRigKBT_01_light_EAF_F", 200, "vest"],
	["Modular Carrier Lite (Olive)", "V_CarrierRigKBT_01_light_Olive_F", 200, "vest"],
	["Modular Carrier Vest (LDF)", "V_CarrierRigKBT_01_EAF_F", 200, "vest"],
	["Modular Carrier Vest (Olive)", "V_CarrierRigKBT_01_Olive_F", 200, "vest"],
	["LBV Harness", "V_HarnessO_brn", 200, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", 200, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", 200, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", 200, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", 200, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", 200, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", 200, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", 200, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", 200, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", 200, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", 200, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", 200, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", 200, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", 200, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", 200, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", 200, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", 200, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", 200, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", 200, "vest"],
	["Gendarmerie Vest", "V_TacVest_gen_F", 200, "vest", "noDLC"],
	["Raven Night Vest", "V_TacVestIR_blk", 200, "vest"],
	["Press Vest", "V_Press_F", 200, "vest"],
	["Deck Crew Vest (Blue)", "V_DeckCrew_blue_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Green)", "V_DeckCrew_green_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Yellow)", "V_DeckCrew_yellow_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Red)", "V_DeckCrew_red_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Brown)", "V_DeckCrew_brown_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (Violet)", "V_DeckCrew_violet_F", 200, "vest", "noDLC"],
	["Deck Crew Vest (White)", "V_DeckCrew_white_F", 200, "vest", "noDLC"],

	//RHS
	["IOTV (Grenadier/OEF-CP)", "rhsusf_iotv_ocp_Grenadier", 200, "vest"],
	["IOTV (Medic/OEF-CP)", "rhsusf_iotv_ocp_Medic", 200, "vest"],
	["IOTV (Repair/OEF-CP)", "rhsusf_iotv_ocp_Repair", 200, "vest"],
	["IOTV (Rifleman/OEF-CP)", "rhsusf_iotv_ocp_Rifleman", 200, "vest"],
	["IOTV (SAW/OCP)", "rhsusf_iotv_ocp_SAW", 200, "vest"],
	["IOTV (Squadleader/OCP)", "rhsusf_iotv_ocp_Squadleader", 200, "vest"],
	["IOTV (Teamleader/OCP)", "rhsusf_iotv_ocp_Teamleader", 200, "vest"],
	["IOTV (OEF-CP)", "rhsusf_iotv_ocp", 200, "vest"],
	["IOTV (Grenadier/UCP)", "rhsusf_iotv_ucp_Grenadier", 200, "vest"],
	["IOTV (Medic/UCP)", "rhsusf_iotv_ucp_Medic", 200, "vest"],
	["IOTV (Repair/UCP)", "rhsusf_iotv_ucp_Repair", 200, "vest"],
	["IOTV (Rifleman/UCP)", "rhsusf_iotv_ucp_Rifleman", 200, "vest"],
	["IOTV (SAW/UCP)", "rhsusf_iotv_ucp_SAW", 200, "vest"],
	["IOTV (Squadleader/UCP)", "rhsusf_iotv_ucp_Squadleader", 200, "vest"],
	["IOTV (Teamleader/UCP)", "rhsusf_iotv_ucp_Teamleader", 200, "vest"],
	["IOTV (UCP)", "rhsusf_iotv_ucp", 200, "vest"],
	["MBAV (Grenadier)", "rhsusf_mbav_grenadier", 200, "vest"],
	["MBAV (Light)", "rhsusf_mbav_light", 200, "vest"],
	["MBAV (Medic)", "rhsusf_mbav_medic", 200, "vest"],
	["MBAV (Machinegunner)", "rhsusf_mbav_mg", 200, "vest"],
	["MBAV (Rifleman)", "rhsusf_mbav_rifleman", 200, "vest"],
	["MBAV", "rhsusf_mbav", 200, "vest"],
	["Plateframe (Grenadier)", "rhsusf_plateframe_grenadier", 200, "vest"],
	["Plateframe (Light)", "rhsusf_plateframe_light", 200, "vest"],
	["Plateframe (Machinegunner)", "rhsusf_plateframe_machinegunner", 200, "vest"],
	["Plateframe (Marksman)", "rhsusf_plateframe_marksman", 200, "vest"],
	["Plateframe (Medic)", "rhsusf_plateframe_medic", 200, "vest"],
	["Plateframe (Rifleman)", "rhsusf_plateframe_rifleman", 200, "vest"],
	["Plateframe", "rhsusf_plateframe_sapi", 200, "vest"],
	["Plateframe (Teamleader)", "rhsusf_plateframe_teamleader", 200, "vest"],
	["SPC (Corpsman)", "rhsusf_spc_corpsman", 200, "vest"],
	["SPC (Corpsman)", "rhsusf_spc_crewman", 200, "vest"],
	["SPC (IAR)", "rhsusf_spc_iar", 200, "vest"],
	["SPC (Light)", "rhsusf_spc_light", 200, "vest"],
	["SPC (Marksman)", "rhsusf_spc_marksman", 200, "vest"],
	["SPC (Machinegunner)", "rhsusf_spc_mg", 200, "vest"],
	["SPC (Patchless/Radio)", "rhsusf_spc_patchless_radio", 200, "vest"],
	["SPC (Patchless)", "rhsusf_spc_patchless", 200, "vest"],
	["SPC (Rifleman)", "rhsusf_spc_rifleman", 200, "vest"],
	["SPC (Scout Sniper)", "rhsusf_spc_sniper", 200, "vest"],
	["SPC (Squadleader)", "rhsusf_spc_squadleader", 200, "vest"],
	["SPC (Teamleader)", "rhsusf_spc_teamleader", 200, "vest"],
	["SPC", "rhsusf_spc", 200, "vest"],
	["SPCS (Crewman/OEF-CP)", "rhsusf_spcs_ocp_crewman", 200, "vest"],
	["SPCS (Grenadier/OEF-CP)", "rhsusf_spcs_ocp_grenadier", 200, "vest"],
	["SPCS (Machinegunner/OEF-CP)", "rhsusf_spcs_ocp_machinegunner", 200, "vest"],
	["SPCS (Medic/OEF-CP)", "rhsusf_spcs_ocp_medic", 200, "vest"],
	["SPCS (Rifleman Alt/OEF-CP)", "rhsusf_spcs_ocp_rifleman_alt", 200, "vest"],
	["SPCS (Rifleman/OEF-CP)", "rhsusf_spcs_ocp_rifleman", 200, "vest"],
	["SPCS (SAW/OEF-CP)", "rhsusf_spcs_ocp_sniper", 200, "vest"],
	["SPCS (Sniper/OEF-CP)", "rhsusf_spcs_ocp_saw", 200, "vest"],
	["SPCS (Squad leader/OEF-CP)", "rhsusf_spcs_ocp_squadleader", 200, "vest"],
	["SPCS (Team leader Alt/OEF-CP)", "rhsusf_spcs_ocp_teamleader_alt", 200, "vest"],
	["SPCS (Team leader/OEF-CP)", "rhsusf_spcs_ocp_teamleader", 200, "vest"],
	["SPCS (OEF-CP)", "rhsusf_spcs_ocp", 200, "vest"],
	["SPCS (Crewman/UCP)", "rhsusf_spcs_ucp_crewman", 200, "vest"],
	["SPCS (Grenadier/UCP)", "rhsusf_spcs_ucp_grenadier", 200, "vest"],
	["SPCS (Machinegunner/UCP)", "rhsusf_spcs_ucp_machinegunner", 200, "vest"],
	["SPCS (Medic/UCP)", "rhsusf_spcs_ucp_medic", 200, "vest"],
	["SPCS (Rifleman Alt/UCP)", "rhsusf_spcs_ucp_rifleman_alt", 200, "vest"],
	["SPCS (Rifleman/UCP)", "rhsusf_spcs_ucp_rifleman", 200, "vest"],
	["SPCS (SAW/UCP)", "rhsusf_spcs_ucp_saw", 200, "vest"],
	["SPCS (Sniper/UCP)", "rhsusf_spcs_ucp_sniper", 200, "vest"],
	["SPCS (Squad Leader/UCP)", "rhsusf_spcs_ucp_squadleader", 200, "vest"],
	["SPCS (Team Leader Alt/UCP)", "rhsusf_spcs_ucp_teamleader_alt", 200, "vest"],
	["SPCS (Team Leader/UCP)", "rhsusf_spcs_ucp_teamleader", 200, "vest"],
	["SPCS (UCP)", "rhsusf_spcs_ucp", 200, "vest"],
	//BWMod
	["IdZ Vest (Flecktarn)", "BWA3_Vest_Fleck", 200, "vest"],
	["IdZ Vest (Tropentarn)", "BWA3_Vest_Tropen", 200, "vest"],
	["IdZ Vest (Multitarn)", "BWA3_Vest_Multi", 200, "vest"],
	["IdZ Vest (Flecktarn) - Rifleman", "BWA3_Vest_Rifleman_Fleck", 200, "vest"],
	["IdZ Vest (Tropentarn) - Rifleman", "BWA3_Vest_Rifleman_Tropen", 200, "vest"],
	["IdZ Vest (Multitarn) - Rifleman", "BWA3_Vest_Rifleman_Multi", 200, "vest"],
	["IdZ Vest (Flecktarn) - Machine Gunner", "BWA3_Vest_MachineGunner_Fleck", 200, "vest"],
	["IdZ Vest (Tropentarn) - Machine Gunner", "BWA3_Vest_MachineGunner_Tropen", 200, "vest"],
	["IdZ Vest (Multitarn) - Machine Gunner", "BWA3_Vest_MachineGunner_Multi", 200, "vest"],
	["IdZ Vest (Flecktarn) - Grenadier", "BWA3_Vest_Grenadier_Fleck", 200, "vest"],
	["IdZ Vest (Tropentarn) - Grenadier", "BWA3_Vest_Grenadier_Tropen", 200, "vest"],
	["IdZ Vest (Multitarn) - Grenadier", "BWA3_Vest_Grenadier_Multi", 200, "vest"],
	["IdZ Vest (Flecktarn) - Medic", "BWA3_Vest_Medic_Fleck", 200, "vest"],
	["IdZ Vest (Multitarn) - Medic", "BWA3_Vest_Medic_Multi", 200, "vest"],
	["IdZ Vest (Flecktarn) - Marksman", "BWA3_Vest_Marksman_Fleck", 200, "vest"],
	["IdZ Vest (Tropentarn) - Marksman", "BWA3_Vest_Marksman_Tropen", 200, "vest"],
	["IdZ Vest (Multitarn) - Marksman", "BWA3_Vest_Marksman_Multi", 200, "vest"],
	["IdZ Vest (Flecktarn) - Squad Leader", "BWA3_Vest_Leader_Fleck", 200, "vest"],
	["IdZ Vest (Tropentarn) - Squad Leader", "BWA3_Vest_Leader_Tropen", 200, "vest"],
	["IdZ Vest (Multitarn) - Squad Leader", "BWA3_Vest_Leader_Multi", 200, "vest"],
	["JPC Vest (Flecktarn) - Rifleman", "BWA3_Vest_JPC_Rifleman_Fleck", 200, "vest"],
	["JPC Vest (Tropentarn) - Rifleman", "BWA3_Vest_JPC_Rifleman_Tropen", 200, "vest"],
	["JPC Vest (Multitarn) - Rifleman", "BWA3_Vest_JPC_Rifleman_Multi", 200, "vest"],
	["JPC Vest (Flecktarn) - Squad Leader", "BWA3_Vest_JPC_Leader_Fleck", 200, "vest"],
	["JPC Vest (Tropentarn) - Squad Leader", "BWA3_Vest_JPC_Leader_Tropen", 200, "vest"],
	["JPC Vest (Multitarn) - Squad Leader", "BWA3_Vest_JPC_Leader_Multi", 200, "vest"],
	["JPC Vest (Flecktarn) - Radioman", "BWA3_Vest_JPC_Radioman_Fleck", 200, "vest"],
	["JPC Vest (Tropentarn) - Radioman", "BWA3_Vest_JPC_Radioman_Tropen", 200, "vest"],
	["JPC Vest (Multitarn) - Radioman", "BWA3_Vest_JPC_Radioman_Multi", 200, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 100, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 100, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 100, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 100, "backpack"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 100, "backpack", "noDLC"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 200, "backpack", "noDLC"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 350, "backpack", "noDLC"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 425, "backpack", "noDLC"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 425, "backpack", "noDLC"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 425, "backpack", "noDLC"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 500, "backpack", "noDLC"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 1000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 1000, "backpack", "noDLC"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 1000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 1000, "backpack", "noDLC"],

	//BWMod
	["Assault Pack (Flecktarn)", "BWA3_AssaultPack_Fleck", 1000, "backpack"],
	["Assault Pack (Tropentarn)", "BWA3_AssaultPack_Tropen", 1000, "backpack"],
	["Assault Pack (Multitarn)", "BWA3_AssaultPack_Multi", 1000, "backpack"],
	["Assault Pack (Flecktarn, Medic)", "BWA3_AssaultPack_Fleck_Medic", 1000, "backpack"],
	["Assault Pack (Tropentarn, Medic)", "BWA3_AssaultPack_Tropen_Medic", 1000, "backpack"],
	["Assault Pack (Multitarn, Medic)", "BWA3_AssaultPack_Multi_Medic", 1000, "backpack"],
	["Kitbag (Flecktarn)", "BWA3_Kitbag_Fleck", 1000, "backpack"],
	["Kitbag (Tropentarn)", "BWA3_Kitbag_Tropen", 1000, "backpack"],
	["Kitbag (Multitarn)", "BWA3_Kitbag_Multi", 1000, "backpack"],
	["Kitbag (Flecktarn, Medic)", "BWA3_Kitbag_Fleck_Medic", 1000, "backpack"],
	["Kitbag (Tropentarn, Medic)", "BWA3_Kitbag_Tropen_Medic", 1000, "backpack"],
	["Kitbag (Multitarn, Medic)", "BWA3_Kitbag_Multi_Medic", 1000, "backpack"],
	["Tactical Backpack (Flecktarn)", "BWA3_TacticalPack_Fleck", 1000, "backpack"],
	["Tactical Backpack (Tropentarn)", "BWA3_TacticalPack_Tropen", 1000, "backpack"],
	["Tactical Backpack (Multitarn)", "BWA3_TacticalPack_Multi", 1000, "backpack"],
	["Tactical Backpack (Flecktarn, Medic)", "BWA3_TacticalPack_Fleck_Medic", 1000, "backpack"],
	["Tactical Backpack (Tropentarn, Medic)", "BWA3_TacticalPack_Tropen_Medic", 1000, "backpack"],
	["Tactical Backpack (Multitarn, Medic)", "BWA3_TacticalPack_Multi_Medic", 1000, "backpack"],
	["Field Pack (Flecktarn)", "BWA3_FieldPack_Fleck", 1000, "backpack"],
	["Field Pack (Tropentarn)", "BWA3_FieldPack_Tropen", 1000, "backpack"],
	["Field Pack (Multitarn)", "BWA3_FieldPack_Multi", 1000, "backpack"],
	["Carryall Backpack (Flecktarn)", "BWA3_Carryall_Fleck", 1000, "backpack"],
	["Carryall Backpack (Tropentarn)", "BWA3_Carryall_Tropen", 1000, "backpack"],
	["Carryall Backpack (Multitarn)", "BWA3_Carryall_Multi", 1000, "backpack"],
	["Patrol Pack (Flecktarn)", "BWA3_PatrolPack_Fleck", 500, "backpack"],
	["Patrol Pack (Tropentarn)", "BWA3_PatrolPack_Tropen", 500, "backpack"],
	["Patrol Pack (Multitarn)", "BWA3_PatrolPack_Multi", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["UAV Terminal", "B_UavTerminal", 150, "gps"],
	["UAV Terminal", "O_UavTerminal", 150, "gps"],
	["UAV Terminal", "I_UavTerminal", 150, "gps"],
	//["AR-2 Darter UAV", "B_UAV_01_backpack_F", 2500, "backpack"],
	//["AR-2 Darter UAV", "O_UAV_01_backpack_F", 2500, "backpack"],
	//["AR-2 Darter UAV", "I_UAV_01_backpack_F", 2500, "backpack"],
	//["AL-6 Pelican UAV", "B_UAV_06_backpack_F", 250, "backpack"],
	//["AL-6 Pelican UAV", "O_UAV_06_backpack_F", 250, "backpack"],
	//["AL-6 Pelican UAV", "I_UAV_06_backpack_F", 250, "backpack"],
	//["AL-6 Pelican Medical UAV", "B_UAV_06_medical_backpack_F", 1000, "backpack"],
	//["AL-6 Pelican Medical UAV", "O_UAV_06_medical_backpack_F", 1000, "backpack"],
	//["AL-6 Pelican Medical UAV", "I_UAV_06_medical_backpack_F", 1000, "backpack"],
//	["AL-6 Pelican Demining UAV", "C_IDAP_UAV_06_antimine_backpack_F", 10000, "backpack"],
	//["ED-1E Camera UGV", "B_UGV_02_Science_backpack_F", 1000, "backpack"],
	//["ED-1E Camera UGV", "O_UGV_02_Science_backpack_F", 1000, "backpack"],
	//["ED-1E Camera UGV", "I_UGV_02_Science_backpack_F", 1000, "backpack"],
	//["ED-1D Demining UGV", "B_UGV_02_Demining_backpack_F", 5000, "backpack"],
	//["ED-1D Demining UGV", "O_UGV_02_Demining_backpack_F", 5000, "backpack"],
//	["ED-1D Demining UGV", "I_UGV_02_Demining_backpack_F", 5000, "backpack"],
	["Remote Designator (Khaki)", "B_W_Static_Designator_01_weapon_F", 750, "backpack"],
	["Remote Designator (Sand)", "B_Static_Designator_01_weapon_F", 750, "backpack"],
	["Remote Designator (Hex)", "O_Static_Designator_02_weapon_F", 750, "backpack"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],

	//Zombies
	["Zombie Cure", "RyanZombiesAntiVirusCure_Item", 20000, "item", "HIDDEN"],
	["Anti-Zombie Pills", "RyanZombiesAntiVirusTemporary_Item", 10000, "item", "HIDDEN"],

	["Designator Batteries", "rhs_LaserFCSMag", 20, "item"], // Designator Batteries
  ["Designator Batteries", "rhs_LaserMag_ai", 20, "item"], // Designator Batteries
  ["Designator Batteries", "rhs_LaserMag", 20, "item"], // Designator Batteries

	["Mine Detector", "MineDetector", 100, "item"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["NV Goggles (Brown)", "NVGoggles", 100, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 100, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 100, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 100, "nvg", "noDLC"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 300, "nvg", "noDLC"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 300, "nvg", "noDLC"],
	["Compact NVG (Green)", "O_NVGoggles_grn_F", 300, "nvg", "noDLC"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 300, "nvg", "noDLC"],
	["ENVG-II (Black)", "NVGogglesB_blk_F", 2000, "nvg"],
	["ENVG-II (Green)", "NVGogglesB_grn_F", 2000, "nvg"],
	["ENVG-II (Grey)", "NVGogglesB_gry_F", 2000, "nvg"],
	// RHS
	["AN/PVS-14", "rhsusf_ANPVS_14", 2000, "nvg"],
	//
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator (Sand)", "Laserdesignator", 250, "binoc", "noDLC"],
	["Laser Designator (Olive)", "Laserdesignator_03", 250, "binoc", "noDLC"],
	["Laser Designator (Khaki)", "Laserdesignator_01_khk_F", 250, "binoc", "noDLC"],
	["Laser Designator (Hex)", "Laserdesignator_02", 300, "binoc", "noDLC"],
	["Laser Designator (G Hex)", "Laserdesignator_02_ghex_F", 300, "binoc", "noDLC"],
	["IR Designator Grenade", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Designator Grenade", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Designator Grenade", "I_IR_Grenade", 50, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],

	//RHS
	["Ballistic Goggles (Black)", "rhs_ess_black", 10, "gogg"], // Ballistic Goggles (Black)
  ["Ballistic Glasses (Black)", "rhs_googles_black", 10, "gogg"], // Ballistic Glasses (Black)
  ["Ballistic Glasses (Clear)", "rhs_googles_clear", 10, "gogg"], // Ballistic Glasses (Clear)
  ["Ballistic Glasses (Orange)", "rhs_googles_orange", 10, "gogg"], // Ballistic Glasses (Clear)
  ["Ballistic Glasses (Yellow)", "rhs_googles_yellow", 10, "gogg"], // Ballistic Glasses (Clear)
  ["SI Ballistic 2.0 (Black)", "rhsusf_oakley_goggles_blk", 10, "gogg"], // SI Ballistic 2.0 (Black)
  ["SI Ballistic 2.0 (Clear)", "rhsusf_oakley_goggles_clr", 10, "gogg"], // SI Ballistic 2.0 (Clear)
  ["SI Ballistic 2.0 (Yellow)", "rhsusf_oakley_goggles_ylw", 10, "gogg"], // SI Ballistic 2.0 (Yellow)
  ["Shemagh w/ Goggles (Green)", "rhsusf_shemagh_gogg_grn", 10, "gogg"],  // Shemagh w/ Goggles (Green)
  ["Shemagh w/ Goggles (OD)", "rhsusf_shemagh_gogg_od", 10, "gogg"], // Shemagh w/ Goggles (OD)
  ["Shemagh w/ Goggles (Tan)", "rhsusf_shemagh_gogg_tan", 10, "gogg"], // Shemagh w/ Goggles (Tan)
  ["Shemagh w/ Goggles (White)", "rhsusf_shemagh_gogg_white", 10, "gogg"], // Shemagh w/ Goggles (White)
  ["Shemagh (Green)", "rhsusf_shemagh_grn", 10, "gogg"], // Shemagh (Green)
  ["Shemagh (OD)", "rhsusf_shemagh_od", 10, "gogg"], // Shemagh (OD)
  ["Shemagh (Tan)", "rhsusf_shemagh_tan", 10, "gogg"],  // Shemagh (Tan)
  ["Shemagh (White)", "rhsusf_shemagh_white", 10, "gogg"],// Shemagh (White)
  ["Shemagh w/ Goggles (Green/alt)", "rhsusf_shemagh2_gogg_grn", 10, "gogg"], // Shemagh w/ Goggles (Green/alt)
  ["Shemagh w/ Goggles (OD/alt)", "rhsusf_shemagh2_gogg_od", 10, "gogg"], // Shemagh w/ Goggles (OD/alt)
  ["Shemagh w/ Goggles (Tan/alt)", "rhsusf_shemagh2_gogg_tan", 10, "gogg"], // Shemagh w/ Goggles (Tan/alt)
  ["Shemagh w/ Goggles (White/alt)", "rhsusf_shemagh2_gogg_white", 10, "gogg"], // Shemagh w/ Goggles (White/alt)
  ["Shemagh (Green/alt)", "rhsusf_shemagh2_grn", 10, "gogg"], // Shemagh (Green/alt)
  ["Shemagh (OD/alt)", "rhsusf_shemagh2_od", 10, "gogg"], // Shemagh (OD/alt)
	["Shemagh (Tan/alt)", "rhsusf_shemagh2_tan", 10, "gogg"],  // Shemagh (Tan/alt)
  ["Shemagh (White/alt)", "rhsusf_shemagh2_white", 10, "gogg"], // Shemagh (White/alt)

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 200, "gogg"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 250, "gogg"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 200, "gogg"],
	["Stealth Balaclava (Green, Goggles)", "G_Balaclava_TI_G_tna_F", 250, "gogg"],
	["Regulator Facepiece", "G_RegulatorMask_F", 25, "gogg"],
	["APR Gasmask (NATO/Black)", "G_AirPurifyingRespirator_01_F", 25, "gogg"],
	["APR Gasmask (CSAT/Black)", "G_AirPurifyingRespirator_02_black_F", 25, "gogg"],
	["APR Gasmask (CSAT/Olive)", "G_AirPurifyingRespirator_02_olive_F", 25, "gogg"],
	["APR Gasmask (CSAT/Sand)", "G_AirPurifyingRespirator_02_sand_F", 25, "gogg"],
	["Blindfold (Black)", "G_Blindfold_01_black_F", 25, "gogg"],
	["Blindfold (White)", "G_Blindfold_01_white_F", 25, "gogg"],
	["Combat Goggles", "G_Combat", 25, "gogg"],
	["Combat Goggles (Green)", "G_Combat_Goggles_tna_F", 25, "gogg", "noDLC"],
	["VR Goggles", "G_Goggles_VR", 25, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 25, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 25, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 25, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 25, "gogg"],
	["Bandana (Aviator)", "G_Bandanna_aviator", 25, "gogg"],
	["Bandana (Beast)", "G_Bandanna_beast", 25, "gogg"],
	["Bandana (Black)", "G_Bandanna_blk", 25, "gogg"],
	["Bandana (Khaki)", "G_Bandanna_khk", 25, "gogg"],
	["Bandana (Olive)", "G_Bandanna_oli", 25, "gogg"],
	["Bandana (Shades)", "G_Bandanna_shades", 25, "gogg"],
	["Bandana (Sport)", "G_Bandanna_sport", 25, "gogg"],
	["Bandana (Tan)", "G_Bandanna_tan", 25, "gogg"],

	["Aviator Glasses", "G_Aviator", 10, "gogg"],
	["Ladies Shades", "G_Lady_Blue", 10, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 10, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 10, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 10, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 10, "gogg"],
	["Shades (Black)", "G_Shades_Black", 10, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 10, "gogg"],
	["Shades (Green)", "G_Shades_Green", 10, "gogg"],
	["Shades (Red)", "G_Shades_Red", 10, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 10, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 10, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 10, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 10, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 10, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 10, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 10, "gogg"],
	["Square Shades", "G_Squares_Tinted", 10, "gogg"],
	["Square Spectacles", "G_Squares", 10, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 10, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 10, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 10, "gogg"]
];

#define GENSTORE_ITEM_PRICE(CLASS) ((call genItemArray) select {_x select 1 == CLASS} select 0 select 2)

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	//["Base Re-Locker", "Land_Device_assembled_F", 25000, "object"],  //Cael817, SNAFU,Used for base operations <-- Destroyable
	["(BWA) Fuel Container (Fleck)", "BWA3_TCK9_Fuel_Fleck", 2000, "object"],
	["(BWA) Fuel Container (Tropen)", "BWA3_TCK9_Fuel_Tropen", 2000, "object"],
	["(BWA) Fuel Container (Winter)", "BWA3_TCK9_Fuel_Winter", 2000, "object"],
	["(BWA) Ammo Container (Fleck)", "BWA3_WLP14_Ammo_Fleck", 2000, "object"],
	["(BWA) Ammo Container (Tropen)", "BWA3_WLP14_Ammo_Tropen", 2000, "object"],
	["(BWA) Ammo Container (Winter)", "BWA3_WLP14_Ammo_Winter", 2000, "object"],
	["(BWA) Repair Container (Fleck)", "BWA3_WLP14_Repair_Fleck", 2000, "object"],
	["(BWA) Repair Container (Tropen)", "BWA3_WLP14_Repair_Tropen", 2000, "object"],
	["(BWA) Repair Container (Winter)", "BWA3_WLP14_Repair_Winter", 2000, "object"],
	["(BWA) Flatbed (Olive)", "BWA3_WLP14_Flatbed_Oliv", 1000, "object"],
	["(BWA) Flatbed (Tropen)", "BWA3_WLP14_Flatbed_Tropen", 1000, "object"],
	["(BWA) Flatbed (Winter)", "BWA3_WLP14_Flatbed_Winter", 1000, "object"],

	["Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	["Container (Resupply Crate)", "Land_Cargo10_red_F", 4000, "resupplyObject"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Decon Shower (Large)	", "DeconShower_02_F", 200, "object"],
	["Razor Fence (Gate)", "Land_Mil_WiredFence_Gate_F", 200, "object"],
	["Entrance Gate (IDAP)", "Land_EntranceGate_01_narrow_F", 200, "object"],
	["Dragon's Tooth", "Land_DragonsTeeth_01_1x1_new_F", 50, "object"],
	["Dragon's Tooth (Red-White)", "Land_DragonsTeeth_01_1x1_new_redwhite_F", 50, "object"],
	["Concrete Hedgehog", "Land_ConcreteHedgehog_01_F", 65, "object"],
	["Czech Hedgehog (New)", "Land_CzechHedgehog_01_new_F", 65, "object"],
	["Czech Hedgehog", "Land_CzechHedgehog_01_old_F", 60, "object"],
	["Gas Station (Malevil, Pump)", "Land_FuelStation_01_pump_malevil_F", 2500, "object"],
	["Gas Station (Tanoil, Pump)", "Land_FuelStation_01_pump_F", 2500, "object"],
	["Gas Station (Benzyna, Pump)", "Land_FuelStation_03_pump_F", 2500, "object"],
	["Gas Station (Fuel, Pump)", "Land_fs_feed_F", 2500, "object"],
	["Gas Station (Sun Oil, Pump)", "Land_FuelStation_Feed_F", 2500, "object"],
	["Water Pump (Forest)", "WaterPump_01_forest_F", 7500, "object"],
	["Water Pump (Sand)", "WaterPump_01_sand_F", 7500, "object"],
	["Food sacks", "Land_Sacks_goods_F", 1800, "object"],
	["Water Barrel", "Land_BarrelWater_F", 1800, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Lamp (Halogen)", "Land_LampHalogen_F", 150, "object"],
	["Street Lamp", "Land_LampStreet_02_F", 150, "object"],
	["Street Lamp (Double)", "Land_LampStreet_02_double_F", 200, "object"],
	["Street Lamp (Triple)", "Land_LampStreet_02_triple_F", 250, "object"],
	["Airport Lamp ", "Land_LampAirport_F", 350, "object"],
	["Toiletbox", "Land_ToiletBox_F", 120, "object"],
	["Field Toilet", "Land_FieldToilet_F", 120, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Walkover Staircase", "Land_Walkover_01_F", 120, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Pier Ladder", "Land_PierLadder_F", 250, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"],
	["Scaffolding (New)", "Land_Scaffolding_New_F", 250, "object"],
	["Fireplace", "Land_FirePlace_F", 50, "object"],
	["Campfire", "Land_Campfire_F", 65, "object"],
	["(BWA) German Flag", "BWA3_Flag_Germany", 500, "object"]
];

genBuildingsArray = compileFinal str
[
	["Lifeguard Tower", "Land_LifeguardTower_01_F", 50, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["H-barrier Watchtower (Green)", "Land_HBarrier_01_big_tower_green_F", 600, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Fence (Corner, Green)", "Land_BagFence_01_corner_green_F", 150, "object"],
	["Bag Fence (End, Green)", "Land_BagFence_01_end_green_F", 150, "object"],
	["Bag Fence (Long, Green)", "Land_BagFence_01_long_green_F", 200, "object"],
	["Bag Fence (Round, Green)", "Land_BagFence_01_round_green_F", 150, "object"],
	["Bag Fence (Short, Green)", "Land_BagFence_01_short_green_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker (Tower)", "Land_BagBunker_Tower_F", 1000, "object"],
	["Bag Bunker (Small, Green)", "Land_BagBunker_01_small_green_F", 250, "object"],
	["Bag Bunker (Large, Green)", "Land_BagBunker_01_large_green_F", 500, "object"],
	["Bag Bunker (Tower, Green)", "Land_HBarrier_01_tower_green_F", 1000, "object"],
	["Old Bunker", "Land_Bunker_02_light_double_F", 1000, "object"],
	["Modular Bunker", "Land_Bunker_01_small_F", 1000, "object"],
	["Guard Tower (Big)", "Land_GuardTower_01_F", 200, "object"],
	["Guard Tower (Small)", "Land_GuardTower_02_F", 150, "object"],
	["Slum Canvas (Blue)", "Land_cargo_addon02_V1_F", 30, "object"],
	["Slum Canvas (Black)", "Land_cargo_addon02_V2_F", 30, "object"],
	["Slum House (Small)", "Land_Slum_House01_F", 100, "object"],
	["Slum House", "Land_Slum_House02_F", 150, "object"],
	["Slum House (Big)", "Land_Slum_House03_F", 200, "object"],
	["Slum House Container", "Land_cargo_house_slum_F", 300, "object"],
	["Grey Metal Shed (Large)", "Land_Metal_Shed_F", 120, "object"],
	["Industrial Shed (Small)", "Land_Shed_Small_F", 200, "object"],
	["Industrial Shed (Big)", "Land_Shed_Big_F", 400, "object"],
	["Cargo Container (Medium, Blue)", "Land_Cargo20_blue_F", 350, "object"],
	["Cargo Container (Medium, Brick Red)", "Land_Cargo20_brick_red_F", 350, "object"],
	["Cargo Container (Medium, Cyan)", "Land_Cargo20_cyan_F", 350, "object"],
	["Cargo Container (Medium, Grey)", "Land_Cargo20_grey_F", 350, "object"],
	["Cargo Container (Medium, Light Blue)", "Land_Cargo20_light_blue_F", 350, "object"],
	["Cargo Container (Medium, Light Green)", "Land_Cargo20_light_green_F", 350, "object"],
	["Cargo Container (Medium, Military Green)", "Land_Cargo20_military_green_F", 350, "object"],
	["Cargo Container (Medium, Orange)", "Land_Cargo20_orange_F", 350, "object"],
	["Cargo Container (Medium, Red)", "Land_Cargo20_red_F", 350, "object"],
	["Cargo Container (Medium, Sand)", "Land_Cargo20_sand_F", 350, "object"],
	["Cargo Container (Medium, White)", "Land_Cargo20_white_F", 350, "object"],
	["Cargo Container (Medium, Yellow)", "Land_Cargo20_yellow_F", 350, "object"],
	["Cargo Container (Long, Blue)", "Land_Cargo40_blue_F", 600, "object"],
	["Cargo Container (Long, Brick Red)", "Land_Cargo40_brick_red_F", 600, "object"],
	["Cargo Container (Long, Cyan)", "Land_Cargo40_cyan_F", 600, "object"],
	["Cargo Container (Long, Grey)", "Land_Cargo40_grey_F", 600, "object"],
	["Cargo Container (Long, Light Blue)", "Land_Cargo40_light_blue_F", 600, "object"],
	["Cargo Container (Long, Light Green)", "Land_Cargo40_light_green_F", 600, "object"],
	["Cargo Container (Long, Military Green)", "Land_Cargo40_military_green_F", 600, "object"],
	["Cargo Container (Long, Orange)", "Land_Cargo40_orange_F", 600, "object"],
	["Cargo Container (Long, Red)", "Land_Cargo40_red_F", 600, "object"],
	["Cargo Container (Long, Sand)", "Land_Cargo40_sand_F", 600, "object"],
	["Cargo Container (Long, White)", "Land_Cargo40_white_F", 600, "object"],
	["Cargo Container (Long, Yellow)", "Land_Cargo40_yellow_F", 600, "object"],
	["Military Cargo House (Green)", "Land_Cargo_House_V1_F", 500, "object"],
	["Military Cargo Post (Green)", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo HQ (Green)", "Land_Cargo_HQ_V1_F", 1500, "object"],
	["Military Cargo Tower (Green)", "Land_Cargo_Tower_V1_F", 5000, "object"],
	["Military Cargo House (Rusty)", "Land_Cargo_House_V2_F", 500, "object"],
	["Military Cargo Post (Rusty)", "Land_Cargo_Patrol_V2_F", 800, "object"],
	["Military Cargo HQ (Rusty)", "Land_Cargo_HQ_V2_F", 1500, "object"],
	["Military Cargo Tower (Rusty)", "Land_Cargo_Tower_V2_F", 5000, "object"],
	["Military Cargo House (Brown)", "Land_Cargo_House_V3_F", 500, "object"],
	["Military Cargo Post (Brown)", "Land_Cargo_Patrol_V3_F", 800, "object"],
	["Military Cargo HQ (Brown)", "Land_Cargo_HQ_V3_F", 1500, "object"],
	["Military Cargo Tower (Brown)", "Land_Cargo_Tower_V3_F", 5000, "object"],
	["Military Cargo House (Jungle)", "Land_Cargo_House_V4_F", 500, "object"],
	["Military Cargo Post (Jungle)", "Land_Cargo_Patrol_V4_F", 800, "object"],
	["Military Cargo HQ (Jungle)", "Land_Cargo_HQ_V4_F", 1500, "object"],
	["Military Cargo Tower (Jungle)", "Land_Cargo_Tower_V4_F", 5000, "object"],
	["Connector Tent (Open)", "Land_ConnectorTent_01_NATO_open_F", 75, "object"],
	["Connector Tent (Cross)", "Land_ConnectorTent_01_NATO_cross_F", 100, "object"],
	["Tent (Outer)", "Land_MedicalTent_01_NATO_generic_outer_F", 350, "object"],
	["Tent (Inner)", "Land_MedicalTent_01_NATO_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[Tropic]", "Land_ConnectorTent_01_NATO_tropic_open_F", 75, "object"],
	["Connector Tent (Cross)[Tropic]", "Land_ConnectorTent_01_NATO_tropic_cross_F", 100, "object"],
	["Tent (Outer)[Tropic]", "Land_MedicalTent_01_NATO_tropic_generic_outer_F", 350, "object"],
	["Tent (Inner)[Tropic]", "Land_MedicalTent_01_NATO_tropic_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[Hex]", "Land_ConnectorTent_01_CSAT_brownhex_open_F", 75, "object"],
	["Connector Tent (Cross)[Hex]", "Land_ConnectorTent_01_CSAT_brownhex_cross_F", 100, "object"],
	["Tent (Outer)[Hex]", "Land_MedicalTent_01_CSAT_brownhex_generic_outer_F", 350, "object"],
	["Tent (Inner)[Hex]", "Land_MedicalTent_01_CSAT_brownhex_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[G Hex]", "Land_ConnectorTent_01_CSAT_greenhex_open_F", 75, "object"],
	["Connector Tent (Cross)[G Hex]", "Land_ConnectorTent_01_CSAT_greenhex_cross_F", 100, "object"],
	["Tent (Outer)[G Hex]", "Land_MedicalTent_01_CSAT_greenhex_generic_outer_F", 350, "object"],
	["Tent (Inner)[G Hex]", "Land_MedicalTent_01_CSAT_greenhex_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[AAF]", "Land_ConnectorTent_01_AAF_open_F", 75, "object"],
	["Connector Tent (Cross)[AAF]", "Land_ConnectorTent_01_AAF_cross_F", 100, "object"],
	["Tent (Outer)[AAF]", "Land_MedicalTent_01_aaf_generic_outer_F", 350, "object"],
	["Tent (Inner)[AAF]", "Land_MedicalTent_01_aaf_generic_inner_F", 500, "object"],
	["Connector Tent (Open)[Woodland]", "Land_ConnectorTent_01_wdl_open_F", 75, "object"],
	["Connector Tent (Cross)[Woodland]", "Land_ConnectorTent_01_wdl_cross_F", 100, "object"],
	["Tent (Outer)[Woodland]", "Land_MedicalTent_01_wdl_generic_outer_F", 350, "object"],
	["Tent (Inner)[Woodland]", "Land_MedicalTent_01_wdl_generic_inner_F", 500, "object"]
];

genWallsArray = compileFinal str
[
	["Barbed Wire Fence", "Land_New_WiredFence_5m_F", 30, "object"],
	["Barbed Wire Fence (Long)", "Land_New_WiredFence_10m_F", 30, "object"],
	["Razor Fence", "Land_Mil_WiredFence_F", 30, "object"],
	["Razorwire Barrier", "Land_Razorwire_F", 75, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Modular Bunker (Block)", "Land_Bunker_01_blocks_1_F", 300, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Stripes)", "Land_CncBarrier_stripes_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier (1 block, Green)", "Land_HBarrier_01_line_1_green_F", 150, "object"],
	["HBarrier (3 blocks, Green)", "Land_HBarrier_01_line_3_green_F", 200, "object"],
	["HBarrier (5 blocks, Green)", "Land_HBarrier_01_line_5_green_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["H-barrier (Big, 4 Blocks, Green)", "Land_HBarrier_01_big_4_green_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["H-barrier Wall (Corner)", "Land_HBarrierWall_corner_F", 200, "object"],
	["H-barrier (Corridor)", "Land_HBarrierWall_corridor_F", 400, "object"],
	["HBarrier Wall (4 blocks, Green)", "Land_HBarrier_01_wall_4_green_F", 400, "object"],
	["HBarrier Wall (6 blocks, Green)", "Land_HBarrier_01_wall_6_green_F", 500, "object"],
	["H-barrier Wall (Corner, Green)", "Land_HBarrier_01_wall_corner_green_F", 200, "object"],
	["H-barrier (Corridor, Green)", "Land_HBarrier_01_wall_corridor_green_F", 400, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	["Sandbag Barricade (Short)", "Land_SandbagBarricade_01_half_F", 200, "object"],
	["Sandbag Barricade (Tall, Hole)", "Land_SandbagBarricade_01_hole_F", 300, "object"],
	["Sandbag Barricade (Tall)", "Land_SandbagBarricade_01_F", 300, "object"]
];

genMiscArray = compileFinal str
[
	["Target Human", "TargetBootcampHuman_F", 50, "object"],
	["Shooting Range Bell", "Land_MysteriousBell_01_F", 30, "object"],
	["Shoot House - Wall", "Land_Shoot_House_Wall_F", 30, "object"],
	["Shoot House - Wall (Stand)", "Land_Shoot_House_Wall_Stand_F", 30, "object"],
	["Shoot House - Wall (Crouch)", "Land_Shoot_House_Wall_Crouch_F", 30, "object"],
	["Shoot House - Wall (Prone)", "Land_Shoot_House_Wall_Prone_F", 30, "object"],
	["Shoot House - Corner", "Land_Shoot_House_Corner_F", 30, "object"],
	["Shoot House - Corner (Stand)", "Land_Shoot_House_Corner_Stand_F", 30, "object"],
	["Shoot House - Corner (Crouch)", "Land_Shoot_House_Corner_Crouch_F", 30, "object"],
	["Shoot House - Corner (Prone)", "Land_Shoot_House_Corner_Prone_F", 30, "object"],
	["Shoot House - Panels", "Land_Shoot_House_Panels_F", 30, "object"],
	["Shoot House - Panels (Crouch)", "Land_Shoot_House_Panels_Crouch_F", 30, "object"],
	["Shoot House - Panels (Prone)", "Land_Shoot_House_Panels_Prone_F", 30, "object"],
	["Shoot House - Panels (Vault)", "Land_Shoot_House_Panels_Vault_F", 30, "object"],
	["Shoot House - Panels (Window)", "Land_Shoot_House_Panels_Window_F", 30, "object"],
	["Shoot House - Tunnel", "Land_Shoot_House_Tunnel_F", 30, "object"],
	["Shoot House - Tunnel (Stand)", "Land_Shoot_House_Tunnel_Stand_F", 30, "object"],
	["Shoot House - Tunnel (Crouch)", "Land_Shoot_House_Tunnel_Crouch_F", 30, "object"],
	["Shoot House - Tunnel (Prone)", "Land_Shoot_House_Tunnel_Prone_F", 30, "object"]
];

//allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);
allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear + call genBuildingsArray + call genWallsArray + call genMiscArray);

[] execVM "storeAircraftConfig.sqf";
[] execVM "storeVehiclesConfig.sqf";
[] execVM "storeSpecOpsConfig.sqf";

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";
_cheetahDir = "\A3\armor_f_beta\apc_tracked_01\data\";
_zamakDir = "\A3\soft_f_beta\truck_02\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All", // "All" must always be first in colorsArray
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			// ["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			// ["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Red - Kart", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo - MH-9", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White - MH-9", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy - MH-9", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION - MH-9", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Blackfoot paintjob
		"Heli_Attack_01_base_F",
		[
			["Rusty - AH-99 Blackfoot", [[0, _wreckDir + "wreck_heli_attack_01_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Rusty - Mi-48 Kajman", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy - Mi-48 Kajman", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Gorgon paintjobs
		"APC_Wheeled_03_base_F",
		[
			["Tan - AFV-4 Gorgon", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty - Hatchback", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],
	[ // GOD EMPEROR
		"B_MBT_01_cannon_F",
		[
			["Trump - Slammer", [
				[0, _texDir + "slammer_trump_0.paa"],
				[1, _texDir + "slammer_trump_1.paa"]
			]]
		]
	],
	[
		"B_MBT_01_TUSK_F",
		[
			["Trump - Slammer", [[2, _texDir + "slammer_trump_2.paa"]]]
		]
	],
	[
		"I_Heli_Transport_02_F",
		[
			["Marine One", [
				[0, _texDir + "mohawk_marine_one_0.paa"],
				[1, _texDir + "mohawk_marine_one_1.paa"],
				[2, _texDir + "mohawk_marine_one_2.paa"]
			]]
		]
	],
	[
		"RHS_CH_47F",
		[
			["RAF (Camo)", [
				[0, _texDir + "baf_hc1_ext_1_co.paa"],
				[1, _texDir + "baf_hc1_ext_2_co.paa"],
				[2, _texDir + "baf_hc1_ext_mlod_co.paa"],
				[3, _texDir + "baf_hc1_preview.paa"]
			]],
			["RAF", [
				[0, _texDir + "baf_hc2_ext_1_co.paa"],
				[1, _texDir + "baf_hc2_ext_2_co.paa"],
				[2, _texDir + "baf_hc2_ext_mlod_co.paa"],
				[3, _texDir + "baf_hc2_preview.paa"]
			]]
		]
	],
	/*[
		"USAF_F35A_STEALTH",
		[
			["Cheese (Why?)", [
				[0, _texDir + "mohawk_marine_one_0.paa"]
			]]
		]
	],
	[
		"USAF_F35A",
		[
			["Cheese (Why?)", [
				[0, _texDir + "mohawk_marine_one_0.paa"]
			]]
		]
	],*/
	[
		"B_MRAP_01_F",
		[
			["Gendarmerie", [
				[0, _texDir + "hunter_gendarmerie_0.paa"],
				[1, _texDir + "hunter_gendarmerie_1.paa"]
			]]
		]
	],
	[
		"I_Heli_light_03_unarmed_F",
		[
			["Gendarmerie", [
				[0, _texDir + "hellcat_gendarmerie_0.paa"]
			]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["LSD", "lsd", localize "STR_WL_ShopDescriptions_LSD", "client\icons\lsd.paa", 12500, 6250],
	["Marijuana", "marijuana", localize "STR_WL_ShopDescriptions_Marijuana", "client\icons\marijuana.paa", 10000, 5000],
	["Cocaine", "cocaine", localize "STR_WL_ShopDescriptions_Cocaine", "client\icons\cocaine.paa", 14000, 7000],
	["Heroin", "heroin", localize "STR_WL_ShopDescriptions_Heroin", "client\icons\heroin.paa", 15000, 7500],

	["Artillery Strike", "artillery", "", "client\icons\tablet.paa", 500000, 100000, "HIDDEN"],
	["Vehicle Pinlock", "pinlock", localize "STR_WL_ShopDescriptions_Pinlock", "client\icons\keypad.paa", 1000, 500],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 750, 375],
	["Defibrillator", "defibrillator", localize "STR_WL_ShopDescriptions_Defibrillator", "client\icons\defibrillator.paa", 6000, 2000],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 5000, 2500],
	["Strap-on Bomb", "straponbomb", localize "STR_WL_ShopDescriptions_strapBomb", "client\icons\straponbomb.paa", 2500, 1250],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 600, 300],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Quadbike", "quadbike", localize "STR_WL_ShopDescriptions_QuadBike", "\A3\Soft_F\Quadbike_01\Data\UI\Quadbike_01_CA.paa", 500, 250],
	["Water Scooter", "waterscooter", localize "STR_WL_ShopDescriptions_WaterScooter", "\A3\Boat_F_Exp\Scooter_Transport_01\Data\UI\Scooter_Transport_01_CA.paa", 500, 250],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]

	//["IP/Net Camera", "cctv_camera", localize "STR_WL_ShopDescriptions_CCTV_Camera", "addons\cctv\icons\camcorder.paa", 850, 500],
	//["Camera Terminal", "cctv_base", localize "STR_WL_ShopDescriptions_CCTV_Base", "addons\cctv\icons\laptop.paa", 500, 300]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
