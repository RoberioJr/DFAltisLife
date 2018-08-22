/*Essa função é iniciada em todos os cops*/
    params [
        ["_velRastreado","objNull",["objNull"]],
        ["_tipoVeiculo",objNull,[objNull]]
    ];
	[_velRastreado,_tipoVeiculo] Spawn {
	_velRastreado = _this Select 0;
	_tipoVeiculo = _this Select 1;
	SystemChat 'RemoteExec - 1';
    _carroRastreado = true;
    _limit = 600;
    _marcadorRastreado = createMarkerLocal [Format["RST_%1",_tipoVeiculo], visiblePosition _velRastreado];
	_marcadorRastreado setMarkerTextLocal format["RASTREADOR: %1", _tipoVeiculo];
    _marcadorRastreado setMarkerBrushLocal "SolidFull";
	_marcadorRastreado setMarkerColorLocal "ColorRed";
    _marcadorRastreado setMarkerTypeLocal "c_car";
    _marcadorRastreado setMarkerShapeLocal "ICON";
	SystemChat 'RemoteExec - 2';
    hint "Um novo veículo foi rastreado!";
 
    while(_carroRastreado) do {
	_marcadorRastreado setMarkerPosLocal (visiblePosition _velRastreado);
    sleep 1;
    _limit = _limit - 1;
	SystemChat Format['RemoteExec - Funcionando: %1',_limit];
    if (_limit < 1) then { _carroRastreado = false; deleteMarkerLocal _marcadorRastreado; };
   };
  }