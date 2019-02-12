#include "..\..\script_macros.hpp"
/*
    File: fn_inventoryOpened.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    For the mean time it blocks the player from opening another persons backpack
*/
private ["_container","_unit","_list"];
if (count _this isEqualTo 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

_isPack = FETCH_CONFIG2(getNumber,"CfgVehicles",typeOf _container,"isBackpack");
if (_isPack isEqualTo 1) exitWith {
    hint localize "STR_MISC_Backpack";
    true;
};

if ((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
    _house = nearestObject [player, "House"];
    if (!(_house in life_vehicles) && (_house getVariable ["locked",true])) exitWith {
        hint localize "STR_House_ContainerDeny";
        true;
    };
};

_list = ["LandVehicle","Ship","Air"];
if (KINDOF_ARRAY(_container,_list)) exitWith {
    if (!(_container in life_vehicles) && {locked _container isEqualTo 2}) exitWith {
        hint localize "STR_MISC_VehInventory";
        true;
    };
};

//Allow alive players who've been knocked out to be looted, just not the dead ones
if (_container isKindOf "Man" && !alive _container) exitWith {
    hint localize "STR_NOTF_NoLootingPerson";
    true;
};

h = [] spawn {	
    disableSerialization;
    waitUntil { !isNull ( findDisplay 602 ) };    
    private _display = findDisplay 602;
    private _background = _display ctrlCreate ["life_RscText",10001];
    _background ctrlSetPosition [
        0.11833 * safezoneW + safezoneX,
        0.279937 * safezoneH + safezoneY,
        0.1341 * safezoneW,
        0.473135 * safezoneH
    ];
    _background ctrlSetBackgroundColor [0,0,0,0.5];
    _background ctrlCommit 0;

    private _topTrim = _display ctrlCreate ["life_RscText",10002];
    _topTrim ctrlSetPosition [
        0.11833 * safezoneW + safezoneX,
        0.246928 * safezoneH + safezoneY,
        0.1341 * safezoneW,
        0.0220063 * safezoneH
    ];
    _topTrim ctrlSetBackgroundColor [(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843]), (profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019]), (profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862]), (profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])];
    _topTrim ctrlCommit 0;

    /*
    private _defultTopTrim = _display ctrlCreate ["life_RscText",99999];
    _defultTopTrim ctrlSetPosition [
        0.433156 * safezoneW + safezoneX,
        0.246928 * safezoneH + safezoneY,
        0.302035 * safezoneW,
        0.0220063 * safezoneH
    ];
    _defultTopTrim ctrlSetBackgroundColor [(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843]), (profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019]), (profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862]), (profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])];
    _defultTopTrim ctrlCommit 0;
    */

    private _headerText = _display ctrlCreate ["life_RscText",10003];
    _headerText ctrlSetPosition [
        0.11833 * safezoneW + safezoneX,
        0.246928 * safezoneH + safezoneY,
        0.0670502 * safezoneW,
        0.0220063 * safezoneH
    ];
    _headerText ctrlSetBackgroundColor [-1,-1,-1,-1];
    _headerText ctrlSetText "Inventario Virtual";
    _headerText ctrlCommit 0;

    private _weightText = _display ctrlCreate ["life_RscText",10004];
    _weightText ctrlSetPosition [
        0.200853 * safezoneW + safezoneX,
        0.246928 * safezoneH + safezoneY,
        0.0515771 * safezoneW,
        0.0220063 * safezoneH
    ];
    _weightText ctrlSetBackgroundColor [-1,-1,-1,-1];
    _weightText ctrlSetText format ["Peso: %1/%2", life_carryWeight, life_maxWeight];
    _weightText ctrlCommit 0; 

    //Player List
    private _playerList = _display ctrlCreate ["Life_RscCombo",10008];
    _playerList ctrlSetPosition [
        0.128645 * safezoneW + safezoneX,
        0.67605 * safezoneH + safezoneY,
        0.11347 * safezoneW,
        0.0220063 * safezoneH
    ];
    lbClear _playerList;
    private _near_units = [];
    { if (player distance _x < 10) then {_near_units pushBack _x};} forEach playableUnits;
    {
        if (!isNull _x && alive _x && player distance _x < 10 && !(_x isEqualTo player)) then {
            _playerList lbAdd format ["%1 - %2",_x getVariable ["realname",name _x], side _x];
            _playerList lbSetData [(lbSize _playerList)-1,str(_x)];
        };
        if ((lbSize _playerList) isEqualTo -1) then {
            _playerList lbAdd "Sem Jogadores";
        };       
    } forEach _near_units;
    _playerList ctrlCommit 0;

    //vItems
    private _vItems = _display ctrlCreate ["Life_ToxicRscListBox",10009];
    _vItems ctrlSetPosition [
        0.128645 * safezoneW + safezoneX,
        0.301944 * safezoneH + safezoneY,
        0.11347 * safezoneW,
        0.264075 * safezoneH
    ];
    lbClear _vItems;
    {
    if (ITEM_VALUE(configName _x) > 0) then {
        _vItems lbAdd format ["%2 [x%1]",ITEM_VALUE(configName _x),localize (getText(_x >> "displayName"))];
        _vItems lbSetData [(lbSize _vItems)-1,configName _x];
        _icon = M_CONFIG(getText,"VirtualItems",configName _x,"icon");
        if (!(_icon isEqualTo "")) then {
            _vItems lbSetPicture [(lbSize _vItems)-1,_icon];
        };
        if ((lbSize _vItems) isEqualTo -1) then {
            _vItems lbAdd "Sem Items";
        };
    };
    } forEach ("true" configClasses (missionConfigFile >> "VirtualItems"));
    _vItems ctrlCommit 0;


    //Edit
    private _edit = _display ctrlCreate ["Life_ToxicRscEdit",10010];
    _edit ctrlSetPosition [
        0.144118 * safezoneW + safezoneX,
        0.643041 * safezoneH + safezoneY,
        0.0825233 * safezoneW,
        0.0220063 * safezoneH
    ];
    _edit ctrlSetText "1";
    _edit ctrlCommit 0;


    //BUTTONS
    private _useButton = _display ctrlCreate ["life_RscButtonMenu",10005];
    _useButton ctrlSetPosition [
        0.144118 * safezoneW + safezoneX,
        0.577022 * safezoneH + safezoneY,
        0.0825233 * safezoneW,
        0.0220063 * safezoneH
    ];
    _useButton ctrlSetStructuredText parseText "<t align='center'>Usar</t>";
    _useButton buttonSetAction "[1] call life_fnc_useItem";
    _useButton ctrlCommit 0;

    private _removeButton = _display ctrlCreate ["life_RscButtonMenu",10006];
    _removeButton ctrlSetPosition [
        0.144118 * safezoneW + safezoneX,
        0.610031 * safezoneH + safezoneY,
        0.0825233 * safezoneW,
        0.0220063 * safezoneH
    ];
    _removeButton ctrlSetStructuredText parseText "<t align='center'>Remover</t>";
    _removeButton buttonSetAction "[1] call life_fnc_removeItem;";
    _removeButton ctrlCommit 0;

    private _giveButton = _display ctrlCreate ["life_RscButtonMenu",10007];
    _giveButton ctrlSetPosition [
        0.144118 * safezoneW + safezoneX,
        0.70906 * safezoneH + safezoneY,
        0.0825233 * safezoneW,
        0.0220063 * safezoneH
    ];
    _giveButton ctrlSetStructuredText parseText "<t align='center'>Dar</t>";
    _giveButton buttonSetAction "[1] call life_fnc_giveItem;";
    _giveButton ctrlCommit 0;    
};