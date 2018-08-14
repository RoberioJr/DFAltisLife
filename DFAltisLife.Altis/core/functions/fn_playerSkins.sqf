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
    };
// Policia Militar || BOPE
	case west: {
	    /*
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\roupa\pm\uniforme_pm.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
                //if (FETCH_CONST(life_coplevel) >= 1) then {
				if (FETCH_CONST(life_coplevel) < 11) then {
                    _skinName = ["textures\roupa\pm\uniforme_pm_",(FETCH_CONST(life_coplevel)),".jpg"] joinString "";
                };
            };
            player setObjectTextureGlobal [0, _skinName];
        };*/
		//PM
		if ((FETCH_CONST(life_coplevel) IsEqualTo 1) && ((uniform player) == "U_Rangemaster")) then {
		    player setObjectTextureGlobal [0, "textures\roupa\bope\uniforme_pm_simples.jpg"];
		};
		
		if ((FETCH_CONST(life_coplevel) >= 2) && ((uniform player) == "U_I_CombatUniform_shortsleeve" or ((uniform player) == "U_I_CombatUniform"))) then {
		    player setObjectTextureGlobal [0, "textures\roupa\pm\uniforme_pm_padrao.jpg"];
		};
    };
	
	/*
    case west: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\roupa\pm\uniforme_pm.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
                if (FETCH_CONST(life_coplevel) >= 1) then {
                    _skinName = ["textures\roupa\pm\uniforme_pm_",(FETCH_CONST(life_coplevel)),".jpg"] joinString "";
                };
            };
            player setObjectTextureGlobal [0, _skinName];
        };
		// BOPE EDIT RJ
		if (uniform player isEqualTo "U_I_CombatUniform_shortsleeve") then {
		    _nomeSkin = "textures\roupa\bope\uniforme_bope_padrao.jpg";
		};
		player setObjectTextureGlobal [0, _nomeSkin];
    };
	*/
// Medicos || SAMU
    case independent: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal [0, "textures\roupa\med\uniforme_med.jpg"];
        };
    };
};
