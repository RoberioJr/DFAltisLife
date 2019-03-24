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
   
  //RJ_CanalCustom = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Notas", "%UNIT_NAME", [player]];
  
  /* Marcadores */
   //[] Spawn RJM_fnc_Marcador;
   
  /* Noites Claras */
   [] Spawn RJM_fnc_NoitesClaras;
   
  /* Icones Dos Farms No Mapa */
   [] Spawn RJM_fnc_IconesMap;
   
  /* Sistema De Tags Ao Falar */
   [] Spawn RJM_fnc_Falando;
   
  /* SafeZones */
   [] Spawn RJM_fnc_CfgSafeZones;
   
  /* Marcar Bases De Gangues */
    [] Spawn {
	    WaitUntil {!IsNil "life_base"};
	    If (((call life_base) IsEqualto 0) || (PlayerSide In [West,Independent])) ExitWith {};
	    _Mkr = createMarkerLocal [Format["BaseGangue_%1",(call life_base)],(GetMarkerPos (Format["base%1_spawn",(call life_base)]))];
		_Mkr setMarkerColorLocal "ColorBlue";
		_Mkr setMarkerTypeLocal "mil_dot";
		_Mkr setMarkerTextLocal format["Base De Gangue %1",(call life_base)];
	};

  /* Setup Do Sistema De Setagem De Patentes */
	[] Spawn {
		WaitUntil {!IsNil "life_coplevel" || !IsNil "life_medicLevel"};
		Sleep 0.2;
		RJ_Patente = 0;
	    Switch (PlayerSide) Do {
		    Case west: {RJ_Patente = (call life_coplevel);};
			Case independent: {RJ_Patente = (call life_medicLevel);};
			Case civilian: {RJ_Patente = (call life_exercito);};
		};
	};
	
   /* Setup Do Copom Médico */
    [] Spawn {
		If !(PlayerSide IsEqualTo Independent) ExitWith {};
		[] call RJM_fnc_CopomMed;
	};
	
  /* Ferramentas ADM */
   //[] execVM "RJM\Scripts\MenuAdminRJ\loop.sqf";
   
  /* RádioRJM */
   [] execVM "RJM\Scripts\Radio\init.sqf";
   
  SystemChat "Scripts RJ Inicializadas *o*...";
  