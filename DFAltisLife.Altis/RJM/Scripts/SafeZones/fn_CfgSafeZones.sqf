/*

    Author: RobérioJR

*/

waitUntil {!IsNil "RJ_SafeZones"};

diag_log "RJ: Iniciando SafeZones...";

{

    _Marcador = _x select 0;
	_RaioSafe = _x select 1;
    [_Marcador,_RaioSafe] Spawn RJM_fnc_SafeZones;
	diag_log Format [":: SafeZone Gerada | Pos: %1 - Raio: %2 ::",(GetMarkerPos _Marcador),_RaioSafe];
	
} ForEach RJ_SafeZones;

diag_log "RJ: Todas As SafeZones Foram Geradas :)";
