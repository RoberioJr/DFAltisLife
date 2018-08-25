#include "..\script_macros.hpp" 
/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/

 Private ["_barstat"];

   /* DEFINIÇÕES */
  _barstat = LIFE_SETTINGS(getNumber,"rj_barradestatus");
	
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
	
 RJ_MISSAO_DIR = str missionConfigFile select [0, count str missionConfigFile - 15];
 