#include "..\..\script_macros.hpp"
/*
    File: fn_adminGodMode.sqf
    Author: Tobias 'Xetoxyc' Sittenauer

    Description: Enables God mode for Admin
*/

if (FETCH_CONST(life_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

closeDialog 0;

if (life_god) then {
    life_god = false;
    titleText [localize "STR_ANOTF_godModeOff","PLAIN"]; titleFadeOut 2;
	[3,Format["%1 Desativou O Modo Deus!",Name player]] RemoteExec ["RJM_fnc_Notificar",0];
    player allowDamage true;
} else {
    life_god = true;
    titleText [localize "STR_ANOTF_godModeOn","PLAIN"]; titleFadeOut 2;
	[3,Format["%1 Ativou O Modo Deus!",Name player]] RemoteExec ["RJM_fnc_Notificar",0];
    player allowDamage false;
};