#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart
	Edit: RobérioJR

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
// Civil
    case civilian: {
	    /* EDIT RJ */
	    //if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
            //player setObjectTextureGlobal [0, "textures\roupa\civ\iloverio.jpg"];
        //};
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_1.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_2.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_3.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_4.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_5.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_6.jpg"];
            };
            if (uniform player isEqualTo "U_C_Commoner1_1") then {
                player setObjectTextureGlobal [0, "textures\roupa\civ\civilian_uniform_7.jpg"];
            };
        };
		If (FETCH_CONST(life_exercito) >= 1) Then {
		    if (uniform player in ["U_B_CTRG_1","U_B_CTRG_3"]) then {
			    player setObjectTextureGlobal [0, "textures\roupa\exerc\Unif_Padrao.jpg"];
			};
			if ((backpack player) IsEqualTo "B_Kitbag_rgr") then {
			    (backpackContainer player) setObjectTextureGlobal [0, "textures\roupa\exerc\Mochila.paa"];
			};
		};
    };
// Policia Militar || BOPE
	case west: {
		//PM
		if ((FETCH_CONST(life_coplevel) IsEqualTo 1) && ((uniform player) == "U_Rangemaster")) then {
		    player setObjectTextureGlobal [0, "textures\roupa\pm\uniforme_pm_simples.jpg"];
		};
		
		if ((FETCH_CONST(life_coplevel) >= 2) && ((uniform player) == "U_B_CTRG_1" or ((uniform player) == "U_B_CTRG_3"))) then {
		    player setObjectTextureGlobal [0, "textures\roupa\pm\uniforme_pm_tipo1.jpg"];
		};
		
		if ((FETCH_CONST(life_coplevel) >= 2) && ((uniform player) == "U_I_CombatUniform")) then {
		    player setObjectTextureGlobal [0, "textures\roupa\pm\uniforme_pm_padrao.jpg"];
		};
		//PC
		if ((FETCH_CONST(life_coplevel) >= 14) && ((uniform player) == "U_Rangemaster")) then {
		    player setObjectTextureGlobal [0, "textures\roupa\pc\Uniforme_PC.jpg"];
		};
		//BOPE
		if ((FETCH_CONST(life_coplevel) >= 1) && ((uniform player) == "U_I_CombatUniform_shortsleeve")) then {
		    player setObjectTextureGlobal [0, "textures\roupa\bope\Uniforme_BOPE.jpg"];
		};
    };
// Medicos || SAMU
    case independent: {
	    If (FETCH_CONST(life_mediclevel) < 9) ExitWith {
			if (uniform player isEqualTo "U_Rangemaster") then {
				player setObjectTextureGlobal [0, "textures\roupa\med\uniforme_med.jpg"];
			};
			if (uniform player in ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"]) then {
				player setObjectTextureGlobal [0, "textures\roupa\med\Samu_Medico.jpg"];
			};
			if (uniform player IsEqualTo "U_I_CombatUniform_tshirt") then {
				player setObjectTextureGlobal [0, "textures\roupa\med\Samu_Condutor.jpg"];
			};
		};
		//Bombeiros
		if (uniform player IsEqualTo "U_Marshal" && (FETCH_CONST(life_mediclevel) in [9,10,11])) ExitWith {
            player setObjectTextureGlobal [0, "textures\roupa\med\bomb_rec.jpg"];
        };
		if (uniform player in ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"] && (FETCH_CONST(life_mediclevel) in [12,13,14])) ExitWith {
            player setObjectTextureGlobal [0, "textures\roupa\med\bomb_laran.jpg"];
        };
		if (uniform player in ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"] && (FETCH_CONST(life_mediclevel) in [15,16])) ExitWith {
            player setObjectTextureGlobal [0, "textures\roupa\med\bomb_verm.jpg"];
        };
    };
};
