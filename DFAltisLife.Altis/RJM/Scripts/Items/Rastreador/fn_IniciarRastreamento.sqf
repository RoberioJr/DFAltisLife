/*

    Author: Marvinn
	Edits: RobérioJR

*/
    _velRastreado = CursorObject;
    _nomeJogador = name player;
	if (_velRastreado getVariable ["carroRastreado",true]) exitWith { Hint 'Esse Veiculo Já Está Sendo Rastreado'; };
    if !(_velRastreado isKindOf "Car") exitWith {};
    if (isNil _velRastreado || IsNull _velRastreado) exitWith {};
    _tipo = TypeOf _velRastreado;
    _tipoDoVeiculo = getText (configFile >> "CfgVehicles" >> _tipo >> "displayName");
    SystemChat format['Alvo: %1 | Tipo Alvo: %2',_velRastreado, _tipoDoVeiculo];
	if (playerSide IsEqualto civilian) Then {
	    [_velRastreado, _tipoDoVeiculo, _nomeJogador] Call RJM_fnc_Rastreando;
	};
	if (playerSide IsEqualto west) Then {
	    [_velRastreado, _tipoDoVeiculo, _nomeJogador] remoteExecCall ["RJM_fnc_Rastreando", west];
	};