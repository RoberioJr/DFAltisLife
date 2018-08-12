#include "..\script_macros.hpp" 
/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
   
 Private ["_neblina"];
   
   /* DEFINIÇÕES */
   _neblina = LIFE_SETTINGS(getNumber,"rj_ativar_neblina");

  /* Remover Neblina */
  if (_neblina isEqualTo 0) then {
   diag_log "RJ: Neblina - Desativada";
   [] Spawn RJM_fnc_RemoverNeblina;
  };
  
  /* LOG COM INFORMAÇÕES SOBRE INICIALIZAÇÃO DO SERVIDOR */
 sleep 1;
 Diag_Log "RJ: Scripts E Modulos RJ Foram Inicializados.";
 _tempoInicial = diag_tickTime;
 sleep 2;
 diag_log "----------------------------------------------------------------------------------------------------";
 diag_log "------------------------------------- Servidor Inicializado ----------------------------------------";
 diag_log "----------------------------------------------------------------------------------------------------";
 diag_log "--------------------------------  Distrito Altislife || Altis Life  --------------------------------";
 diag_log "-------------------------------------- Scripts By: RoberioJR ---------------------------------------";
 diag_log "----------------------------------------------------------------------------------------------------";
 diag_log format["-------------------------------------- Tempo Gasto: %1 Segs -------------------------------------",(diag_tickTime) - _tempoInicial];
 diag_log "----------------------------------------------------------------------------------------------------";
 