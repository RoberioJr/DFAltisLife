#include "..\..\script_macros.hpp"
/*
    File: fn_useItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Main function for item effects and functionality through the player menu.
*/
private ["_mode","_item"];
disableSerialization;

_mode = param [0,0,[0]];

//if ((lbCurSel 2005) isEqualTo -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
//_item = CONTROL_DATA(2005);

If (_mode IsEqualTo 0) Then {
    if ((lbCurSel 2005) isEqualTo -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
    _item = CONTROL_DATA(2005);
} Else {
    if ((lbCurSel 10009) isEqualTo -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
    _item = lbData [10009,(lbCurSel 10009)];
};

switch (true) do {
	
	case (_item == "kitmedico"): {
	    [] Spawn RJM_fnc_UsarKitMedico;
	};
	
	case (_item == "analgesico"): {
	    [] Spawn RJM_fnc_UsarAnalgesico;
	};
	
	case (_item == "bomba"): {
	    if (RJ_JogadorNaSafe) ExitWith { TitleText["Você Não Pode Fazer Isso Em Areas Seguras!","PLAIN"]; };
		[] Spawn RJM_fnc_ConfigurarBomba;
	};
	
	case (_item == "rastreador"): {
	    [] Spawn RJM_fnc_IniciarRastreamento;
	};

    case (_item == "tornozeleira"): {
	    [] Spawn RJM_fnc_IniciarTorno;
	};
	
    /* Efeitos Das Drogas By: RobérioJR */
    case (_item in ["marijuana","cocaineProcessed","tabacoProcessed","lsdProcessed","metanfetaminaProcessed","loloProcessed","crackProcessed","heroinProcessed"]): {
	    if !(RJ_DelayTerminado) exitWith { hint 'Espere Um Pouco Antes De Fazer Essa Ação!'; };
		if ([false,_item,1] call life_fnc_handleInv) then {
		    [_item] spawn RJM_fnc_EfeitosItems;
		};
	};

    case (_item in ["waterBottle","coffee","redgull","cocacola"]): {
        if ([false,_item,1] call life_fnc_handleInv) then {
            life_thirst = 100;
			/* SOM 3D EDIT RJ */
			[player,"beber",30,1] remoteExec ["life_fnc_say3D",0];
            if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 0;};
            if (_item isEqualTo "redgull" && {LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1}) then {
                [] spawn {
                    life_redgull_effect = time;
                    titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
                    player enableFatigue false;
                    waitUntil {!alive player || ((time - life_redgull_effect) > (3 * 60))};
                    player enableFatigue true;
                };
            };
        };
    };

    case (_item isEqualTo "boltcutter"): {
        [cursorObject] spawn life_fnc_boltcutter;
        closeDialog 0;
    };

    case (_item isEqualTo "blastingcharge"): {
        player reveal fed_bank;
        (group player) reveal fed_bank;
        [cursorObject] spawn life_fnc_blastingCharge;
        closeDialog 0;
    };

    case (_item isEqualTo "defusekit"): {
        [cursorObject] spawn life_fnc_defuseKit;
        closeDialog 0;
    };

    case (_item isEqualTo "storagesmall"): {
        [false] call life_fnc_storageBox;
    };

    case (_item isEqualTo "storagebig"): {
        [true] call life_fnc_storageBox;
    };

    case (_item isEqualTo "spikeStrip"): {
        if (!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"; closeDialog 0};
        if ([false,_item,1] call life_fnc_handleInv) then {
            [] spawn life_fnc_spikeStrip;
            closeDialog 0;
        };
    };

    case (_item isEqualTo "fuelFull"): {
        if !(isNull objectParent player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
        [] spawn life_fnc_jerryRefuel;
        closeDialog 0;
    };

    case (_item isEqualTo "fuelEmpty"): {
        [] spawn life_fnc_jerryCanRefuel;
        closeDialog 0;
    };

    case (_item isEqualTo "lockpick"): {
	    if (RJ_JogadorNaSafe) ExitWith { TitleText["Você Não Pode Fazer Isso Em Areas Seguras!","PLAIN"]; };
        [] spawn life_fnc_lockpick;
        closeDialog 0;
    };

    case (_item in ["apple","pineapple","pizza","chocolate","ruffles","banana","strawberry","grape","guava","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle_soup","hen","rooster","sheep","goat","donuts","tbacon","peach"]): {
        if (!(M_CONFIG(getNumber,"VirtualItems",_item,"edible") isEqualTo -1)) then {
            if ([false,_item,1] call life_fnc_handleInv) then {
                _val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
                _sum = life_hunger + _val;
				/* SOM 3D EDIT RJ */
				[player,"comer",30,1] remoteExec ["life_fnc_say3D",0];
                switch (true) do {
                    case (_val < 0 && _sum < 1): {life_hunger = 5;}; //This adds the ability to set the entry edible to a negative value and decrease the hunger without death
                    case (_sum > 100): {life_hunger = 100;};
                    default {life_hunger = _sum;};
                };
            };
        };
    };

    default {
        hint localize "STR_ISTR_NotUsable";
    };
};

[_mode] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;