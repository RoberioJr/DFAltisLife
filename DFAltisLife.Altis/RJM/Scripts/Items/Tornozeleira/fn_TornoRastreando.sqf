/*

    Author: RobérioJR

*/

 _Jogador = _this Select 0;

_limit = 1000;
_ID = round(Random 999);
   
_marcadorRastreado = createMarkerLocal [Format["TRN_%1", _ID], visiblePosition _Jogador];
_marcadorRastreado setMarkerTextLocal Format["Tornozeleira | NM: %1 - ID: %2",(name _Jogador), _ID];
_marcadorRastreado setMarkerBrushLocal "SolidFull";
_marcadorRastreado setMarkerColorLocal "ColorBlue";
_marcadorRastreado setMarkerTypeLocal "mil_box";
_marcadorRastreado setMarkerShapeLocal "ICON";

hintSilent parseText format ["<t size='3.4' color='#0c00fe' shadow='0'>Nova Tornozeleira</t> <br /> <t size='1.2'>Um novo jogador foi rastreado por uma tornozeleira, Identificação: %1</t>",(name _Jogador)];
	
While {True} do {
	_marcadorRastreado setMarkerPosLocal (visiblePosition _Jogador);
    sleep 2;
    _limit = _limit - 2;
    if (_limit < 1) ExitWith { deleteMarkerLocal _marcadorRastreado; };
};