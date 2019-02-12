/*

    Author: RobérioJR

*/

//private ["_radio"];

/* Iniciando Script */
 diag_log "RJ: Radio Dos Veiculos - Ativado";
 waitUntil {alive player};
 waitUntil {vehicle player != player}; //Aguardar O Jogador Entrar Em Algum Veiculo (FIX Para Musicas De Intro)
 
// Verificar Se O Veiculo Está Em Bom Estado.
[] spawn {
   private ["_vei"];
    while {true} do {
	    Sleep 2;
		waitUntil {alive player};
		if (vehicle player != player) then { _vei = (vehicle player); };
		waitUntil {vehicle player == player or (!Alive Player)};
	    if (damage _vei > 0.4) then {
	        //cutText ["A Caixa De Som Do Seu Veiculo Foi Destruida, Repare O Veiculo Para Ligar Novamente!", "PLAIN"];
	        deleteVehicle (_vei getVariable ["tocando", objNull]); //Para Musica Da Caixa De Som
		    waitUntil {vehicle player != player}; //Aguardar O Jogador Entrar No Veiculo
        };
    };
};

[] spawn {
  private ['_menu','_menuMusica'];
  RJMFIXNOME = "";
    while {true} do 
	{
		if !(RJMFIXNOME == "") then {
		    _menu = findDisplay 10100;
            _menuMusica = _menu displayCtrl 101013;
            _menuMusica ctrlSetText RJMFIXNOME;
		};
		Sleep 1.5;
	};
};

[] Spawn {
    while {true} Do {
        waitUntil {typeOf vehicle player in RJ_VeiculosComRadio};
	    waitUntil {Vehicle Player == Player};
	    playMusic "";
	};
};

/*
[] Spawn {
    While {true} Do {
	    waitUntil {typeOf vehicle player in RJ_VeiculosComRadio && (Driver (vehicle player) == player)};
		_ACRADIO = player addaction [("<t color=""#2E9AFE"">" + ("Radio") +"</t>"),"[1] call RJM_fnc_Menu","",5,false,true,"",""];
	    waitUntil {(typeOf vehicle player in RJ_VeiculosComRadio && (Driver (vehicle player) != player)) || ((Vehicle Player) == player)};
		player removeAction _ACRADIO; //Remove Ação Do Radio
	};
};*/

