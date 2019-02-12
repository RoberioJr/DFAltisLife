#include "..\..\script_macros.hpp"
/*
    File: fn_removeItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Removes the selected item & amount to remove from the players
    virtual inventory.
*/
private ["_data","_value","_obj"];
disableSerialization;

private _mode = param [0,0,[0]];

switch (_mode) do {
    case 0: {
        _data = lbData[2005,(lbCurSel 2005)];
        _value = ctrlText 2010;
    };
    case 1: {
        _data = lbData[10009,(lbCurSel 10009)];
        _value = ctrlText 10010;
    };
};

if (_data isEqualTo "") exitWith {hint localize "STR_NOTF_didNotSelectToRemove";};
if (!([_value] call TON_fnc_isnumber)) exitWith {hint localize "STR_NOTF_notNumberFormat";};
if (parseNumber(_value) <= 0) exitWith {hint localize "STR_NOTF_enterAmountRemove";};
if (ITEM_ILLEGAL(_data) isEqualTo 1 && ([west,visiblePosition player,100] call life_fnc_nearUnits)) exitWith {titleText[localize "STR_NOTF_illegalItemCannotDispose","PLAIN"]};
if !(isNull objectParent player) exitWith {titleText[localize "STR_NOTF_cannotRemoveInVeh","PLAIN"]};
if (!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint localize "STR_NOTF_couldNotRemoveThatMuch";};

hint format [localize "STR_NOTF_removedFromInventory",(parseNumber _value),(localize ITEM_NAME(_data))];

[_mode] call life_fnc_p_updateMenu;