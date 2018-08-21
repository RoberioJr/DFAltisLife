/*Iniciar pelo keyHandler e é executado só pelo player que colocou o rastreador*/
_velRastreado = CursorObject;
if !(_velRastreado isKindOf "Car" || _velRastreado isKindOf "Motorcycle") exitWith{};
if (_velRastreado isEqualTo nil) exitWith{};
CursorObject setVariable ["carroRastreado", 1, false];
[_velRastreado] remoteExecCall ["RJ_fnc_Rastreado", west];