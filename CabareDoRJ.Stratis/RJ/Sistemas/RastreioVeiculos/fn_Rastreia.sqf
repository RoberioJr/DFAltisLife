/*Iniciar pelo keyHandler e é executado só pelo player que colocou o rastreador*/
[] spawn {
_velRastreado = CursorObject;
_nomeJogador = name player;
if !(_velRastreado isKindOf "Car" || _velRastreado isKindOf "Motorcycle") exitWith{};
if (_velRastreado isEqualTo nil) exitWith{};
_tipo = TypeOf _velRastreado;
_tipoDoVeiculo = getText (configFile >> "CfgVehicles" >> _tipo >> "displayName");
SystemChat format['Alvo: %1 | Tipo Alvo: %2',_velRastreado, _tipoDoVeiculo];
_velRastreado setVariable ["carroRastreado", 1, false];
[_velRastreado, _tipoDoVeiculo, _nomeJogador] remoteExecCall ["RJ_fnc_Rastreado", west];
};