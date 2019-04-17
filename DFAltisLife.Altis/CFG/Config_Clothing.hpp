/*
*    ARRAY FORMAT:
*        0: STRING (Classname)
*        1: STRING (Display Name, leave as "" for default)
*        2: SCALAR (Price)
*        3: STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*   Clothing classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Equipment
*   Backpacks/remaining classnames can be found here (TIP: Search page for "pack"): https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EMPTY
*
*/
class Clothing {
    class bruce {
        title = "STR_Shops_C_Bruce";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_C_Poloshirt_stripped", "", 1125, "" },
            { "U_C_Poloshirt_redwhite", "", 1150, "" },
            { "U_C_Poloshirt_salmon", "I Love Rio", 1175, "" },
            { "U_C_Poloshirt_blue", "", 1250, "" },
            { "U_C_Poloshirt_burgundy", "", 1275, "" },
            { "U_C_Poloshirt_tricolour", "", 1350, "" },
            { "U_C_Poor_2", "", 1250, "" },
            { "U_IG_Guerilla2_2", "", 1650, "" },
            { "U_IG_Guerilla3_1", "", 1135, "" },
            { "U_OrestesBody", "", 1100, "" },
            { "U_IG_Guerilla2_3", "", 1200, "" },
            { "U_C_HunterBody_grn", "", 1500, "" },
            { "U_C_WorkerCoveralls", "", 2500, "" },
            { "U_NikosBody", "", 3000, "" },
            { "U_NikosAgedBody", $STR_C_Civ_Niko, 5000, "" },
            { "U_C_Man_casual_1_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_2_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_3_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_4_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_5_F", "", 5000, "" }, //Apex DLC
            { "U_C_Man_casual_6_F", "", 5000, "" }, //Apex DLC
            { "U_C_man_sport_1_F", "", 5000, "" }, //Apex DLC
            { "U_C_man_sport_2_F", "", 5000, "" }, //Apex DLC
            { "U_C_man_sport_3_F", "", 5000, "" } //Apex DLC
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 1120, "" },
            { "H_Bandanna_surfer", "", 1130, "" },
            { "H_Bandanna_khk", "", 1145, "" },
            { "H_Cap_blu", "", 1150, "" },
            { "H_Cap_grn", "", 1150, "" },
            { "H_Cap_grn_BI", "", 1150, "" },
            { "H_Cap_oli", "", 1150, "" },
            { "H_Cap_red", "", 1150, "" },
            { "H_Cap_tan", "", 1150, "" },
            { "H_Helmet_Skate", "", 1150, "" }, //Apex DLC
            { "H_Bandanna_gry", "", 1150, "" },
            { "H_Bandanna_sgg", "", 1160, "" },
            { "H_Bandanna_cbr", "", 1165, "" },
            { "H_StrawHat", "", 1225, "" },
            { "H_Hat_tan", "", 1265, "" },
            { "H_Hat_brown", "", 1276, "" },
            { "H_Hat_grey", "", 280, "" },
            { "H_BandMask_blk", $STR_C_Civ_BandMask, 1300, "" },
            { "H_Hat_blue", "", 1310, "" },
            { "H_Hat_checker", "", 1340, "" },
            { "H_Booniehat_tan", "", 1425, "" },
            { "H_Booniehat_grn", "", 1425, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 1120, "" },
            { "G_Shades_Blue", "", 1120, "" },
            { "G_Shades_Green", "", 1120, "" },
            { "G_Shades_Red", "", 1120, "" },
            { "G_Sport_Blackred", "", 1125, "" },
            { "G_Sport_BlackWhite", "", 1125, "" },
            { "G_Sport_Blackyellow", "", 1125, "" },
            { "G_Sport_Checkered", "", 1125, "" },
            { "G_Sport_Greenblack", "", 1125, "" },
            { "G_Sport_Red", "", 1125, "" },
            { "G_Lowprofile", "", 1130, "" },
            { "G_Squares", "", 1150, "" },
            { "G_Aviator", "", 1100, "" },
            { "G_Combat", "", 1125, "" },
            { "G_Lady_Mirror", "", 1150, "" },
            { "G_Lady_Dark", "", 1150, "" },
            { "G_Lady_Blue", "", 1150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_OutdoorPack_blk", "", 11500, "" },
            { "B_AssaultPack_khk", "", 12000, "" },
            { "B_AssaultPack_dgtl", "", 12000, "" },
            { "B_AssaultPack_rgr", "", 12000, "" },
            { "B_AssaultPack_sgg", "", 12000, "" },
            { "B_AssaultPack_blk", "", 12000, "" },
            { "B_AssaultPack_cbr", "", 12000, "" },
            { "B_AssaultPack_mcamo", "", 12000, "" },
            { "B_AssaultPack_tna_f", "", 12000, "" }, //Apex DLC
            { "B_TacticalPack_oli", "", 12500, "" },
            { "B_Kitbag_mcamo", "", 13500, "" },
            { "B_Kitbag_sgg", "", 13500, "" },
            { "B_Kitbag_cbr", "", 13500, "" },
            { "B_FieldPack_blk", "", 15000, "" },
            { "B_FieldPack_ocamo", "", 15000, "" },
            { "B_FieldPack_oucamo", "", 15000, "" },
            { "B_FieldPack_ghex_f", "", 15000, "" }, //Apex DLC
            { "B_Bergen_sgg", "", 16500, "" },
            { "B_Bergen_mcamo", "", 16500, "" },
            { "B_Bergen_rgr", "", 16500, "" },
            { "B_Bergen_blk", "", 16500, "" },
            { "B_Carryall_ocamo", "", 17500, "" },
            { "B_Carryall_oucamo", "", 17500, "" },
            { "B_Carryall_mcamo", "", 17500, "" },
            { "B_Carryall_oli", "", 17500, "" },
            { "B_Carryall_khk", "", 17500, "" },
            { "B_Carryall_cbr", "", 17500, "" },
            { "B_Carryall_ghex_f", "", 17500, "" }, //Apex DLC
            { "B_Bergen_dgtl_f", "", 24000, "" }, //Apex DLC
            { "B_Bergen_tna_f", "", 24000, "" } //Apex DLC
        };
    };

    class cop {
        title = "STR_Shops_C_Police";
        conditions = "";
        side = "cop";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
			{ "U_B_Wetsuit", "Roupa De Mergulho", 18000, "" },
            { "U_Rangemaster", $STR_C_Cop_uniforms, 1750, "" },
			{ "U_I_CombatUniform", "Uniforme Manga Longa", 9000, "call life_coplevel >= 2" },
			{ "U_I_CombatUniform_shortsleeve", "Uniforme BOPE Manga Curta", 9000, "call life_coplevel >= 2" },
			{ "U_B_CTRG_1", "Uniforme Tipo 1 Manga Longa", 9000, "call life_coplevel >= 2" },
			{ "U_B_CTRG_3", "Uniforme Tipo 1 Manga Curta", 9000, "call life_coplevel >= 2" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "H_Cap_police", "", 925, "" },
            { "H_Booniehat_mcamo", "", 920, "call life_coplevel >= 1" },
            { "H_Beret_blk", "", 950, "call life_coplevel >= 2" },
			{ "H_Beret_gen_F", "", 950, "call life_coplevel >= 4" },
			{ "H_Beret_02", "", 950, "call life_coplevel >= 4" },
			{ "H_Beret_Colonel", "", 950, "call life_coplevel >= 12" },
			{ "H_Beret_blk_POLICE", "", 900, "call life_coplevel >= 9" },
            { "H_MilCap_mcamo", "", 900, "" },
            { "H_MilCap_gen_F", "", 900, "" }, //Apex DLC
            { "H_MilCap_oucamo", "", 900, "" },
			{ "H_CrewHelmetHeli_B", "", 15000, "" }
			
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
			{ "G_Diving", "", 22500, "" },
			{"G_Balaclava_blk", "", 11150, "" },
            { "G_Squares", "", 1110, "" },
            { "G_Shades_Blue", "", 1120, "" },
            { "G_Sport_Blackred", "", 1120, "" },
            { "G_Sport_Checkered", "", 1120, "" },
            { "G_Sport_Blackyellow", "", 1120, "" },
            { "G_Sport_BlackWhite", "", 1120, "" },
            { "G_Shades_Black", "", 1125, "" },
            { "G_Lowprofile", "", 1130, "" },
            { "G_Combat", "", 1155, "" },
            { "G_Aviator", "", 1100, "" },
            { "G_Lady_Mirror", "", 1150, "" },
            { "G_Lady_Dark", "", 1150, "" },
            { "G_Lady_Blue", "", 1150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
			{ "V_RebreatherB", "", 25000, "" },
            { "V_Rangemaster_belt", "", 1800, "" },
            { "V_TacVest_blk_POLICE", "", 11000, "call life_coplevel >= 1" },
            { "V_TacVest_gen_F", "", 11000, "call life_coplevel >= 1" }, //Apex DLC
            { "V_PlateCarrier2_blk", "", 15000, "call life_coplevel >= 1" },
		    { "V_PlateCarrierSpec_blk", "", 18000, "call life_coplevel >= 1" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_FieldPack_cbr", "", 1500, "" },
            { "B_AssaultPack_cbr", "", 1700, "" },
            { "B_Kitbag_cbr", "", 1800, "" },
            { "B_Bergen_sgg", "", 12500, "" },
            { "B_Carryall_cbr", "", 13500, "" },
			{ "B_Bergen_tna_f", "", 24500, "" }
        };
    };

	class exercito {
        title = "Loja De Roupas Do Exercito";
        conditions = "call life_exercito >= 1";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_B_CTRG_1", "Uniforme Padrão", 8500, "call life_exercito >= 1" },
			{ "U_B_CTRG_3", "Uniforme Manga Longa", 9000, "call life_exercito >= 2" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "H_Beret_blk", "", 1000, "" },
			{ "H_Beret_grn", "", 1000, "" },
			{ "H_Beret_red", "", 1000, "" },
			{ "H_Beret_grn_SF", "", 1000, "" },
			{ "H_Beret_brn_SF", "", 1000, "" },
			{ "H_Beret_ocamo", "", 1000, "" },
			{ "H_Beret_02", "", 1000, "" },
			{ "H_Beret__colonel", "", 2000, "" },			
			{ "H_Booniehat_dgtl", "", 75, "" },
            { "H_Booniehat_oli", "", 75, "" },
			{ "H_Booniehat_mcamo", "", 75, "" },
			{ "H_Beret_gen_F", "", 75, "" },
			{ "H_Beret_02", "", 75, "" },
			{ "H_Beret_Colonel", "", 75, "" },
			{ "H_Beret_blk_POLICE", "", 75, "" },
            { "H_Beret_blk", "", 75, "" },
			{ "H_Cap_blk_Raven", "", 75, "" },
			{ "H_Cap_grn_BI", "", 75, "" },
			{ "H_PASGT_basic_olive_F", "", 950, "" },
			{ "H_HelmetB_Enh_tna_F", "", 10000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
			{"G_Balaclava_blk", "", 11150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
			{ "V_TacVest_camo", "", 4500, "" },
            { "V_PlateCarrierIA1_dgtl", "", 8500, "" },
			{ "V_PlateCarrier1_rgr_noflag_F", "", 15000, "" },
			{ "V_PlateCarrier1_blk", "", 15000, "" },
			{ "V_PlateCarrier2_rgr_noflag_F", "", 30000, "" },
			{ "V_PlateCarrierSpec_Blk", "", 30000, "" }
			
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_Kitbag_rgr", "", 1500, "" },
            { "B_AssaultPack_rgr", "", 1800, "" },
            { "B_Carryall_oli", "", 2500, "" },
			{ "B_LegStrapBag_black_F", "", 2500, "" },
			{ "B_LegStrapBag_olive_F", "", 2500, "" }
			
        };
    };
	
	class uranio {
		title = "Loja De Uniformes AntiRadiotivos";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_B_PilotCoveralls", "Uniforme AntiRadiotivo", 48000, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
			{ "H_PilotHelmetFighter_B", "Capacete AntiRadiotivo", 35000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
	};
	
    class dive {
        title = "STR_Shops_C_Diving";
        conditions = "license_civ_dive";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_B_Wetsuit", "", 22000, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Diving", "", 22500, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_RebreatherB", "", 25000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class gun_clothing {
        title = "STR_Shops_C_Gun";
        conditions = "license_civ_gun";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_Rangemaster_belt", "", 14900, "" },
			{ "V_Press_F", "", 12000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class gang_clothing {
        title = "STR_Shops_C_Gang";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_Rangemaster_belt", "", 11900, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        conditions = "";
        side = "med";
        uniforms[] = {
			//SAMU
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_Rangemaster", $STR_C_EMS_uniforms, 75, "call life_mediclevel < 9" },
			{ "U_I_CombatUniform", $STR_C_EMS_uniforms, 500, "call life_mediclevel in [2,3,4,5,6,7,8]" },
			{ "U_I_CombatUniform_shortsleeve", $STR_C_EMS_uniforms, 500, "call life_mediclevel in [2,3,4,5,6,7,8]" },
			{ "U_I_CombatUniform_tshirt", "Uniforme Condutor", 500, "call life_mediclevel in [2,3,4,5,6,7,8]" },
			//Bombeiros
			{ "U_Marshal", "Uniforme Bombeiro", 75, "call life_mediclevel > 8" },
			{ "U_I_CombatUniform", "Uniforme Padrão Bombeiros", 500, "call life_mediclevel > 11" },
			{ "U_I_CombatUniform_shortsleeve", "Uniforme Padrão Bombeiros 2", 500, "call life_mediclevel > 11" },
			//All
			{ "U_B_Wetsuit", "", 2000, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Cap_blu", "", 1110, "" },
			{ "H_MilCap_blue", "", 1200, "call life_mediclevel >= 2" },
			{ "H_PASGT_basic_white_F", "", 11200, "call life_mediclevel >= 4" },
			{ "H_PilotHelmetHeli_b", "", 1145, "call life_mediclevel >= 5" },
			{ "H_RacingHelmet_1_blue_F", "", 1145, "call life_mediclevel >= 5" },
			{ "H_Beret_blk", "", 1145, "call life_mediclevel >= 5" },
			{ "H_Beret_02", "", 1145, "call life_mediclevel >= 6" },
			{ "H_Beret_Colonel", "", 1145, "call life_mediclevel >= 7" },
			{ "H_PilotHelmetFighter_B", "", 15000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Blue", "", 1110, "" },
			{ "G_Respirator_white_F", "", 1125, "" },
			{ "G_Respirator_blue_F", "", 1125, "" },
			{ "G_Respirator_yellow_F", "", 1125, "" },
			{ "G_Shades_Black", "", 1120, "" },
            { "G_Shades_Blue", "", 1120, "" },
            { "G_Shades_Green", "", 1120, "" },
            { "G_Shades_Red", "", 1120, "" },
            { "G_Sport_Blackred", "", 1125, "" },
            { "G_Sport_BlackWhite", "", 1125, "" },
            { "G_Sport_Blackyellow", "", 1125, "" },
            { "G_Sport_Checkered", "", 1125, "" },
            { "G_Sport_Greenblack", "", 1125, "" },
            { "G_Sport_Red", "", 1125, "" },
            { "G_Lowprofile", "", 1130, "" },
            { "G_Squares", "", 1150, "" },
            { "G_Combat", "", 1125, "" },
            { "G_Lady_Mirror", "", 1150, "" },
            { "G_Lady_Dark", "", 1150, "" },
            { "G_Lady_Blue", "", 1150, "" },
			{ "G_Aviator", "", 1100, "call life_mediclevel >= 6" },
			{ "G_Diving", "", 1100, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
			{ "V_DeckCrew_red_F","", 10000, "call life_mediclevel >= 5" },
			{ "V_DeckCrew_blue_F","", 10000, "call life_mediclevel >= 5" },
			{ "V_DeckCrew_red_F","", 10000, "call life_mediclevel >= 5" },
			{ "V_LegStrapBag_black_F","", 10000, "call life_mediclevel >= 5" },
			{ "V_RebreatherB","", 14000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_FieldPack_oli", $STR_C_EMS_backpacks, 12500, "" },
			{ "B_Carryall_cbr", $STR_C_EMS_backpacks, 14500, "" },
			{ "B_Bergen_sgg", "", 22500, "" },
			{ "B_LegStrapBag_black_F","", 10000, "call life_mediclevel >= 3" },
			{ "B_Bergen_dgtl_f", "", 20000, "" }, //Apex DLC
        };
    };

    class reb {
        title = "STR_Shops_C_Rebel";
        conditions = "license_civ_rebel";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_IG_Guerilla1_1", "", 15000, "" },
            { "U_I_G_Story_Protagonist_F", "", 11700, "" },
            { "U_I_G_resistanceLeader_F", "", 11500, "" },
            { "U_IG_leader", "", 11340, "" },
            { "U_O_PilotCoveralls", "", 25610, "" },
            { "U_O_SpecopsUniform_ocamo", "", 210000, "" },
            { "U_O_GhillieSuit", "", 175000, "" },
			{ "U_B_FullGhillie_lsh", "", 150000, "" },
			{ "U_B_FullGhillie_ard", "", 150000, "" },
			{ "U_B_FullGhillie_sard", "", 150000, "" },
            { "U_B_T_Soldier_F", "", 14500, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_1_F", "", 13500, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_2_F", "", 13500, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_3_F", "", 13500, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_4_F", "", 13500, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_5_F", "", 13500, "" }, //Apex DLC
            { "U_I_C_Soldier_Camo_F", "", 13600, "" }, 
			{ "U_I_CombatUniform_tshirt", "", 15000, "" }, 
			{ "U_I_CombatUniform_shortsleeve", "", 15000, "" }, 
			{ "U_BG_Guerilla1_1", "", 12300, "" }, 
			{ "U_B_CTRG_3", "", 15200, "" }, 
			{ "U_B_CTRG_2", "", 15200, "" }, 
			{ "U_B_CTRG_1", "", 15200, "" } 
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 1650, "" },
            { "H_ShemagOpen_khk", "", 1800, "" },
            { "H_ShemagOpen_tan", "", 1850, "" },
            { "H_Shemag_olive", "", 1850, "" },
			{ "H_HelmetB", "", 14500, "" },
			{ "H_HelmetB_camo", "", 17500, "" },
            { "H_HelmetO_ocamo", "", 22500, "" },
			{ "H_CrewHelmetHeli_B", "Capacete ANTI-GAS", 50000, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 1120, "" },
            { "G_Shades_Blue", "", 1120, "" },
            { "G_Sport_Blackred", "", 1125, "" },
            { "G_Sport_Checkered", "", 1125, "" },
            { "G_Sport_Blackyellow", "", 1125, "" },
            { "G_Sport_BlackWhite", "", 1125, "" },
            { "G_Lowprofile", "", 1130, "" },
            { "G_Squares", "", 1150, "" },
            { "G_Combat", "", 1125, "" },
            { "G_Balaclava_blk", "", 1150, "" },
            { "G_Balaclava_combat", "", 1150, "" },
            { "G_Balaclava_lowprofile", "", 1150, "" },
            { "G_Balaclava_oli", "", 1150, "" },
            { "G_Bandanna_aviator", "", 1150, "" },
            { "G_Bandanna_beast", "", 1150, "" },
            { "G_Bandanna_blk", "", 1150, "" },
            { "G_Bandanna_khk", "", 1150, "" },
            { "G_Bandanna_oli", "", 1150, "" },
            { "G_Bandanna_shades", "", 1150, "" },
            { "G_Bandanna_sport", "", 1150, "" },
            { "G_Bandanna_tan", "", 1150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_BandollierB_cbr", "Sem Proteção", 1950, "" },
            { "V_HarnessO_brn", "Sem Proteção", 11250, "" },
			{ "V_TacChestrig_grn_F", "Sem Proteção", 11500, "" },
            { "V_TacVest_khk", "Colete NV1", 13200, "" },
			{ "V_TacVest_brn", "Colete NV1", 13200, "" },
			{ "V_TacVest_oli", "Colete NV1", 13200, "" },
			{ "V_TacVest_blk", "Colete NV1", 13200, "" },
			{ "V_TacVestCamo_khk", "Colete NV1", 13200, "" },
			{ "V_RebreatherB", "Respirador NV1", 14250, "" },
			{ "V_I_G_resistanceLeader_F", "Colete NV1", 13200, "" },
			{ "V_PlateCarrierIA1_dgtl", "Colete NV3", 25000, "" },
			{ "V_PlateCarrier_Kerry", "Colete NV3", 25000, "" },
			{ "V_PlateCarrier1_rgr", "Colete NV3", 25000, "" },
			{ "V_PlateCarrier2_rgr", "Colete NV4", 35000, "" },
			{ "V_PlateCarrier3_rgr", "Colete NV4", 35000, "" },
			{ "V_PlateCarrierH_CTRG", "Colete NV4", 35000, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_OutdoorPack_blk", "", 1500, "" },
            { "B_AssaultPack_khk", "", 12000, "" },
            { "B_AssaultPack_dgtl", "", 12000, "" },
            { "B_AssaultPack_rgr", "", 12000, "" },
            { "B_AssaultPack_sgg", "", 12000, "" },
            { "B_AssaultPack_blk", "", 12000, "" },
            { "B_AssaultPack_cbr", "", 12000, "" },
            { "B_AssaultPack_mcamo", "", 12000, "" },
            { "B_TacticalPack_oli", "", 12500, "" },
            { "B_Kitbag_mcamo", "", 13500, "" },
            { "B_Kitbag_sgg", "", 13500, "" },
            { "B_Kitbag_cbr", "", 13500, "" },
            { "B_FieldPack_blk", "", 15000, "" },
            { "B_FieldPack_ocamo", "", 15000, "" },
            { "B_FieldPack_oucamo", "", 15000, "" },
            { "B_Bergen_sgg", "", 16500, "" },
            { "B_Bergen_mcamo", "", 16500, "" },
            { "B_Bergen_rgr", "", 16500, "" },
            { "B_Bergen_blk", "", 16500, "" },
            { "B_Carryall_ocamo", "", 17500, "" },
            { "B_Carryall_oucamo", "", 17500, "" },
            { "B_Carryall_mcamo", "", 17500, "" },
            { "B_Carryall_oli", "", 17500, "" },
            { "B_Carryall_khk", "", 17500, "" },
            { "B_Carryall_cbr", "", 17500, "" },
			{ "B_Bergen_tna_f", "", 22000, "" }
        };
    };

    class kart {
        title = "STR_Shops_C_Kart";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_C_Driver_1_black", "", 11500, "" },
            { "U_C_Driver_1_blue", "", 11500, "" },
            { "U_C_Driver_1_red", "", 11500, "" },
            { "U_C_Driver_1_orange", "", 11500, "" },
            { "U_C_Driver_1_green", "", 11500, "" },
            { "U_C_Driver_1_white", "", 11500, "" },
            { "U_C_Driver_1_yellow", "", 11500, "" },
            { "U_C_Driver_2", "", 13500, "" },
            { "U_C_Driver_1", "", 13600, "" },
            { "U_C_Driver_3", "", 13700, "" },
            { "U_C_Driver_4", "", 13700, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_RacingHelmet_1_black_F", "", 11000, "" },
            { "H_RacingHelmet_1_red_F", "", 11000, "" },
            { "H_RacingHelmet_1_white_F", "", 11000, "" },
            { "H_RacingHelmet_1_blue_F", "", 11000, "" },
            { "H_RacingHelmet_1_yellow_F", "", 11000, "" },
            { "H_RacingHelmet_1_green_F", "", 11000, "" },
            { "H_RacingHelmet_1_F", "", 12500, "" },
            { "H_RacingHelmet_2_F", "", 12500, "" },
            { "H_RacingHelmet_3_F", "", 12500, "" },
            { "H_RacingHelmet_4_F", "", 12500, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };
};
