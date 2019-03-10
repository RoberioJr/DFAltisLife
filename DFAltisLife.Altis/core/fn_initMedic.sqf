#include "..\script_macros.hpp"
/*
    File: fn_initMedic.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initializes the medic..
*/
waitUntil {!(isNull (findDisplay 46))};

if ((FETCH_CONST(life_medicLevel)) < 1 && (FETCH_CONST(life_adminlevel) isEqualTo 0)) exitWith {
    ["Notwhitelisted",false,true] call BIS_fnc_endMission;
    sleep 35;
};

/* Termos E Condições */
 [] spawn RJM_fnc_AbrirTermosECond;
 waitUntil {RJ_ConcordouTermos && isNull (findDisplay 66669)};
 
//Sistema De Setagem de Patentes
player setVariable ["RJ_Patente",RJ_Patente,true];
 
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

 /* Pagamentos Customizados */
[] call life_fnc_initPayChecks;
