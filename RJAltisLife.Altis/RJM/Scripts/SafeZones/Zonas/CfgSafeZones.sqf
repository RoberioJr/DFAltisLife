/*

    Author: RobérioJR

*/

if (isDedicated) exitWith {};
waitUntil {!isNull player};
waitUntil {time > 0};
waitUntil {!IsNil "RJ_SafeZones"};

{

    _Marcador = _x select 0;
	_RaioSafe = _X select 1;
    [_Marcador,_RaioSafe] Spawn RJM_fnc_SafeZones;
	Sleep 0.1;
	
} ForEach RJ_SafeZones;