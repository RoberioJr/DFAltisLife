/*
*    Format:
*        3: STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*/
class CfgSpawnPoints {

    class Altis {
        class Civilian {
            class Kavala {
                displayName = "Kavala";
                spawnMarker = "civ_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "!license_civ_rebel";
            };

            class Athira {
                displayName = "Athira";
                spawnMarker = "civ_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Pyrgos {
                displayName = "Pyrgos";
                spawnMarker = "civ_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Sofia {
                displayName = "Sofia";
                spawnMarker = "civ_spawn_4";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class RebelN {
                displayName = $STR_SP_Reb_N;
                spawnMarker = "base_rebelden";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };

            class RebelS {
                displayName = $STR_SP_Reb_S;
                spawnMarker = "base_rebeldes";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };

            class RebelE {
                displayName = $STR_SP_Reb_E;
                spawnMarker = "base_rebeldel";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };
			
			/* Bases De Gangues */
			
			class Base1 {
				displayName = "Base 1";
				spawnMarker = "base1_spawn";
				icon = "icons\spawns\rebelde.paa";
				conditions = "call life_base == 1";
			};
			
			class Base2 {
				displayName = "Base 2";
				spawnMarker = "base2_spawn";
				icon = "icons\spawns\rebelde.paa";
				conditions = "call life_base == 2";
			};
			
			class Base3 {
				displayName = "Base 3";
				spawnMarker = "base3_spawn";
				icon = "icons\spawns\rebelde.paa";
				conditions = "call life_base == 3";
			};
        };

        class Cop {
            class Kavala {
                displayName = "Kavala";
                spawnMarker = "cop_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "call life_coplevel >= 1";
            };

            class Athira {
                displayName = "Athira";
                spawnMarker = "cop_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\fuelstation_ca.paa";
                conditions = "call life_coplevel >= 1";
            };

            class Pyrgos {
                displayName = "Pyrgos";
                spawnMarker = "cop_spawn_2";
                icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 1";
            };

            class HW {
                displayName = "Sofia";
                spawnMarker = "bpmdf_sof";
                icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 1";
            };
			
			class PostoCOP {
			    displayName = "Posto Avançado Rodopoli";
				spawnMarker = "postocop1";
				icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 1";
			};
			
			class Prisao {
				displayName = "Complexo Penitenciário";
				spawnMarker = "prisao_pm";
				icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 1";
			}; 
			
			class Recrutamento {
				displayName = "Area de Recrutamento";
				spawnMarker = "cop_spawn_4";
				icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 1";
			};
			
        };

        class Medic {
            class Kavala {
                displayName = "Hospital Kavala";
                spawnMarker = "medic_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

            class Athira {
                displayName = $STR_SP_EMS_Ath;
                spawnMarker = "medic_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

            class Pyrgos {
                displayName = $STR_SP_EMS_Pyr;
                spawnMarker = "medic_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
			
			class PostoAgios {
				displayName = "Posto Médico AgiosD";
			    spawnMarker = "posto_med_agios";
				icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
			};
			
			class PostoSofia {
			    displayName = "Posto Médico Sofia";
				spawnMarker = "posto_med_sofia";
				icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
				conditions = "";
			};
        };
    };

    class Tanoa {

        class Civilian {
            class Georgetown {
                displayName = "Georgetown";
                spawnMarker = "civ_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "!license_civ_rebel";
            };

            class Balavu {
                displayName = "Balavu";
                spawnMarker = "civ_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Tuvanaka {
                displayName = "Tuvanaka";
                spawnMarker = "civ_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Lijnhaven {
                displayName = "Lijnhaven";
                spawnMarker = "civ_spawn_4";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class RebelNW {
                displayName = $STR_SP_Reb_NW;
                spawnMarker = "Rebelop";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };

            class RebelS {
                displayName = $STR_SP_Reb_S;
                spawnMarker = "Rebelop_1";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };

            class RebelNE {
                displayName = $STR_SP_Reb_NE;
                spawnMarker = "Rebelop_2";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };
        };

        class Cop {
            class NAirport {
                displayName = $STR_SP_Cop_Air_N;
                spawnMarker = "cop_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class SWAirport {
                displayName = $STR_SP_Cop_Air_SW;
                spawnMarker = "cop_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\fuelstation_ca.paa";
                conditions = "";
            };

            class GeorgetownHQ {
                displayName = "Georgetown HQ";
                spawnMarker = "cop_spawn_2";
                icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "";
            };

            class Air {
                displayName = $STR_MAR_Police_Air_HQ;
                spawnMarker = "cop_spawn_4";
                icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
                conditions = "call life_coplevel >= 2 && {license_cop_cAir}";
            };

            class HW {
                displayName = $STR_MAR_Highway_Patrol;
                spawnMarker = "cop_spawn_5";
                icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 3";
            };
        };

        class Medic {

            class SEHospital {
                displayName = $STR_SP_EMS_SE;
                spawnMarker = "medic_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

            class TanoukaHospital {
                displayName = $STR_SP_EMS_Tan;
                spawnMarker = "medic_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

            class NEAirportHospital {
                displayName = $STR_SP_EMS_NEair;
                spawnMarker = "medic_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

        };

    };

};
