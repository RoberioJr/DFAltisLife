#include "..\..\script_macros.hpp"
/*
    File: fn_medicSiren.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the medic siren sound for other players.
*/
private ["_vehicle"];
_vehicle = param [0,objNull,[objNull]];

if (isNull _vehicle) exitWith {};
if (isNil {_vehicle getVariable "sirenAlarm"}) exitWith {};


	if (!(_vehicle getVariable "sirenAlarm")) exitWith {};
	if (count crew _vehicle isEqualTo 0) then {_vehicle setVariable ["sirenAlarm",false,true]};
	if (!alive _vehicle) exitWith {};
	if (isNull _vehicle) exitWith {};
	_vehicle say3D ["medicSirenAlarm",500,1]; //Class name specified in description.ext, max distance & pitch
	sleep 5.0;//Exactly matches the length of the audio file.
	if (!(_vehicle getVariable "sirenAlarm")) exitWith {};
	_vehicle setVariable ["sirenAlarm",false,true];
