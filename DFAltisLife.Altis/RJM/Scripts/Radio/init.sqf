/*

    Author: RobérioJR

*/

private ["_radio"];

/* Iniciando Script */
 diag_log "RJ: Radio Dos Veiculos - Ativado";
 waitUntil {alive player};
 waitUntil {vehicle player != player}; //Aguardar O Jogador Entrar Em Algum Veiculo (FIX Para Musicas De Intro)
 
// Verificar Se O Veiculo Está Em Bom Estado.
[] spawn {
   private ["_vei"];
    while {true} do {
	    Sleep 3;
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
	    while {Dialog} do
		{
		    if !(RJMFIXNOME == "") then {
		        _menu = findDisplay 10100;
                _menuMusica = _menu displayCtrl 101013;
                _menuMusica ctrlSetText RJMFIXNOME;
			};
			Sleep 5;
		};
	};
};

while {true} do
{
    waitUntil {alive player};
	if (typeOf vehicle player in RJ_VeiculosComRadio) then {
	    if (vehicle player != player && (Driver (vehicle player) == player)) then {
			_radio = player addaction [("<t color=""#2E9AFE"">" + ("Radio") +"</t>"),"[1] call RJM_fnc_Menu","",5,false,true,"",""];
        };
	};
	waitUntil {vehicle player == player}; //Aguarda Até Que O Jogador Saida Do Veiculo
	playMusic ""; //Parar Musica
    player removeAction _radio; //Remove Ação Do Radio
	waitUntil {vehicle player != player}; //Aguardar O Jogador Entrar No Veiculo
};


