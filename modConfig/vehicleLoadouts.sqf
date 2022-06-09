// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2017 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: vehicleLoadouts.sqf
//	@file Author: AgentRev

/*
	HOW TO CREATE A PYLON LOADOUT:
	 1. Create new scenario in Eden, add vehicle, adjust pylon loadout, and set Object Init to: copyToClipboard str getPylonMagazines this
	 2. Play scenario, wait until loaded, then pause game and return to Eden.
	 3. Your pylon array is now in the clipboard, which you can paste in this file, e.g. _pylons = ["PylonMissile_Missile_AA_R73_x1","","","","","","","","","","","","",""];

	Note: You can use any pylon type you want in the script, even if not shown in the editor, it should normally work! e.g. "PylonRack_12Rnd_missiles" for "B_Plane_Fighter_01_F"
*/

switch (true) do
{
  //// NEW FOR USAF / SPEC OPS UPDATE
	// A-10
	case (_class isKindOf "USAF_A10"):
	{
		_mags =
		[
			["USAF_GAU8_1150Rnd", [-1]],
			["USAF_GAU8_1150Rnd", [-1]],
			["USAF_GAU8_1150Rnd", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]],
			["FakeWeapon", [-1]]
		];
		switch (_variant) do
		{
			case "a10heavy":	{ _pylons = [
				"USAF_PylonRack_2Rnd_AIM9X_LAU105",
				"USAF_PylonRack_1Rnd_ANAAQ28",
				"USAF_PylonRack_3Rnd_AGM65D",
				"USAF_PylonRack_3Rnd_GBU12",
				"USAF_PylonRack_4Rnd_GBU53",
				"",
				"USAF_PylonRack_1Rnd_GBU31",
				"USAF_PylonRack_3Rnd_GBU38",
				"USAF_PylonRack_2Rnd_AGM65E",
				"USAF_PylonRack_7Rnd_APKWS",
				"USAF_PylonRack_1Rnd_ANALQ131"
			]  };
			default { _pylons = [
				"USAF_PylonRack_2Rnd_AIM9X_LAU105",
				"USAF_PylonRack_1Rnd_ANAAQ28",
				"USAF_PylonRack_3Rnd_AGM65D",
				"USAF_PylonRack_1Rnd_GBU12",
				"USAF_PylonRack_4Rnd_GBU53",
				"USAF_PylonRack_1Rnd_CBU103",
				"USAF_PylonRack_4Rnd_GBU53",
				"USAF_PylonRack_1Rnd_GBU12",
				"USAF_PylonRack_3Rnd_AGM65D",
				"USAF_PylonRack_7Rnd_HYDRA70",
				"USAF_PylonRack_1Rnd_ANALQ131"
			] };
		};
	};

	// F22
	case (_class isKindOf "USAF_F22"):
	{
		_mags =
		[
			["USAF_20mm_M61A2", [-1]],
			["USAF_20mm_M61A2", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]],
			["FakeWeapon", [-1]]
		];
		switch (_variant) do
		{
			default { _pylons = [
				"",
				"",
				"USAF_MISSILE_1Rnd_AIM9X",
				"USAF_Missile_1Rnd_AIM120C_Int",
				"USAF_PylonRack_4Rnd_GBU53",
				"USAF_PylonRack_4Rnd_GBU53",
				"USAF_Missile_1Rnd_AIM120C_Int",
				"USAF_MISSILE_1Rnd_AIM9X",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				""
			] };
		};
	};

	case (_class isKindOf "USAF_F22_Heavy"):
	{
		_mags =
		[
			["USAF_20mm_M61A2", [-1]],
			["USAF_20mm_M61A2", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]],
			["FakeWeapon", [-1]]
		];
		switch (_variant) do
		{
			default { _pylons = [
				"USAF_PylonRack_2Rnd_AIM9X",
				"USAF_PylonRack_2Rnd_AIM120C",
				"USAF_MISSILE_1Rnd_AIM9X",
				"USAF_Missile_1Rnd_AIM120C_Int",
				"USAF_PylonRack_1Rnd_GBU32",
				"USAF_PylonRack_1Rnd_GBU32",
				"USAF_Missile_1Rnd_AIM120C_Int",
				"USAF_MISSILE_1Rnd_AIM9X",
				"USAF_PylonRack_2Rnd_AIM120C",
				"USAF_PylonRack_2Rnd_AIM9X",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				"",
				""
			] };
		};
	};

	/// F35A
	case (_class isKindOf "USAF_F35A"):
	{
		_mags =
		[
			["USAF_F35A_CANNON_M", [-1]],
			["USAF_F35A_CANNON_M", [-1]],
			["Laserbatteries", [-1]],
			["300Rnd_CMFlare_Chaff_Magazine", [-1]],
			["FakeWeapon", [-1]]
		];
		switch (_variant) do
		{
			default { _pylons = [
				"USAF_MISSILE_1Rnd_AIM9X",
				"USAF_PylonRack_1Rnd_GBU12",
				"USAF_PylonRack_1Rnd_AGM158",
				"USAF_Missile_1Rnd_AIM120C",
				"USAF_PylonRack_4Rnd_GBU39",
				"USAF_PylonRack_4Rnd_GBU39",
				"USAF_Missile_1Rnd_AIM120C",
				"USAF_PylonRack_1Rnd_AGM158",
				"USAF_PylonRack_1Rnd_GBU12",
				"USAF_MISSILE_1Rnd_AIM9X"
			] };
		};
	};

	case (_class isKindOf "USAF_F35A_STEALTH"):
	{
		_mags =
		[
			["USAF_F35A_CANNON_M", [-1]],
			["USAF_F35A_CANNON_M", [-1]],
			["Laserbatteries", [-1]],
			["300Rnd_CMFlare_Chaff_Magazine", [-1]],
			["FakeWeapon", [-1]]
		];
		switch (_variant) do
		{
			case "f35asantiradar":	{ _pylons = [
				"",
				"",
				"",
				"USAF_Missile_1Rnd_AIM120C",
				"USAF_MISSILE_1Rnd_AARGMER",
				"USAF_MISSILE_1Rnd_AARGMER",
				"USAF_Missile_1Rnd_AIM120C",
				"",
				"",
				""
			]  };
			default { _pylons = [
				"",
				"",
				"",
				"USAF_Missile_1Rnd_AIM120C",
				"USAF_Missile_1Rnd_AIM120C",
				"USAF_Missile_1Rnd_AIM120C",
				"USAF_Missile_1Rnd_AIM120C",
				"",
				"",
				""
			] };
		};
	};

	/// MQ9 Drone
	case (_class isKindOf "USAF_MQ9"):
	{
		_mags =	[];
		switch (_variant) do
		{
			case "mq9Bomber":	{ _pylons = [
				"USAF_PylonRack_4Rnd_GBU53",
				"USAF_PylonRack_4Rnd_GBU39",
				"USAF_PylonRack_4Rnd_GBU39",
				"USAF_PylonRack_4Rnd_GBU53"
			]  };
			case "mq9missle":	{ _pylons = [
				"USAF_PylonRack_2Rnd_AGM114P",
				"USAF_PylonRack_2Rnd_AGM114P",
				"USAF_PylonRack_2Rnd_AGM114P",
				"USAF_PylonRack_2Rnd_AGM114P"
			] };
			default { _pylons = [
				"USAF_PylonRack_2Rnd_AGM114P",
				"USAF_PylonRack_1Rnd_GBU12",
				"USAF_PylonRack_1Rnd_GBU12",
				"USAF_PylonRack_2Rnd_AGM114P"
			] };
		};
	};

	/// Littlebird
	case (_class isKindOf "RHS_MELB_AH6M"):
	{
		_mags =
		[
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			case "ah6mheavy":	{ _pylons = [
				"rhsusf_mag_gau19_melb_left",
				"rhs_mag_m134_pylon_3000",
				"rhs_mag_m134_pylon_3000",
				"rhs_mag_AGM114N_2"
			] };
			default { _pylons = [
				"rhs_mag_M151_7",
				"rhs_mag_m134_pylon_3000",
				"rhs_mag_m134_pylon_3000",
				"rhs_mag_M151_7"
			] };
		};
	};
	/// Blackhawk
	case (_class isKindOf "RHS_UH60M_ESSS"):
	{
		_mags =
		[
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			default { _pylons = [
				"rhs_mag_AGM114N_4",
				"rhs_mag_DAGR_16",
				"rhs_mag_DAGR_16",
				"rhs_mag_AGM114N_4",
				"rhsusf_M130_CMFlare_Chaff_Magazine_x2"
			] };
		};
	};
	/// FA-18F
	case (_class isKindOf "JS_JC_FA18F"):
	{
		_mags =
		[
			["js_safe", [-1]],
			["js_m_fa18_m61", [-1]],
			["js_m_fa18_m61", [-1]],
			["Laserbatteries", [-1]],
			["js_jc_120Rnd_CMFlare_Magazine", [-1]],
			["js_jc_120Rnd_CMFlare_Magazine", [-1]],
			["js_jc_120Rnd_CMChaff_Magazine", [-1]],
			["js_jc_120Rnd_CMChaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			default { _pylons = [
				"PylonRack_Missile_BIM9X_x1",
				"PylonRack_Missile_BIM9X_x1",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Bomb_GBU12_x2",
				"PylonRack_Bomb_GBU12_x2",
				"PylonMissile_1Rnd_GAA_missiles",
				"PylonMissile_1Rnd_GAA_missiles",
				"js_m_fa18_wing_tank_x1"
			] };
		};
	};
	/// FA-18E
	case (_class isKindOf "JS_JC_FA18E"):
	{
		_mags =
		[
			["js_safe", [-1]],
			["js_m_fa18_m61", [-1]],
			["js_m_fa18_m61", [-1]],
			["Laserbatteries", [-1]],
			["js_jc_120Rnd_CMFlare_Magazine", [-1]],
			["js_jc_120Rnd_CMFlare_Magazine", [-1]],
			["js_jc_120Rnd_CMChaff_Magazine", [-1]],
			["js_jc_120Rnd_CMChaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			case "fa18aclm":	{ _pylons = [
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_HARM_x1",
				"PylonMissile_Missile_HARM_x1",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"USAF_PylonRack_1Rnd_AGM86",
				"USAF_PylonRack_1Rnd_AGM86",
				"PylonRack_Missile_BIM9X_x1",
				"PylonRack_Missile_BIM9X_x1",
				"js_m_fa18_wing_tank_x1",
				"js_jc_120Rnd_CMChaff_Magazine",
				"js_jc_120Rnd_CMFlare_Magazine"
			] };
			case "fa18cas":	{ _pylons = [
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_HARM_x1",
				"PylonMissile_Missile_HARM_x1",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Missile_AGM_02_x1",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Bomb_GBU12_x2",
				"PylonRack_2Rnd_BombCluster_01_F",
				"js_jc_120Rnd_CMChaff_Magazine",
				"js_jc_120Rnd_CMFlare_Magazine"
			] };
			case "fa18mr":	{ _pylons = [
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonMissile_1Rnd_Bomb_04_F",
				"PylonRack_Bomb_SDB_x4",
				"PylonRack_Bomb_SDB_x4",
				"PylonRack_2Rnd_BombCluster_01_F",
				"PylonRack_2Rnd_BombCluster_01_F",
				"js_m_fa18_wing_tank_x1",
				"js_jc_120Rnd_CMChaff_Magazine",
				"js_jc_120Rnd_CMFlare_Magazine"
			] };
			case "fa18mheavy":	{ _pylons = [
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonMissile_Missile_HARM_x1",
				"PylonMissile_Missile_HARM_x1",
				"PylonRack_3Rnd_Missile_AGM_02_F",
				"PylonRack_3Rnd_Missile_AGM_02_F",
				"PylonRack_2Rnd_BombCluster_01_F",
				"PylonRack_2Rnd_BombCluster_01_F",
				"js_m_fa18_wing_tank_x1",
				"js_jc_120Rnd_CMChaff_Magazine",
				"js_jc_120Rnd_CMFlare_Magazine"
			] };
			default { _pylons = [ // AA variant
				"PylonMissile_Missile_BIM9X_x1",
				"PylonMissile_Missile_BIM9X_x1",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_1Rnd_AAA_missiles",
				"PylonRack_1Rnd_AAA_missiles",
				"PylonRack_Missile_AMRAAM_D_x2",
				"PylonRack_Missile_AMRAAM_D_x2",
				"js_m_fa18_wing_tank_x1",
				"js_jc_120Rnd_CMChaff_Magazine",
				"js_jc_120Rnd_CMFlare_Magazine"
			] };
		};
	};



	/// HELIS
	// Mi-48 Kajman -- CUSTOM
	 case (_class isKindOf "Heli_Attack_02_dynamicLoadout_base_F"):
	 {
		 switch (_variant) do
		 {
			 case "kajAT":	{ _pylons = ["PylonRack_4Rnd_LG_scalpel","PylonRack_4Rnd_LG_scalpel","PylonRack_4Rnd_LG_scalpel","PylonRack_4Rnd_LG_scalpel"] };
			 case "kajAA": 	{ _pylons = ["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AA_03_F"] };
			 case "kajHVY":	{ _pylons = ["PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F"] };
			 // default = Multi Role
			 default				{ _pylons = ["PylonRack_4Rnd_LG_scalpel","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_4Rnd_LG_scalpel"] };
		 };
	 };

	 // AH-99 Blackfoot -- CUSTOM
 	case (_class isKindOf "Heli_Attack_01_dynamicLoadout_base_F"):
	{
 	 switch (_variant) do
 	 {
 		 case "MR": { _pylons = ["PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles","PylonRack_12Rnd_PG_missiles","PylonRack_12Rnd_PG_missiles","PylonMissile_1Rnd_AAA_missiles","PylonMissile_1Rnd_AAA_missiles"] };
		 // default = CAS
		 default	  { _pylons = ["PylonRack_12Rnd_missiles","PylonMissile_1Rnd_LG_scalpel","PylonMissile_1Rnd_LG_scalpel","PylonMissile_1Rnd_LG_scalpel","PylonMissile_1Rnd_LG_scalpel","PylonRack_12Rnd_missiles"] };
 	 };
  };

	// WY-55 Hellcat
	case (_class isKindOf "I_Heli_light_03_dynamicLoadout_F"):
	{
		switch (_variant) do
		{
			case "catDAKKA": { _pylons = ["PylonWeapon_300Rnd_20mm_shells","PylonWeapon_300Rnd_20mm_shells"] };
			case "catAT": { _pylons = ["PylonRack_4Rnd_LG_scalpel","PylonRack_4Rnd_LG_scalpel"] };
			// default = MR
			default           { _pylons = ["PylonRack_12Rnd_PG_missiles","PylonRack_12Rnd_PG_missiles"] };
		};
	};

	// AH-9 Pawnee
	case (_class isKindOf "B_Heli_Light_01_dynamicLoadout_F"):
	{
		switch (_variant) do
		{
			case "pawneeGun": { _pylons = ["",""] };
			case "pawneeAT": { _pylons = ["PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_7Rnd_Rocket_04_AP_F"] };
			// default = CAS
			default           { _pylons = ["PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles"] };
		};
	};

	// PO-30 Orca
	case (_class isKindOf "O_Heli_Light_02_dynamicLoadout_F"):
	{
		switch (_variant) do
		{
			case "orcaDAGR": { _pylons = ["PylonWeapon_2000Rnd_65x39_belt","PylonRack_12Rnd_PG_missiles"] };
			case "orcaDAKKA": { _pylons = ["PylonWeapon_300Rnd_20mm_shells","PylonWeapon_300Rnd_20mm_shells"] };
			// default = DAR
			default          { _pylons = ["PylonWeapon_2000Rnd_65x39_belt","PylonRack_12Rnd_missiles"] };
		};
	};


	/// PLANES
	// A-164 Wipeout CAS
	case (_class isKindOf "Plane_CAS_01_dynamicLoadout_base_F"):
	{
 	 switch (_variant) do
 	 {
		 case "wipeCLST": { _pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_Missile_AGM_02_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonRack_1Rnd_Missile_AGM_02_F","PylonRack_1Rnd_Missile_AA_04_F"] };
		 // default = CAS
		 default		  { _pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_7Rnd_Rocket_04_HE_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonRack_3Rnd_Missile_AGM_02_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_Missile_AA_04_F"] };
 	 };
  };

	// F/A-181 Black Wasp
	case (_class isKindOf "B_Plane_Fighter_01_F"):
	{
		_mags =
		[
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]], // extra gun mag (non-explosive ammo)
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			case "blackwaspMR": { _pylons = ["PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AGM_02_x2","PylonRack_Missile_AGM_02_x2","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonRack_Bomb_SDB_x4","PylonRack_Bomb_SDB_x4","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"] };
			// default = AT
			default             { _pylons = ["PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1","PylonRack_Missile_AGM_02_x2","PylonRack_Missile_AGM_02_x2","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","","","PylonRack_Bomb_SDB_x4","PylonRack_Bomb_SDB_x4","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"] };
		};
	};

	// F/A-181 Black Wasp (Stealth)
	case (_class isKindOf "B_Plane_Fighter_01_Stealth_F"):
	{
		_mags =
		[
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["magazine_Fighter01_Gun20mm_AA_x450", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_1Rnd_BombCluster_01_F"];
	};

	// To-201 Shikra
	case (_class isKindOf "O_Plane_Fighter_02_F"):
	{
		_mags =
		[
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			case "shikraMR":  { _pylons = ["PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R73_x1","PylonMissile_1Rnd_BombCluster_02_cap_F","PylonMissile_1Rnd_BombCluster_02_cap_F","PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Missile_AGM_KH25_x1","","","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","","","PylonMissile_Missile_AGM_KH25_INT_x1"] };
			// default = AT
			default           { _pylons = ["PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R73_x1","PylonMissile_1Rnd_BombCluster_02_cap_F","PylonMissile_1Rnd_BombCluster_02_cap_F","PylonMissile_Missile_AGM_KH25_x1","PylonMissile_Missile_AGM_KH25_x1","","","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","","","PylonMissile_Missile_AGM_KH25_INT_x1"] };
		};
	};

	// To-201 Shikra (Stealth)
	case (_class isKindOf "O_Plane_Fighter_02_Stealth_F"):
	{
		_mags =
		[
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["magazine_Fighter02_Gun30mm_AA_x180", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		_pylons = ["","","","","","","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_Missile_AA_R77_INT_x1","PylonMissile_1Rnd_BombCluster_02_cap_F"];
	};

	// To-199 Neophron CAS
	case (_class isKindOf "Plane_CAS_02_dynamicLoadout_base_F"):
	{
		_pylons = ["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_Bomb_03_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonMissile_1Rnd_Bomb_03_F","PylonMissile_1Rnd_BombCluster_01_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_1Rnd_Missile_AA_03_F"];
	};

	// A-149 Gryphon
	case (_class isKindOf "Plane_Fighter_04_Base_F"):
	{
		_mags =
		[
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["Laserbatteries", [-1]],
			["240Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			case "gryphonCLST":  { _pylons = ["PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"] };
			// default = AA
			default          		 { _pylons = ["PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x2","PylonRack_Missile_AMRAAM_C_x2"] };
		};
	};

	// Y-32 Xi'an
	case ({_class isKindOf _x} count ["VTOL_02_infantry_dynamicLoadout_base_F", "VTOL_02_vehicle_dynamicLoadout_base_F"] > 0):
	{
		_pylons = ["PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AGM_01_F"];
	};

	// A-143 Buzzard
	case (_class isKindOf "Plane_Fighter_03_dynamicLoadout_base_F"):
	{
		_weapons =
		[
			["Laserdesignator_pilotCamera", [-1]],
			["CMFlareLauncher", [-1]]
		];
		_mags =
		[
			["Laserbatteries", [-1]],
			["120Rnd_CMFlare_Chaff_Magazine", [-1]]
		];
		switch (_variant) do
		{
			case "buzzardAA": { _pylons = ["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonWeapon_300Rnd_20mm_shells","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_GAA_missiles","PylonRack_1Rnd_Missile_AA_04_F"] };
			default           { _pylons = ["PylonRack_1Rnd_LG_scalpel","PylonRack_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Bomb_04_F","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_LG_scalpel"] };
		};
		_customCode =
		{
			_veh setAmmoOnPylon [4, 500]; // 20mm gun
		};
	};


	// UAVs
	// UCAV Sentinel
	case (_class isKindOf "B_UAV_05_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["magazine_Fighter04_Gun20mm_AA_x250", [-1]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["weapon_Fighter_Gun20mm_AA", [-1]],
			["Laserdesignator_mounted", [0]]
		];
		switch (_variant) do
		{
			case "sentinelBomber": { _pylons = ["PylonRack_Bomb_GBU12_x2","PylonRack_Bomb_GBU12_x2"] };
			case "sentinelCluster": { _pylons = ["PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"] };
			default                { _pylons = ["PylonMissile_Missile_AGM_02_x2","PylonMissile_Missile_AGM_02_x2"] };
		};
	};

	// Greyhawk/Ababil UAVs
	case (_class isKindOf "UAV_02_dynamicLoadout_base_F"):
	{
		switch (_variant) do
		{
			case "greyhawkBomber": { _pylons = ["PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_Bomb_04_F"] };
			case "greyhawkCluster": { _pylons = ["PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"] };
			case "greyhawkDAGR":    { _pylons = ["PylonRack_12Rnd_PG_missiles","PylonWeapon_2000Rnd_65x39_belt"] };
			default
			{
				_pylons = ["PylonRack_3Rnd_LG_scalpel","PylonRack_3Rnd_LG_scalpel"];
				_customCode =
				{
					_veh setAmmoOnPylon [1, 2]; // right wing
					_veh setAmmoOnPylon [2, 2]; // left wing
				};
			};
		};
	};

	// KH-3A Fenghuang UAV
	/*case (_class isKindOf "O_T_UAV_04_CAS_F"):
	{
		_customCode =
		{
			_veh setMagazineTurretAmmo ["4Rnd_LG_Jian", 2, [0]];
		};
	};*/



	///////// OLD //////////

	// MQ-12 Falcon UAV (non-dynamicLoadout)
	case (_class isKindOf "B_T_UAV_03_F"):
	{
		_mags =
		[
			["120Rnd_CMFlare_Chaff_Magazine", [-1]],
			["1000Rnd_65x39_Belt_Green", [0]],
			["24Rnd_missiles", [0]],
			["2Rnd_LG_scalpel", [0]],
			["2Rnd_AAA_missiles", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["CMFlareLauncher", [-1]],
			["LMG_M200", [0]],
			["missiles_DAR", [0]],
			["missiles_SCALPEL", [0]],
			["missiles_ASRAAM", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};

	// ED-1D Demining UGV
	case (_class isKindOf "UGV_02_Demining_Base_F"):
	{
		_mags =
		[
			["200Rnd_556x45_Box_F", [0]],
			["15Rnd_12Gauge_Pellets", [0]],
			["15Rnd_12Gauge_Slug", [0]],
			["Laserbatteries", [0]],
			["SmokeLauncherMag", [0]]
		];
		_weapons =
		[
			["LMG_03_Vehicle_F", [0]],
			["DeminingDisruptor_01_F", [0]],
			["Laserdesignator_mounted", [0]],
			["SmokeLauncher", [0]]
		];
	};

	// SDV SDAR turret
	case (_class isKindOf "SDV_01_base_F"):
	{
		_mags =
		[
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["20Rnd_556x45_UW_mag", [0]],
			["30Rnd_556x45_Stanag", [0]],
			["30Rnd_556x45_Stanag", [0]],
			["30Rnd_556x45_Stanag", [0]],
			["Laserbatteries", [0]]
		];
		_weapons =
		[
			["arifle_SDAR_F", [0]],
			["Laserdesignator_mounted", [0]]
		];
	};
};
