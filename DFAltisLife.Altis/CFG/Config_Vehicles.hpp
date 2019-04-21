class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: STRING (Condition)
    *    FORMAT:
    *        STRING (Conditions) - Must return boolean :
    *            String can contain any amount of conditions, aslong as the entire
    *            string returns a boolean. This allows you to check any levels, licenses etc,
    *            in any combination. For example:
    *                "call life_coplevel && license_civ_someLicense"
    *            This will also let you call any other function.
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    class civ_car {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "B_Quadbike_01_F", "" }, //QUAD 
            { "C_Hatchback_01_F", "" }, //HATCHBACK
			{ "C_Hatchback_01_sport_F", "" }, //HATCHBACK S
            { "C_Offroad_01_F", "" }, //OFFROAD
            { "C_SUV_01_F", "" }, //SUV
			{ "C_Van_02_vehicle_F", "" },
            { "C_Van_01_transport_F", "" }, //Chaninha
            { "C_Offroad_02_unarmed_F", "" } //JIPE APEX
        };
    };

    class kart_shop {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Kart_01_Blu_F", "" },
            { "C_Kart_01_Fuel_F", "" },
            { "C_Kart_01_Red_F", "" },
            { "C_Kart_01_Vrana_F", "" }
        };
    };

    class civ_truck {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Van_01_box_F", "" },  //Chaninha BOX
            { "C_Truck_02_transport_F", "" }, //Zamack Transporte
            { "C_Truck_02_covered_F", "" }, //Zamack Coberto
            { "B_Truck_01_transport_F", "" }, //H Transporte
            { "O_Truck_03_transport_F", "" }, //T Transporte
            { "O_Truck_03_covered_F", "" }, //T Coberto
            { "B_Truck_01_box_F", "" }, //H BOX
            { "O_Truck_03_device_F", "" }, //T Device
            { "C_Van_01_fuel_F", "" }, //Chaninha FUEL
            { "C_Truck_02_fuel_F", "" }, //Zamack FUEL
            { "B_Truck_01_covered_F", "" } //H Coberto
        };
    };

    class civ_air {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", "" }, //MH900
            { "B_Heli_Light_01_F", "" }, //MH9 HUMMINGBIRD    
            { "O_Heli_Light_02_unarmed_F", "" }, //ORCA
			{ "I_Heli_Transport_02_F", "" }, //MOHAWK
			{ "O_Heli_Transport_04_covered_F", "" }, //TARU T
			{ "O_Heli_Transport_04_box_F", "" }, //TARU C
			{ "B_Heli_Transport_03_unarmed_F", "" }, //HURON
            { "C_Plane_Civil_01_F", "" }, //CEASAR
			{ "C_Plane_Civil_01_racing_F","" }, //CEASAR Sport
			{ "B_T_VTOL_01_infantry_F", "" }, //BLACKFISH
			{ "B_T_VTOL_01_vehicle_F", "" } //BLACKFISH Carga
        };
    };

     class civ_ship {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Rubberboat", "" },
            { "C_Boat_Civil_01_F", "" },
            { "B_SDV_01_F", "" },
            { "C_Boat_Transport_02_F", "" }, //Apex DLC
            { "C_Scooter_Transport_01_F", "" } //Apex DLC
        };
    };

    class reb_car {
        side = "civ";
        conditions = "";
        vehicles[] = {
			{ "B_Quadbike_01_F", "" }, //QUAD 
            { "C_Hatchback_01_F", "" }, //HATCHBACK
			{ "C_Hatchback_01_sport_F", "" }, //HATCHBACK S
            { "C_Offroad_01_F", "" }, //OFFROAD
            { "C_SUV_01_F", "" }, //SUV
            { "C_Van_01_transport_F", "" }, //Chaninha
            { "C_Offroad_02_unarmed_F", "" }, //JIPE APEX
            { "I_G_Van_02_vehicle_F", "" }, //VAN CAMO
			{ "I_G_Van_02_transport_F", "" }, //VAN Trasporte
            //{ "B_G_Offroad_01_armed_F", "" }, //OFFROAD ARMADO
			{ "O_LSV_02_unarmed_F", "" }, //Qilin Apex
			//{ "B_LSV_01_unarmed_F", "" }, //PROWLER Apex
			{ "C_Van_01_box_F", "" },  //Chaninha BOX
            { "C_Truck_02_transport_F", "" }, //Zamack Transporte
            { "C_Truck_02_covered_F", "" }, //Zamack Coberto
            { "B_Truck_01_transport_F", "" }, //H Transporte
            { "O_Truck_03_transport_F", "" }, //T Transporte
            { "O_Truck_03_covered_F", "" }, //T Coberto
            { "B_Truck_01_box_F", "" }, //H BOX
            { "O_Truck_03_device_F", "" }, //T Device
            { "C_Van_01_fuel_F", "" }, //Chaninha FUEL
            { "C_Truck_02_fuel_F", "" }, //Zamack FUEL
            { "B_Truck_01_covered_F", "" }, //H Coberto
			{ "B_MRAP_01_F", "" }, //Hunter
			{ "O_MRAP_02_F", "" }, //Ifrit
			{ "I_MRAP_03_F", "" }, //Strider
			{ "B_Heli_Light_01_stripped_F", "" }, //MH9 HUMMINGBIRD REB 
		    { "I_Heli_light_03_unarmed_F", "" } //HellCat
        };
    };

    class med_shop {
        side = "med";
        conditions = "";
        vehicles[] = {
            { "C_Offroad_01_F", "call life_mediclevel >= 1" },//OFFROAD
			{ "C_SUV_01_F", "call life_mediclevel >= 5" }, //SUV
			{ "B_MRAP_01_F", "call life_mediclevel >= 7" },//HUNTER
			{ "C_Van_02_medevac_F", "call life_mediclevel >= 1" }    //Ambulancia Laws Of War
        };
    };

    class med_air_hs {
        side = "med";
        conditions = "";
        vehicles[] = {
            { "B_Heli_Light_01_F", "call life_mediclevel >= 1" },
            { "O_Heli_Light_02_unarmed_F", "call life_mediclevel >= 5" },
			{ "I_Heli_light_03_unarmed_F", "call life_mediclevel > 8" }
        };
    };

    class cop_car {
        side = "cop";
        conditions = "";
        vehicles[] = {
			{ "C_Quadbike_01_F", "" },
            { "C_Offroad_01_F", "" },
            { "C_SUV_01_F", "" },
            { "C_Hatchback_01_sport_F", "call life_coplevel >= 2" },
			{ "O_LSV_02_unarmed_F", "call life_coplevel >= 4" },
			{ "B_LSV_01_unarmed_F", "call life_coplevel >= 4" },
            { "B_MRAP_01_F", "call life_coplevel >= 4" },
			{ "I_MRAP_03_F", "call life_coplevel >= 4" },
			{ "C_Offroad_01_F", "call life_coplevel >= 18" },
			{ "B_LSV_01_unarmed_F", "call life_coplevel >= 18" },
			{ "B_T_APC_Wheeled_01_cannon_F", "call life_coplevel >= 18" },
			{ "B_Heli_Light_01_F", "call life_coplevel >= 18" },
			{ "I_C_Offroad_02_LMG_F", "call life_coplevel >= 18" },
			{ "B_Heli_Transport_03_unarmed_F", "call life_coplevel >= 18" },
			{ "B_T_MRAP_01_F", "call life_coplevel >= 18" },
			{ "B_T_Truck_01_ammo_F", "call life_coplevel >= 18" },
			{ "B_T_Truck_01_medical_F", "call life_coplevel >= 18" },
			{ "I_Plane_Fighter_04_F", "call life_coplevel >= 18" },
			{ "B_T_MBT_01_Arty_F", "call life_coplevel >= 18" },
			{ "B_APC_Tracked_01_AA_F", "call life_coplevel >= 18" },
			{ "B_APC_Tracked_01_rcws_F", "call life_coplevel >= 18" },
			{ "B_APC_Tracked_01_crv_F", "call life_coplevel >= 18" },
			{ "I_APC_Wheeled_03_Cannon_F", "call life_coplevel >= 18" },
			{ "B_T_MBT_03_cannon_F", "call life_coplevel >= 18" },
			{ "B_T_VTOL_01_vehicle_F", "call life_coplevel >= 18" },
			{ "I_Heli_light_03_dynamicLoadout_F", "call life_coplevel >= 18" },
			{ "B_G_Van_02_transport_F", "call life_coplevel >= 18" },
			{ "C_Offroad_01_repair_F", "call life_coplevel >= 18" },			
			{ "B_Heli_Transport_01_F", "call life_coplevel >= 18" },
			{ "B_Heli_Attack_01_dynamicLoadout_F" "call life_coplevel >= 18" },
			{ "I_Plane_Fighter_04_F", "call life_coplevel >= 18" },
			{ "C_Offroad_02_unarmed_F", "call life_coplevel >= 18" },
			{ "C_Van_02_transport_F", "call life_coplevel >= 18" }
			
        };
    };

	/*class exercito {
        side = "civ";
        conditions = "call life_exercito >= 1";
        vehicles[] = {
            { "C_Offroad_01_F", "" },
			{ "B_LSV_01_unarmed_F", "call life_exercito >= 2" },
			{ "B_T_APC_Wheeled_01_cannon_F", "call life_exercito >= 5" },
			{ "B_Heli_Light_01_F", "call life_exercito >= 2" },
			{ "I_C_Offroad_02_LMG_F", "call life_exercito >= 2" },
			{ "B_Heli_Transport_03_unarmed_F", "call life_exercito >= 2" },
			{ "B_T_MRAP_01_F", "call life_exercito >= 2" },
			{ "B_T_Truck_01_ammo_F", "call life_exercito >= 2" },
			{ "B_T_Truck_01_medical_F", "call life_exercito >= 2" },
			{ "I_Plane_Fighter_04_F", "call life_exercito >= 8" },
			{ "B_T_MBT_01_Arty_F", "call life_exercito >= 8" },
			{ "B_APC_Tracked_01_AA_F", "call life_exercito >= 8" },
			{ "B_APC_Tracked_01_rcws_F", "call life_exercito >= 8" },
			{ "B_APC_Tracked_01_crv_F", "call life_exercito >= 8" },
			{ "I_APC_Wheeled_03_Cannon_F", "call life_exercito >= 8" },
			{ "B_T_MBT_03_cannon_F", "call life_exercito >= 8" },
			{ "B_T_VTOL_01_vehicle_F", "call life_exercito >= 8" },
			{ "I_Heli_light_03_dynamicLoadout_F", "call life_exercito >= 3" },
			{ "B_G_Van_02_transport_F", "call life_exercito >= 3" },
			{ "C_Offroad_01_repair_F", "call life_exercito >= 3" },			
			{ "B_Heli_Transport_01_F", "call life_exercito >= 3" },
			{ "B_Heli_Attack_01_dynamicLoadout_F" "call life_exercito >= 9" },
			{ "I_Plane_Fighter_04_F", "call life_exercito >= 9" }
			
        };
		
    };*/

    class cop_air {
        side = "cop";
        conditions = "";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" },
            { "I_Heli_light_03_unarmed_F", "call life_coplevel >= 4" },
			{ "B_Heli_Transport_03_unarmed_F", "call life_coplevel >= 6" } //HURON
        };
    };

    class cop_ship {
        side = "cop";
        conditions = "";
        vehicles[] = {
            { "B_Boat_Transport_01_F", "" },
            { "C_Boat_Civil_01_police_F", "" },
            { "C_Boat_Transport_02_F", "" }, //Apex DLC
            { "B_Boat_Armed_01_minigun_F", "call life_coplevel >= 3" },
            { "B_SDV_01_F", "" }
        };
    };
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.5]
    *       Medic [Purchase, Sell]: [0.75, 0.5]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.1
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: STRING (Condition)
    *    Textures config follows { Texture Name, side, {texture(s)path}, Condition}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	
	/* Adição De Veiculos RJ */
	
	class B_T_APC_Wheeled_01_cannon_F {
	    vItemSpace = 85;
		conditions = "call life_exercito >= 1";
		price = 650000;
		textures[] = {
			{ "Exercito", "civ", {
                "A3\Armor_F_Exp\APC_Wheeled_01\data\APC_Wheeled_01_base_olive_CO.paa",
				"A3\Armor_F_Exp\APC_Wheeled_01\data\APC_Wheeled_01_adds_olive_co.paa",
				"A3\Armor_F_Exp\APC_Wheeled_01\data\APC_Wheeled_01_tows_olive_co.paa",
				"a3\Armor_F\Data\camonet_NATO_Green_CO.paa",
				"a3\Armor_F\Data\cage_olive_CO.paa"
            }, "call life_exercito >= 1" },
		};
	};
	
	//Quad Da Cop Turbo
	class C_Quadbike_01_F {
		vItemSpace = 50;
		conditions = "";
		price = 15000;
		textures[] = {
			{ "Policia - Preto", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            }, "call life_coplevel >= 1" },
		};
	};
	
	//HellCat
	class I_Heli_light_03_unarmed_F {
	    vItemSpace = 550;
		conditions = "";
		price = 1250000;
		textures[] = {
			{ "Policia", "cop", {
				"textures\veh\cop\hellcatpm.paa"
			}, "call life_coplevel >= 1" },
			{ "Bombeiros", "med", {
				"textures\veh\med\hellbm.paa"
			}, "call life_mediclevel > 8" },
			{ "Rebelde", "reb", {
				"\A3\air_f_epb\Heli_Light_03\data\Heli_Light_03_base_INDP_CO.paa"
			}, "" }
		};
	};
	
	//Mohawk
	class I_Heli_Transport_02_F {
	    vItemSpace = 800;
		conditions = "";
		price = 1440000;
		textures[] = {
			{ "Civil 1", "civ", {
		        "\A3\Air_F_beta\Heli_Transport_02\Data\Skins\Heli_Transport_02_1_ion_CO.paa",
			    "\A3\Air_F_beta\Heli_Transport_02\Data\Skins\Heli_Transport_02_2_ion_CO.paa",
				"\A3\Air_F_beta\Heli_Transport_02\Data\Skins\Heli_Transport_02_3_ion_CO.paa"
			}, "" },
			{ "Civil 2", "civ", {
		        "\A3\Air_F_beta\Heli_Transport_02\Data\Skins\Heli_Transport_02_1_dahoman_CO.paa",
			    "\A3\Air_F_beta\Heli_Transport_02\Data\Skins\Heli_Transport_02_2_dahoman_CO.paa",
				"\A3\Air_F_beta\Heli_Transport_02\Data\Skins\Heli_Transport_02_3_dahoman_CO.paa"				
			}, "" }
		};
	};
	
	//Taru T
	class O_Heli_Transport_04_covered_F {
	    vItemSpace = 450;
		conditions = "";
		price = 810000;
		textures[] = {};
	};
	
	//Taru C
	class O_Heli_Transport_04_box_F {
	    vItemSpace = 650;
		conditions = "";
		price = 1170000;
		textures[] = {};
	};
	
	//Huron
	class B_Heli_Transport_03_unarmed_F {
	    vItemSpace = 800;
		conditions = "";
		price = 2000000;
		textures[] = {
			{ "Black", "civ", {
                "#(argb,8,8,3)color(0,0,0,0.8)",
				"#(argb,8,8,3)color(0,0,0,0.8)"
            }, "" },
			{ "PM", "cop", {
                "textures\veh\cop\Huron.paa",
				"textures\veh\cop\Huron2.paa"
            }, "" }
		};
	};
	
	//BLACKFISH
	class B_T_VTOL_01_infantry_F {
	    vItemSpace = 1500;
		conditions = "";
		price = 5000000;
		textures[] = {};
	};
	
	class B_T_VTOL_01_vehicle_F {
	    vItemSpace = 380;
		conditions = "";
		price = 5000000;
		textures[] = {};
	};
	
	//Ceasar Sport
	class C_Plane_Civil_01_racing_F {
		vItemSpace = 125;
		conditions = "";
		price = 225000;
		textures[] = {};
	};
	
	class C_Van_02_vehicle_F {
		vItemSpace = 100;
		conditions = "";
		price = 125000;
		textures[] = {};
	};
	
	/* Terreste REB */
	
	//Van CAMO
	class I_G_Van_02_vehicle_F {
		vItemSpace = 110;
		conditions = "";
		price = 200000;
		textures[] = {};
	};
	
	//Van Trasp CAMO
	class I_G_Van_02_transport_F {
		vItemSpace = 45;
		conditions = "";
		price = 120000;
		textures[] = {};
	};
	
	//Qilin
	class O_LSV_02_unarmed_F {
		vItemSpace = 100;
		conditions = "";
		price = 280000;
		textures[] = {
			{ "Rebelde", "reb", {
				"\a3\soft_f_exp\LSV_02\Data\CSAT_LSV_01_arid_CO.paa",
				"\a3\soft_f_exp\LSV_02\Data\CSAT_LSV_02_arid_CO.paa"
			}, "" },
			{ "Policia Militar", "cop", {
				"textures\veh\cop\qillinpm.paa"
            }, "" }
		};
	};
	
	//PROWLER
	class B_LSV_01_unarmed_F {
		vItemSpace = 85;
		conditions = "";
		price = 240000;
		textures[] = {
			{ "PM", "cop", {
				"textures\veh\cop\prowlerpm.paa"
			}, "" },
			{ "Exercito", "civ", {
				"textures\veh\exerc\prowler_eb.paa"
			}, "call life_exercito >= 1" }
		};
	};
	
	//Ifrit
	class O_MRAP_02_F {
		vItemSpace = 95;
		conditions = "";
		price = 450000;
		textures[] = {
			{ "Rebelde", "reb", {
				"\a3\soft_f\MRAP_02\Data\MRAP_02_ext_01_CO.paa",
				"\a3\soft_f\MRAP_02\Data\MRAP_02_ext_02_CO.paa"
			}, "" }
		};
	};
	
	//Strider
	class I_MRAP_03_F {
		vItemSpace = 70;
		conditions = "";
		price = 500000;
		textures[] = {
			{ "Rebelde", "reb", {
				"a3\soft_f_beta\mrap_03\data\MRAP_03_ext_CO.paa"
			}, "" },
			{ "Policia Militar", "cop", {
				"textures\veh\cop\striderpm.paa"
			}, "" }
		};
	};
	
	class C_Truck_02_transport_F {
		vItemSpace = 400;
		conditions = "";
		price = 300000;
		textures[] = {};
	};
	
	class C_Truck_02_covered_F {
		vItemSpace = 450;
		conditions = "";
		price = 375000;
		textures[] = {};
	};
	
	class C_Van_02_medevac_F {
	    vItemSpace = 135;
		conditions = "";
		price = 80000;
		textures[] = {
		    { "Ambulancia", "med", {
				"textures\veh\med\van_samu.paa"
			}, "call life_mediclevel < 9" },
			{ "Ambulancia", "med", {
				"textures\veh\med\van_bm.paa"
			}, "call life_mediclevel > 8" }
		};
	};

    // Apex DLC
    class C_Boat_Transport_02_F {
        vItemSpace = 150;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 60000;
        textures[] = {
            { "Civilian", "civ", {
                "\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_civilian_CO.paa"
            }, "" },
            { "Black", "cop", {
                "\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_CO.paa"
            }, "" }
        };
    };

    // Apex DLC
    class C_Offroad_02_unarmed_F {
        vItemSpace = 200;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 85000;
        textures[] = {
            { "Black", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa"
            }, "" },
            { "Green", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_orange_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa"
            }, "" },
			{ "Black / White", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    // Apex DLC
    class C_Plane_Civil_01_F {
        vItemSpace = 100;
        conditions = "license_civ_pilot || {!(playerSide isEqualTo civilian)}";
        price = 180000;
        textures[] = {
            { "Racing (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Racing", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Racer_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Red Line (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Red Line", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Tribal (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Tribal", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Tribal_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Blue Wave (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Blue Wave", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" }
        };
    };

    // Apex DLC
    class C_Scooter_Transport_01_F {
        vItemSpace = 50;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 25000;
        textures[] = {
            { "Black", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Black_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Black_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Blue_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Blue_co.paa"
            }, "" },
            { "Grey", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Grey_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Grey_co.paa"
            }, "" },
            { "Green", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Lime_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Lime_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Red_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"
            }, "" },
            { "Yellow", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Yellow_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Yellow_CO.paa"
            }, "" }
        };
    };

    // Apex DLC não foi implementada
    class O_T_LSV_02_unarmed_F {
        vItemSpace = 100;
        conditions = "";
        price = 100000;
        textures[] = {
            { "Arid", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_arid_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_arid_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_arid_CO.paa"
            }, "" },
            { "Black", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_black_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_black_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_black_CO.paa"
            }, "" },
            { "Green Hex", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_ghex_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_ghex_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_ghex_CO.paa"
            }, "" }
        };
    };

    class I_Truck_02_medical_F {
        vItemSpace = 150;
        conditions = "";
        price = 100000;
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 200;
        conditions = "";
        price = 150000;
        textures[] = {};
    };

    class B_Truck_01_medical_F {
        vItemSpace = 250;
        conditions = "";
        price = 200000;
        textures[] = {};
    };

    class C_Rubberboat {
        vItemSpace = 50;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 50000;
        textures[] = { };
    };

    class B_Heli_Transport_01_F { // não foi implementado
        vItemSpace = 200;
        conditions = "license_cop_cAir || {!(playerSide isEqualTo west)}";
        price = 200000;
        textures[] = {};
    };

    class B_MRAP_01_hmg_F { //não foi implementado
        vItemSpace = 100;
        conditions = "";
        price = 750000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        conditions = "license_cop_cg || {!(playerSide isEqualTo west)}";
        price = 150000;
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        conditions = "license_cop_cg || {!(playerSide isEqualTo west)}";
        price = 50000;
        textures[] = { };
    };

    class O_Truck_03_transport_F {
        vItemSpace = 500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 750000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 900;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 3000000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F { // não foi implementado
        vItemSpace = 5000;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class Box_IND_Grenades_F { //não foi implementado
        vItemSpace = 350;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class B_supplyCrate_F { //não foi implementado
        vItemSpace = 700;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 200;
        conditions = "";
        price = 75000;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 65;
        conditions = "license_civ_rebel || {!(playerSide isEqualTo civilian)}";
        price = 500000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 60000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        conditions = "license_cop_cg || {!(playerSide isEqualTo west)}";
        price = 60000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 900;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 2000000;
        textures[] = { 
				{ "Diablo", "civ", {
					"textures\veh\civ\frenteHemttCiv.paa"
				}, "" }
			};
    };

    class B_Truck_01_transport_F {
        vItemSpace = 700;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1000000;
        textures[] = { };
    };

	/*
    class O_MRAP_02_F {
        vItemSpace = 60;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 150000;
        textures[] = { };
    };
    */
	
    class C_Offroad_01_F {
        vItemSpace = 200;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 60000;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            }, "" },
            { "Yellow", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            }, "" },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            }, "" },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            }, "" },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            }, "" },
			{ "Manga", "civ", {
                "textures\veh\civ\offroadmanga.paa"
            }, "" },
            { "Taxi", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            }, "" },
            /*{ "Police", "cop", {
                "#(ai,64,64,1)Fresnel(1.3,7)"
            }, "" }*/
			{ "Policia", "cop", {
				"textures\veh\cop\offroadpm.paa"
			}, "call life_coplevel < 11" },
			{ "SAMU", "med", {
				"textures\veh\med\offroad_samu.paa"
			}, "call life_mediclevel < 9" },
			{ "Bombeiros", "med", {
				"textures\veh\med\offroad_bm.paa"
			}, "call life_mediclevel > 8" },
			{ "Exercito", "civ", {
				"textures\veh\exerc\offroad_eb.paa"
			}, "call life_exercito >= 1" },
			{ "BOPE", "cop", {
				"textures\veh\bope\bopeoffroad.paa"
			}, "" }
        };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 20;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 15000;
        textures[] = {};
    };
/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 150;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 35000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            }, "" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            }, "" },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            }, "" },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            }, "" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            }, "" },
            /*{ "Police", "cop", {
                "#(ai,64,64,1)Fresnel(1.3,7)"
            }, "" },*/
			{ "Policia", "cop", {
                "textures\veh\cop\hatchbackpm.paa"
            }, "" },
			{ "Policia Civil", "cop", {
                "textures\veh\pc\hatchbackpc.paa"
            }, "call life_coplevel >= 14" }
        };
    };


	class C_Van_02_transport_F {
        vItemSpace = 150;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 100000;
        textures[] = {
            { "Black / White", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
			
        };
    };
	
	class B_Quadbike_01_F {
        vItemSpace = 50;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 10000;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            }, "" },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            }, "" },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            }, "" },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            }, "" },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            }, "" },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            }, "" }
        };
    };

    class I_Truck_02_covered_F { //não foi implementado
        vItemSpace = 250;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 100000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class I_Truck_02_transport_F { //não foi implementado
        vItemSpace = 200;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 75000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 620;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 930000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 100;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 20000;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            }, "" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            }, "" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            }, "" },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            }, "" },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            }, "" },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            }, "" },
			{ "Samu", "med", {
                "textures\veh\med\hatchback_samu.paa"
            }, "" },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            }, "" }
        };
    };

    class C_SUV_01_F {
        vItemSpace = 180;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 55000;
        textures[] = {
            { "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            }, "" },
            { "Ferrari", "civ", {
                "textures\veh\civ\ferrariSuv.paa"
            }, "" },
            { "Batman", "civ", {
                "textures\veh\civ\batmanSuv.paa"
            }, "" },
			{ "Monster", "civ", {
                "textures\veh\civ\suvmonster.paa"
            }, "" },
			{ "Hello Kitty", "civ", {
                "textures\veh\civ\kittySuv.paa"
            }, "" },
			{ "Rebelde", "civ", {
                "textures\veh\civ\suvdesert.paa"
            }, "license_civ_rebel" },
			{ "Digital HEXAGONO", "civ", {
                "textures\veh\civ\suvhex.paa"
            }, "license_civ_rebel" },
			{ "Samu", "med", {
                "textures\veh\med\suv_samu.paa"
            }, "" },
            { "Policia - Provisório", "cop", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"
            }, "" },
			{ "Policia", "cop", {
                "textures\veh\cop\suvpm.paa"
            }, "" },
			{ "Policia Civil", "cop", {
                "textures\veh\pc\suvpc.paa"
            }, "call life_coplevel >= 14" }
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 250;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 200000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            }, "" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            }, "" }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 300;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 100000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            }, "" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            }, "" },
			{ "Friboi", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa",
				"textures\veh\civ\bau_friboi.paa"
            }, "" }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 80;
        conditions = "";
        price = 600000;
        textures[] = {
			{ "Rebelde", "reb", {
				"\a3\soft_f\MRAP_01\Data\MRAP_01_base_CO.paa",
				"\a3\soft_f\MRAP_01\Data\MRAP_01_adds_CO.paa"
			}, "" },
			{ "Policia Militar", "cop", {
				"textures\veh\cop\hunterpm.paa",
				"textures\veh\cop\hunterpm2.paa"
			}, "call life_coplevel >= 1" },
			{ "SAMU", "med", {
				"textures\veh\med\HunterSamu01.paa",
				"textures\veh\med\HunterSamu02.paa"
			}, "" },
			{ "BOPE", "cop", {
				"textures\veh\bope\bopehunter.paa",
				"textures\veh\bope\bopehunter2.paa"
			}, "" }
        };
    };

     class B_Heli_Light_01_stripped_F {
        vItemSpace = 200;
        conditions = "";
        price = 500000;
        textures[] = {
			{ "Rebelde Padrão", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Heli_Light_01_ext_BLUFOR_CO.paa"
            }, "" },
            { "Rebelde Digital Branco", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            }, "" },
			{ "Rebelde Digital Verde", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            }, "" }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 150;
        conditions = "license_civ_pilot || {license_cop_cAir} || {license_med_mAir}";
        price = 270000;
        textures[] = {
            /*{ "Police", "cop", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
            }, "" },*/
			{ "Policia", "cop", {
				"textures\veh\cop\mh9pm.paa"
			}, "call life_coplevel >= 1" },
			{ "SAMU", "med", {
				"textures\veh\med\mh9med.paa"
			}, "call life_mediclevel < 9" },
			{ "Bombeiros", "med", {
				"textures\veh\med\mh9bm.paa"
			}, "call life_mediclevel > 8" },
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            }, "" },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            }, "" },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            }, "" },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            }, "" },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            }, "" },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            }, "" },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            }, "" },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            }, "" },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            }, "" },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            }, "" },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            }, "" },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            }, "" },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            }, "" },
			{ "Exercito", "civ", {
				"textures\veh\exerc\mh9_eb.paa"
			}, "call life_exercito >= 1" },
			{ "BOPE", "cop", {
				"textures\veh\bope\mh9bope.paa"
			}, "" }
        };
    };

    class C_Heli_Light_01_civil_F  {
        vItemSpace = 150;
        price = 270000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 700;
        conditions = "license_civ_pilot || {license_med_mAir} || {(playerSide isEqualTo west)}";
        price = 1260000;
        textures[] = {
            { "PM", "cop", {
                "\a3\air_f\Heli_Light_02\Data\Heli_Light_02_ext_OPFOR_V2_CO.paa"
            }, "" },
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            }, "" },
			/*
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            }, "" },
			*/
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            }, "" },
			{ "SAMU", "med", {
                "textures\veh\med\orcamed.paa"
            }, "" }
            /*{ "EMS White", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            }, "" }*/
        };
    };

    class B_SDV_01_F {
        vItemSpace = 250;
        conditions = "license_civ_boat || {license_cop_cg} || {(playerSide isEqualTo independent)}";
        price = 1500000;
        textures[] = {};
    };

    class C_Van_01_fuel_F {
        vItemSpace = 45;
        vFuelSpace = 67500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 70000;
        textures[] = {
            { "White", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_red_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_red_co.paa"
            }, "" }
        };
    };

    class C_Truck_02_fuel_F {
        vItemSpace = 100;
        vFuelSpace = 150000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 200000;
        textures[] = {
            { "White", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_fuel_co.paa"
            }, "" }
        };
    };

    class B_Truck_01_covered_F {
        vItemSpace = 800;
        vFuelSpace = 50000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1200000;
        textures[] = {};
    };
};
