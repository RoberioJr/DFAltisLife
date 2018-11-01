/*

    Author: RobérioJR
	PROJETO SENDO DESENVOLVIDO
    USO: [IDMUSICA] call RJM_fnc_radioSom;
*/

#include "..\..\..\CFGs.sqf"

Private ["_musica","_vei","_nomeDaMusica"];

_musica = param [0,0,[0]];
_vei = (vehicle player);

if (vehicle player == player) exitWith {};
if (_musica isEqualTo "") exitWith { cutText ["Erro: Nenhuma Musica Selecionada", "PLAIN"]; };
if (_musica isEqualTo 0) exitWith { playSound "botao"; cutText ["CAIXA DE SOM - DESLIGADA", "PLAIN"]; sleep 0.8; deleteVehicle (_vei getVariable ["tocando", objNull]); };
//if (_musica > 5 or {_musica < 1}) then {_musica = selectRandom [1,2,3,4,5];};

switch (_musica) do {
    case 1: {
	    _nomeDaMusica = RJ_nomeMusicas select 0; 
	    _musica = "um";
	};
	case 2: {
	    _nomeDaMusica = RJ_nomeMusicas select 1; 
	    _musica = "dois";
	};
	case 3: {
	    _nomeDaMusica = RJ_nomeMusicas select 2; 
	    _musica = "tres";
	};
	case 4: {
	    _nomeDaMusica = RJ_nomeMusicas select 3; 
	    _musica = "quatro";
	};
	case 5: {
	    _nomeDaMusica = RJ_nomeMusicas select 4; 
	    _musica = "cinco";
	};
	case 6: {
	    _nomeDaMusica = RJ_nomeMusicas select 5; 
	    _musica = "seis";
	};
};
/*
if (isNull (_vei getVariable ["tocando", objNull])) then { 
    if (vehicle player != player) then {
		_helipad = "Land_HelipadEmpty_F" createVehicle [0,0,0];
        _helipad attachTo [_vei, [0,0,0]];
		_vei setVariable ["tocando", _helipad];
	    playSound "botao";
		titleText[format ["Tocando: %1",_nomeDaMusica],"PLAIN"];
	    sleep 1.5;
		[_helipad,_musica,205,1] remoteExec ["RJM_fnc_Musica3D",0];
    };
 } else {*/
   // if !(isNull (_vei getVariable ["tocando", objNull])) then { 
        //deleteVehicle (_vei getVariable ["tocando", objNull]);
	//};
	[_vei,_musica,_nomeDaMusica] Spawn {
    _vei = _This Select 0;
    _musica = _This Select 1;
    _nomeDaMusica = _This Select 2;
	deleteVehicle (_vei getVariable ["tocando", objNull]);
    _helipad = "Land_HelipadEmpty_F" createVehicle [0,0,0];
    _helipad attachTo [_vei, [0,0,0]];
	_vei setVariable ["tocando",_helipad,true];
	playSound "botao";
	titleText[format ["Tocando: %1",_nomeDaMusica],"PLAIN"];
	sleep 1.5;
	[_helipad,_musica,205,1] remoteExec ["RJM_fnc_Musica3D",0];
	};

//};

