/*Essa função é iniciada em todos os cops*/
    _velRastreado = Param [0,0,[0]];
    carroRastreado = true;
    _limit = 600;
    _localDoVeiculo = getPos velRastreado;
    _marcadorRastreado = createMarkerLocal ["RASTREADOR", _velRastreado];
    _marcadorRastreado setMarkerBrushLocal "SolidFull";
    _marcadorRastreado setMarkerTypeLocal "c_car";
    _marcadorRastreado setMarkerShapeLocal "ICON";
    hint Format ["<br/><t color='#f00000ff size='1.5'>Um novo veículo foi rastreado!</t>"];
 
    while(carroRastreado) do {
    _marcadorRastreado setMarkerPosLocal _velRastreado;
    sleep 1;
    _limit = _limit - 1;
    if (_limit < 1) then { carroRastreado = false; deleteMarker _marcadorRastreado; };
   };