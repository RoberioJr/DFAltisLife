#include "..\script_macros.hpp" 
/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
  
  LiberadoRoubarPosto = True;
  PublicVariable "LiberadoRoubarPosto";
  LiberadoRoubarLoterica = True;
  PublicVariable "LiberadoRoubarLoterica";
  LiberadoRoubarAgencia = True;
  PublicVariable "LiberadoRoubarAgencia";
  LiberadoRoubarReserva = True;
  PublicVariable "LiberadoRoubarReserva";
  
  life_med_calls = [];
  PublicVariable "life_med_calls";
  
  //[] Spawn RJM_fnc_Guincho;
  [] Spawn RJM_fnc_SpawnLixo;
  
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
 