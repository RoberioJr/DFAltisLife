#include "..\..\script_macros.hpp"
/*
    File: fn_sirenLights.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Lets play a game! Can you guess what it does? I have faith in you, if you can't
    then you have failed me and therefor I lose all faith in humanity.. No pressure.
*/
params [
    ["_vehicle",objNull,[objNull]]
];
if (isNull _vehicle) exitWith {}; //Bad entry!
if !(typeOf _vehicle in ["B_GEN_Van_02_transport_F","B_GEN_Van_02_vehicle_F","B_Truck_01_box_F","B_Truck_01_fuel_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_MRAP_01_F","B_Quadbike_01_F","O_MRAP_02_F","O_LSV_02_unarmed_F","O_Truck_03_device_F","O_Truck_03_fuel_F","O_Truck_03_transport_F","O_Truck_02_transport_F","O_Truck_02_covered_F","I_MRAP_03_F","C_Van_01_fuel_F","C_Hatchback_01_F","C_Offroad_02_unarmed_F","C_Van_01_box_F","C_Van_01_transport_F","C_Truck_02_fuel_F","C_Van_02_medevac_F","C_Offroad_01_F","C_SUV_01_F","C_Hatchback_01_sport_F"]) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

private _trueorfalse = _vehicle getVariable ["lightsRight",false];

if (_trueorfalse) then {
    _vehicle setVariable ["lightsRight",false,true];
    if !(isNil {(_vehicle getVariable "lightsRightJIP")}) then {
        private _jipRight = _vehicle getVariable "lightsRightJIP";
        _vehicle setVariable ["lightsRightJIP",nil,true];
        remoteExec ["",_jipRight]; //remove from JIP queue
    };
} else {
    _vehicle setVariable ["lightsRight",true,true];
    private _jipRight = [_vehicle,0.22] remoteExec ["life_fnc_signRight",RCLIENT,true];
    _vehicle setVariable ["lightsRightJIP",_jipRight,true];
};
