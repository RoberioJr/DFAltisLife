/*

    Author: RobérioJR

*/

diag_log "RJ: Iniciando Areas Radiotivas...";

{

    _Marcador = _x select 0;
	_RaioSafe = _x select 1;
    [_Marcador,_RaioSafe] Spawn RJM_fnc_UranioInit;
	diag_log Format [":: Area Radiotiva Gerada | Pos: %1 - Raio: %2 ::",(GetMarkerPos _Marcador),_RaioSafe];
	
} ForEach (getArray(missionConfigFile >> "RJ_CfgTrabalhos" >> "RJ_AreasDoUranio"));

diag_log "RJ: Todas As Areas Radiotivas Foram Geradas :)";
