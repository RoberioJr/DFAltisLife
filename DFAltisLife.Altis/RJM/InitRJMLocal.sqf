#include "..\script_macros.hpp" 
/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/

  Private ["_grafico","_gaslacr","_msgnsrj"];

   /* DEFINIÇÕES */
  _grafico = LIFE_SETTINGS(getNumber,"rj_ativar_grafico");
  _gaslacr = LIFE_SETTINGS(getNumber,"rj_ativar_gaslacrimo");
  _msgnsrj = LIFE_SETTINGS(getNumber,"rj_msgsconometradas");

  /* Configurações */
  [] ExecVM "RJM\CFGs.sqf";
  
  /* Correção De Cor */
  if (_grafico isEqualTo 1) then {
   diag_log "RJ: Melhoria De Grafico - Ativado";
   [] Spawn RJM_fnc_Cor;
  };
   
  /* EVH CintoDeSegurança */
   [] Spawn RJM_fnc_EventHandlerCinto;
   
  /* LoopSide */
   [] Spawn RJM_fnc_LoopSide;
   
  /* MSG Cronometradas */
  if (_msgnsrj isEqualTo 1) then { 
   diag_log "RJ: Mensagens Cronometradas - Ativado";
   [] Spawn RJM_fnc_Msg;
  };
  
  /* Gás Lacrimogenio */
  if (_gaslacr isEqualTo 1) then {
  diag_log "RJ: Gás Lacrimogênio - Ativado";
   [] Spawn RJM_fnc_Gaslacrimo;
  };
   
  /* Marcadores */
   //[] Spawn RJM_fnc_Marcador;
   
  /* Icones Dos Farms No Mapa */
   [] Spawn RJM_fnc_IconesMap;
   
  /* Ferramentas ADM */
   [] execVM "RJM\Scripts\MenuAdminRJ\loop.sqf";
   
   /* RádioRJM */
   [] execVM "RJM\Scripts\Radio\init.sqf";
   
  /* SafeZones */
   [] ExecVM "RJM\Scripts\SafeZones\IniciarSafeZones.sqf";
   
   RJ_JogadorPronto = true;
   
  systemchat "Scripts RJM Inicializadas *o*...";
  