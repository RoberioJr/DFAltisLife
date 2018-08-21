/*Essa função é iniciada em todos os cops*/
    //_velRastreado = Param [0,0,[0]];
	//_tipoVeiculo = Param [1,0,[0]];
	_velRastreado = _this Select 0;
	_tipoVeiculo = _this Select 1;
    _carroRastreado = true;
    _limit = 600;
    _marcadorRastreado = createMarkerLocal [Format["RST_%1",_tipoVeiculo], visiblePosition _velRastreado];
	_marcadorRastreado setMarkerTextLocal format["RASTREADOR: %1", _tipoVeiculo];
    _marcadorRastreado setMarkerBrushLocal "SolidFull";
	_marcadorRastreado setMarkerColorLocal "ColorRed";
    _marcadorRastreado setMarkerTypeLocal "c_car";
    _marcadorRastreado setMarkerShapeLocal "ICON";
    hint Format ["<br/><t color='#f00000ff size='1.5'>Um novo veículo foi rastreado!</t>"];
 
    while(_carroRastreado) do {
	_marcadorRastreado setMarkerPosLocal (visiblePosition _velRastreado);
    sleep 1;
    _limit = _limit - 1;
    if (_limit < 1) then { _carroRastreado = false; deleteMarkerLocal _marcadorRastreado; };
   };