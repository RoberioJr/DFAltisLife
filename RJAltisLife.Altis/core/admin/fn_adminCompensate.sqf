#include "..\..\script_macros.hpp"
/*
    File: fn_adminCompensate.sqf
    Author: ColinM9991

    Description:
    Figure it out.
*/
private ["_value","_action"];
if (FETCH_CONST(life_adminlevel) < 2) exitWith {closeDialog 0; Hint 'Você Não Possui Poder Para Essa Ação'; /*hint localize "STR_ANOTF_ErrorLevel";*/};
_value = parseNumber(ctrlText 9922);
if (_value < 0) exitWith {};
if (_value > 999999) exitWith {hint localize "STR_ANOTF_Fail"};

_action = [
    format [localize "STR_ANOTF_CompWarn",[_value] call life_fnc_numberText],
    localize "STR_Admin_Compensate",
    localize "STR_Global_Yes",
    localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if (_action) then {
    CASH = CASH + _value;
    hint format [localize "STR_ANOTF_Success",[_value] call life_fnc_numberText];
	//[3,Format["%1 Pegou R$%2 Do Painel Administrativo!",Name player,_value]] RemoteExec ["RJM_fnc_Notificar",0];
    closeDialog 0;
} else {
    hint localize "STR_NOTF_ActionCancel";
    closeDialog 0;
};
