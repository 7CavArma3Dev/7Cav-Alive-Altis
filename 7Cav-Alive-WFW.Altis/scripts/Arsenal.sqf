private _crate = _this select 0;

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

[_crate, true] call ace_arsenal_fnc_initBox;
sleep 5;
[_crate, [
	"launch_I_Titan_F",
	"launch_O_Titan_ghex_F",
	"launch_O_Titan_F",
	"launch_B_Titan_tna_F",
	"launch_B_Titan_F",
	"launch_O_Titan_short_F",
	"launch_O_Titan_short_ghex_F",
	"launch_I_Titan_short_F",
	"launch_B_Titan_short_F",
	"launch_B_Titan_short_tna_F",
	"rhsusf_5Rnd_HE",
	"rhsusf_5Rnd_FRAG",
	"rhsusf_8Rnd_HE",
	"rhsusf_8Rnd_FRAG",
	"H_HelmetO_ViperSP_ghex_F",
	"H_HelmetO_ViperSP_hex_F",
	"arifle_ARX_hex_F",
	"arifle_ARX_ghex_F",
	"arifle_ARX_blk_F",
	"U_O_V_Soldier_Viper_hex_F",
	"U_O_V_Soldier_Viper_F",
	"U_B_Protagonist_VR",
	"U_O_Protagonist_VR",
	"U_C_Protagonist_VR",
	"U_I_Protagonist_VR",
	"O_NVGoggles_urb_F",
	"O_NVGoggles_hex_F",
	"O_NVGoggles_ghex_F",
	"rhsusf_m112x4_mag",
	"rhsusf_m112_mag",
	"kka3_ace_extension_Campfire_burning_F",
	"ACRE_PRC148",
	"ACRE_PRC77",
	"ACRE_SEM52SL",
	"ACRE_SEM70",
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Patrol_Respawn_bag_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	"I_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"I_HMG_01_weapon_F",
	"O_HMG_01_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_GMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"I_HMG_01_high_weapon_F",
	"I_GMG_01_weapon_F",
	"O_GMG_01_weapon_F",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"rhs_M252_Gun_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_NSV_Tripod_Bag",
	"O_Static_Designator_02_weapon_F",
	"I_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_AT_01_weapon_F",
	"I_UAV_06_backpack_F",
	"O_UAV_06_backpack_F",
	"I_UAV_06_medical_backpack_F",
	"O_UAV_06_medical_backpack_F",
	"C_IDAP_UAV_06_medical_backpack_F",
	"launch_B_Titan_olive_F",
	"launch_I_Titan_eaf_F",
	"ACE_Can_Franta",
	"ACE_Can_RedGull",
	"ACE_Can_Spirit",
	"ACE_Canteen",
	"ACE_Canteen_Empty",
	"ACE_Canteen_Half",
	"ACE_Cellphone",
	"ACE_DeadManSwitch",
	"ACE_MRE_BeefStew",
	"ACE_MRE_ChickenTikkaMasala",
	"ACE_MRE_ChickenHerbDumplings",
	"ACE_MRE_CreamChickenSoup",
	"ACE_MRE_CreamTomatoSoup",
	"ACE_MRE_LambCurry",
	"ACE_MRE_MeatballsPasta",
	"ACE_MRE_SteakVegetables",
	"ACE_WaterBottle",
	"ACE_WaterBottle_Empty",
	"ACE_WaterBottle_Half",
	"I_E_UavTerminal",
	"O_UavTerminal",
	"C_UavTerminal",
	"I_UavTerminal",
	"I_E_GMG_01_A_Weapon_F",
	"I_E_HMG_01_A_Weapon_F",
	"I_E_HMG_01_high_Weapon_F",
	"I_E_HMG_01_Weapon_F",
	"I_E_GMG_01_high_Weapon_F",
	"I_E_GMG_01_Weapon_F",
	"I_E_UAV_06_medical_backpack_F",
	"I_E_UAV_06_backpack_F",
	"I_E_AT_01_weapon_F",
	"I_E_AA_01_weapon_F",
	"RHS_SPG9_Tripod_Bag",
	"RHS_SPG9_Gun_Bag",
	"ALIVE_Terminal",
	"ALiVE_Handgrenade_stone",
	"ALiVE_Handgrenade_can",
	"ALiVE_Handgrenade_bottle",
	"ACE_CTS9",
	"ALIVE_Tablet"
]] call ace_arsenal_fnc_removeVirtualItems;