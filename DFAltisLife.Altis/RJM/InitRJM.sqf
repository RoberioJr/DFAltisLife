#include "..\script_macros.hpp" 
/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/

 Private ["_barstat","_neblina"];

   /* DEFINIÇÕES */
  _barstat = LIFE_SETTINGS(getNumber,"rj_barradestatus");
  _neblina = LIFE_SETTINGS(getNumber,"rj_ativar_neblina");

  
  /* Configurações */
  [] ExecVM "RJM\CFGs.sqf";
	
  /* Barra De Status */ 
 switch (_barstat) do 
 { 
	Case 1:
	{
	    diag_log "RJ: Barra De Status - Com Icones";
        [] execVM "RJM\Scripts\BarraDeStatus\StatusBarSimples2.sqf";
	};
	Case 2:
	{
	    diag_log "RJ: Barra De Status - Sem Icones";
        [] execVM "RJM\Scripts\BarraDeStatus\StatusBarSimples.sqf";
	};
 };
 
 /* Remover Neblina */
  if (_neblina isEqualTo 0) then {
   diag_log "RJ: Neblina - Desativada";
   [] Spawn RJM_fnc_RemoverNeblina;
  };
  
 "layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];
 
 addMissionEventHandler ["Loaded",{
	[] spawn {
		sleep 2;
		"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];
	};
 }];
	
 RJ_MISSAO_DIR = str missionConfigFile select [0, count str missionConfigFile - 15];
 
 
 