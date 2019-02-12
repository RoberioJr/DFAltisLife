/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Loja De Armas Legalizadas";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "hgun_Rook40_F", "", 20000, -1, "" },
            { "hgun_Pistol_01_F", "", 25000, -1, "" }, //Apex DLC
            { "hgun_Pistol_heavy_02_F", "", 38000, -1, "" },
            { "hgun_ACPC2_F", "", 47500, -1, "" },
            { "SMG_05_F", "", 70000, -1, "" }, //Apex DLC
            { "hgun_PDW2000_F", "", 83300, -1, "" },
			{ "arifle_Katiba_F", "", 100000, -1, "" } //Katiba
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 500, -1, "" },
            { "6Rnd_45ACP_Cylinder", "", 550, -1, "" },
            { "9Rnd_45ACP_Mag", "", 400, -1, "" },
            { "30Rnd_9x21_Mag", "", 500, -1, "" },
            { "30Rnd_9x21_Mag_SMG_02", "", 550, -1, "" }, //Apex DLC
            { "10Rnd_9x21_Mag", "", 650, -1, "" }, //Apex DLC
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "", 2000, -1, "" } //6.5 30rnd Katiba
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 1000, -1, "" },//Pistol Flashlight
            { "optic_ACO_grn_smg", "", 2500, -1, "" }
        };
    };

    class rebel {
        name = "Loja De Armas Clandestinas";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
            { "Rangefinder", "", 15000, -1, "" }, //Focalizador
			{ "NVGoggles", "", 2500, -1, "" }, //NVG
			{ "Binocular", "", 2500, -1, "" }, //BNC
            { "ItemGPS", "", 1000, -1, "" }, //GPS
			{ "FirstAidKit", "", 5000, -1, "" }, //KITMED
			{ "SmokeShell", "", 3500, -1, "" }, //FUMACA BRANCA
			{ "hgun_Pistol_heavy_01_MRD_F", "", 10500, -1, "" }, //4-Five
			{ "arifle_SDAR_F", "", 200000, -1, "" }, //SDAR
            { "arifle_TRG20_F", "", 60000, -1, "" }, //TRG-20
			{ "arifle_Mk20_F", "", 75000, -1, "" }, //MK-20
			{ "SMG_03C_TR_khaki", "", 100000, -1, "" }, //ADR-97
			{ "arifle_CTAR_blk_F", "", 200000, -1, "" }, //CAR
			{ "arifle_SPAR_01_blk_F", "", 185000, -1, "" }, //SPAR-16
            { "arifle_Katiba_F", "", 50000, -1, "" }, //Katiba
			{ "arifle_MXC_F", "", 110000, -1, "" }, //MXC
			{ "arifle_MX_F", "", 115000, -1, "" }, //MX
			{ "arifle_MXM_F", "", 100000, -1, "" }, //MXM
			{ "arifle_MXM_Black_F", "", 135000, -1, "" }, //MXM
			{ "arifle_MX_SW_F", "", 175000, -1, "" }, //MX-SW
			{ "arifle_MX_SW_Black_F", "", 180000, -1, "" }, //MX-SW
			{ "LMG_03_F", "", 250000, -1, "" }, //LIM-85
			{ "LMG_Mk200_F", "", 650000, -1, "" }, //MK200
			//{ "LMG_Zafir_F", "", 800000, -1, "" }, //Zafir
			{ "arifle_AKS_F", "", 245000, -1, "" }, //AKS
            { "arifle_AKM_F", "", 290000, -1, "" }, //AKM
			{ "arifle_AK12_F", "", 300000, -1, "" }, //AK-12
			{ "srifle_DMR_07_blk_F", "", 435000, -1, "" }, //CMR
			{ "srifle_DMR_01_F", "", 350000, -1, "" }, //Rahim
			{ "srifle_EBR_F", "", 500000, -1, "" }, //MK18
			{ "srifle_DMR_06_olive_F", "", 375000, -1, "" }, //MK14
			{ "srifle_DMR_03_F", "", 550000, -1, "" }, //MKl
			{ "arifle_SPAR_03_blk_F", "", 450000, -1, "" },	//SPAR-17
			//{ "srifle_DMR_04_F", "", 900000, -1, "" } // KIr
        };
        mags[] = {
            { "30Rnd_556x45_Stanag_Tracer_Red", "", 1150, -1, "" }, //5.56 30rnd TRG, SPAR-16 e MK20
            { "30Rnd_762x39_Mag_Tracer_Green_F", "", 1850, -1, "" }, //7.62 30rnd AK12 e AKM
            { "30Rnd_545x39_Mag_Tracer_Green_F", "", 1800, -1, "" }, //5.45 30rnd AKS
            { "30Rnd_65x39_caseless_green_mag_Tracer", "", 800, -1, "" }, //6.5 30rnd Katiba
            { "10Rnd_762x54_Mag", "", 1350, -1, "" }, //7.62 10rnd
            { "20Rnd_556x45_UW_mag", "", 900, -1, "" }, //5.56 20rnd
			{ "50Rnd_570x28_SMG_03", "", 1000, -1, "" }, //5.7mm 50rnd
			{ "150Rnd_762x54_Box_Tracer", "", 2500, -1, "" }, //7.62 150rnd Zafir
			{ "200Rnd_65x39_cased_Box_Tracer", "", 2000, -1, "" }, //6.5 200rnd MK200
			{ "200Rnd_556x45_Box_Tracer_Red_F", "", 1350, -1, "" }, //5.56 200rnd LIM-85
			{ "11Rnd_45ACP_Mag", "", 150, -1, "" },
			{ "30Rnd_65x39_caseless_mag_Tracer", "", 900, -1, "" }, //6.5 30rnd MX
			{ "100Rnd_65x39_caseless_mag_Tracer", "", 1080, -1, "" }, //6.5 100rnd mxSW
			{ "20Rnd_762x51_Mag", "", 1750, -1, "" }, //7.62 20rnd sniper
			{ "20Rnd_650x39_Cased_Mag_F", "", 1350, -1, "" }, //6.5 20rnd sniper
            { "30Rnd_580x42_Mag_Tracer_F", "", 1750, -1, "" }, //5.8 30rnd
			{ "10Rnd_127x54_Mag", "", 3500, -1, "" }
        };
        accs[] = {
            { "acc_flashlight", "", 1000, -1, "" },
            { "optic_ACO_grn", "", 1000, -1, "" },
            { "optic_Holosight", "", 1000, -1, "" },
			{ "optic_MRCO", "", 2500, -1, "" },
            { "optic_Hamr", "", 3500, -1, "" },
            { "optic_Arco", "", 3000, -1, "" },
			{ "optic_Arco_blk_F", "", 3000, -1, "" },
			{ "optic_ERCO_snd_F", "", 5500, -1, "" },
			{ "optic_ERCO_blk_F", "", 5500, -1, "" },
			{ "optic_DMS", "", 9000, -1, "" },
			{ "optic_AMS", "", 14000, -1, "" },
			{ "optic_AMS_snd", "", 14000, -1, "" },
			//{ "optic_LRPS", "", 50000, -1, "" },
			{ "bipod_01_F_blk", "", 16500, -1, "" },
			{ "bipod_02_F_blk", "", 16000, -1, "" }
        };
    };

    class gang {
        name = "Armamento Clandestino";
        side = "civ";
        conditions = "";
        items[] = {
            { "hgun_Rook40_F", "", 20000, -1, "" },
            { "hgun_Pistol_heavy_02_F", "", 38000, -1, "" },
            { "hgun_ACPC2_F", "", 47500, -1, "" },
            { "hgun_PDW2000_F", "", 83000, -1, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 550, -1, "" },
            { "6Rnd_45ACP_Cylinder", "", 480, -1, "" },
            { "9Rnd_45ACP_Mag", "", 625, -1, "" },
            { "30Rnd_9x21_Mag", "", 673, -1, "" }
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 1500, -1, "" },//Pistol Flashlight
            { "optic_ACO_grn_smg", "", 1950, -1, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Loja De Variedades";
        side = "civ";
        conditions = "";
        items[] = {
            { "Binocular", "", 4500, -1, "" },
            { "ItemGPS", "", 6500, -1, "" },
            { "ItemMap", "", 1200, -1, "" },
            { "ItemCompass", "", 5000, -1, "" },
            { "ItemWatch", "", 5000, -1, "" },
            { "FirstAidKit", "", 3500, -1, "" },
            { "NVGoggles", "", 15000, -1, "" },
            { "Chemlight_red", "", 1000, -1, "" },
            { "Chemlight_yellow", "", 1000, -1, "" },
            { "Chemlight_green", "", 1000, -1, "" },
            { "Chemlight_blue", "", 1000, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Posto De Gasolina";
        side = "";
        conditions = "";
        items[] = {
            { "Binocular", "", 7000, -1, "" },
            { "ItemGPS", "", 9000, -1, "" },
            { "ItemMap", "", 5150, -1, "" },
            { "ItemCompass", "", 5000, -1, "" },
            { "ItemWatch", "", 5000, -1, "" },
            { "FirstAidKit", "", 6000, -1, "" },
            { "NVGoggles", "", 20000, -1, "" },
            { "Chemlight_red", "", 2000, -1, "" },
            { "Chemlight_yellow", "", 2000, -1, "" },
            { "Chemlight_green", "", 2000, -1, "" },
            { "Chemlight_blue", "", 2000, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Lojas de Armas Policial";
        side = "cop";
        conditions = "";
        items[] = {
			{ "Rangefinder", "", 15000, -1, "" }, //Focalizador
			{ "NVGoggles", "", 2500, -1, "" }, //NVG
			{ "Binocular", "", 2500, -1, "" }, //BNC
            { "ItemGPS", "", 500, -1, "" }, //GPS
			{ "FirstAidKit", "", 250, -1, "" }, //KITMED
			{ "SmokeShellYellow", "Gas Lacrimogeneo", 10000, -1, "" }, //FUMACA BRANCA
			{ "hgun_P07_snds_F", $STR_W_items_StunPistol, 2500, -1, "call life_coplevel >= 1" },
			{ "arifle_SDAR_F", $STR_W_items_TaserRifle, 175000, -1, "call life_coplevel >= 1" },
            { "arifle_TRG20_F", "", 60000, -1, "call life_coplevel >= 1" }, //TRG-20
			{ "arifle_Mk20_F", "", 67500, -1, "call life_coplevel >= 1" }, //MK-20
			{ "SMG_03C_TR_black", "", 100000, -1, "call life_coplevel >= 2" }, //ADR-97
			{ "arifle_CTAR_blk_F", "",150000, -1, "call life_coplevel >= 2" }, //CAR
			{ "arifle_SPAR_01_blk_F", "", 120000, -1, "call life_coplevel >= 2" }, //SPAR-16
            { "arifle_Katiba_F", "", 50000, -1, "call life_coplevel >= 1" }, //Katiba
			{ "arifle_MXC_F", "", 50000, -1, "call life_coplevel >= 1" }, //MXC
			{ "arifle_MX_F", "", 52500, -1, "call life_coplevel >= 1" }, //MX
			{ "arifle_MXM_Black_F", "", 100000, -1, "call life_coplevel >= 1" }, //MXM
			{ "arifle_MX_SW_Black_F", "", 110000, -1, "call life_coplevel >= 1" }, //MX-SW
			{ "LMG_03_F", "", 115000, -1, "call life_coplevel >= 2" }, //LIM-85
			{ "LMG_Mk200_F", "", 225000, -1, "call life_coplevel >= 3" }, //MK200
			//{ "LMG_Zafir_F", "", 400000, -1, "call life_coplevel >= 4" }, //Zafir
			{ "arifle_AK12_F", "", 137500, -1, "call life_coplevel >= 3" }, //AK-12
			{ "srifle_DMR_07_blk_F", "", 167500, -1, "call life_coplevel >= 3" }, //CMR
			{ "srifle_DMR_01_F", "", 150000, -1, "call life_coplevel >= 4" }, // Rahim
			{ "srifle_EBR_F", "", 200500, -1, "call life_coplevel >= 3" }, //MK18
			{ "srifle_DMR_06_olive_F", "", 210000, -1, "call life_coplevel >= 3" }, //MK14
			{ "srifle_DMR_03_F", "", 250000, -1, "call life_coplevel >= 4" }, //MKl
			{ "arifle_SPAR_03_blk_F", "", 275000, -1, "call life_coplevel >= 4" }, //SPAR-17
			//{ "srifle_DMR_04_F", "", 900000, -1, "" } // KIr
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, -1, "" },
            { "20Rnd_556x45_UW_mag", $STR_W_mags_TaserRifle, 125, -1, "" },
            { "30Rnd_556x45_Stanag_Tracer_Red", "", 1150, -1, "" }, //5.56 30rnd TRG, SPAR-16 e MK20
            { "30Rnd_762x39_Mag_Tracer_Green_F", "", 1850, -1, "" }, //7.62 30rnd AK12 e AKM
            { "30Rnd_65x39_caseless_green_mag_Tracer", "", 800, -1, "" }, //6.5 30rnd Katiba
            { "10Rnd_762x54_Mag", "", 1350, -1, "" }, //7.62 10rnd
			{ "150Rnd_762x54_Box_Tracer", "", 2500, -1, "" }, //7.62 150rnd Zafir
			{ "200Rnd_65x39_cased_Box_Tracer", "", 2000, -1, "" }, //6.5 200rnd MK200
			{ "200Rnd_556x45_Box_Tracer_Red_F", "", 1350, -1, "" }, //5.56 200rnd LIM-85
			{ "11Rnd_45ACP_Mag", "", 150, -1, "" },
			{ "30Rnd_65x39_caseless_mag_Tracer", "", 900, -1, "" }, //6.5 30rnd MX
			{ "100Rnd_65x39_caseless_mag_Tracer", "", 1080, -1, "" }, //6.5 100rnd mxSW
			{ "20Rnd_762x51_Mag", "", 1750, -1, "" }, //7.62 20rnd sniper
			{ "20Rnd_650x39_Cased_Mag_F", "", 1350, -1, "" }, //6.5 20rnd sniper
            { "30Rnd_580x42_Mag_Tracer_F", "", 1750, -1, "" }, //5.8 30rnd
			{ "50Rnd_570x28_SMG_03", "", 1000, -1, "" }, //5.7mm 50rnd
			{ "10Rnd_127x54_Mag", "", 3500, -1, "" }
        };
        accs[] = {
			{ "acc_flashlight_pistol", "", 250, -1, "" },//Pistol Flashlight
			{ "acc_flashlight", "", 1000, -1, "" },
			{ "optic_MRD", "", 2750, -1, "" },
            { "optic_ACO_grn", "", 2000, -1, "" },
            { "optic_Holosight", "", 2000, -1, "" },
			{ "optic_MRCO", "", 3500, -1, "" },
			{ "optic_Arco", "", 7000, -1, "" },
            { "optic_Hamr", "", 7500, -1, "call life_coplevel >= 1" },
			{ "optic_Arco_blk_F", "", 7000, -1, "call life_coplevel >= 1" },
			{ "optic_ERCO_snd_F", "", 6500, -1, "call life_coplevel >= 1" },
			{ "optic_ERCO_blk_F", "", 6500, -1, "call life_coplevel >= 1" },
			{ "optic_DMS", "", 12000, -1, "call life_coplevel >= 1" },
			{ "optic_AMS", "", 18000, -1, "call life_coplevel >= 1" },
			//{ "optic_LRPS", "", 50000, -1, "call life_coplevel >= 7" },
			{ "bipod_01_F_blk", "", 5000, -1, "call life_coplevel >= 1" },
			{ "bipod_02_F_blk", "", 5000, -1, "call life_coplevel >= 1" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, -1, "" },
            { "Binocular", "", 150, -1, "" },
            { "FirstAidKit", "", 150, -1, "" },
            { "NVGoggles", "", 1200, -1, "" },
			{ "SmokeShellRed", "", 150, -1, "" }
        };
        mags[] = {};
        accs[] = {};
    };
};
