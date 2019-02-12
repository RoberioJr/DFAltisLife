/*

    Author: RobérioJR

*/

waitUntil {time > 0};
waitUntil {!isNull player};
waitUntil {!IsNil "RJ_SafeZones"};

diag_log "RJ: Iniciando SafeZones...";

{

    _Marcador = _x select 0;
	_RaioSafe = _x select 1;
    [_Marcador,_RaioSafe] Spawn RJM_fnc_SafeZones;
	diag_log Format [":: SafeZone Gerada | Pos: %1 - Raio: %2 ::",(GetMarkerPos _Marcador),_RaioSafe];
	
} ForEach RJ_SafeZones;

diag_log "RJ: Todas As SafeZones Foram Geradas :)";

/*
[] Spawn {
    While {True} Do {
	    _Cond = True;
	    {
		    If (_Cond) Then {
	            If ((GetMarkerPos (_x Select 0)) distance player < (_x Select 1)) Then {
		            RJ_JogadorNaSafe = True;
					_Cond = False;
		        } Else { RJ_JogadorNaSafe = False; };
		    };
			Sleep 0.2;
		} ForEach RJ_SafeZones;
		Sleep 4;
	};
};
*/