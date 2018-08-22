/*Iniciar pelo keyHandler e é executado só pelo player que colocou o rastreador*/
_velRastreado = CursorObject;
//if !(_velRastreado isKindOf "Car" || _velRastreado isKindOf "Motorcycle") exitWith{};
//if (_velRastreado isEqualTo nil) exitWith{};
_tipo = TypeOf _velRastreado;
SystemChat format['Alvo: %1 | Tipo Alvo: %2',_velRastreado, _tipo];
_velRastreado setVariable ["carroRastreado", 1, false];
[_velRastreado, _tipo] remoteExecCall ["RJ_fnc_Rastreado", west];