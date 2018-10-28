#include "..\..\..\script_macros.hpp"
/*
    File:   fn_robAgencia.sqf
    Author: MrKraken

    Description:

    Modified by: Pril


*/
private ["_robber","_shop","_kassa","_ui","_pgText","_progress","_cP","_cond","_action"];

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;

if (side _robber !=civilian) exitWith {hint "Você precisa ser um civil para roubar essa loja.";};
if (_robber distance _shop > 10) exitWith {hint "Você precisa ficar a 10m para roubar essa loja";};
if (vehicle player !=_robber) exitWith {hint "Você precisa estar fora do seu veículo primeiro!";};
if (west countSide playableUnits < 6) exitWith {hint "Policiais insuficientes!";};
 
if !(alive _robber) exitWith {};
if (currentWeapon _robber isEqualTo "") exitWith {hint "Você precisa de armas para roubar essa loja!";};

if !(LiberadoRoubarAgencia) ExitWith {Hint 'Outra Agência Já Está Sendo Assaltada, Aguarde O Assalto Terminar!';};

_cond = true;
//_kassa = 200000 + round(random 100000);
_kassa = 200000 + ((west countSide playableUnits) * 15000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";

 [1,format["000 ALERTA:\n\nAgência: %1 Está Sendo Roubado Por %2",_shop,_robber, name _robber]] remoteExec ["life_fnc_broadcast",west];

 [3,660] RemoteExec ['RJM_fnc_VarAssaltoPub',2];

disableSerialization;
8 cutRsc ["life_progress", "PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubando Agência, Fique Perto (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

while{true} do {
    sleep 7.5;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format ["Roubando a Agência Bancária, fique por perto (10m)  (%1%2)...",round(_cP * 100), "%"];

    _Marcador = createMarker [Format["Agencia_%1",GetPlayerUID Player], _shop];
    _Marcador setMarkerColor "ColorRed";
    _Marcador setMarkerText "ATENÇÃO: ROUBO EM PROGRESSO!!!";
    _Marcador setMarkerType "mil_warning";

    if (_cP >=1) exitWith {};
    if (_robber distance _shop > 10.5) exitWith { _cond = False; };
    if !(alive _robber) exitWith { _cond = False; };
};

 8 cutText ["","PLAIN"]; //Mata A Barra De Progresso

if (_robber getVariable "restrained") exitWith {_cond = false; hint "Você foi contido!!";};      
if (life_istazed) exitWith {_cond = false; hint "Você foi Imobilizado!";};                                    
if !(alive _robber) exitWith {_cond = false;};

if !(_cond) ExitWith {
	[_action,_shop] Spawn {
		_action = _This Select 0;
        _shop = _This Select 1;
		_MRK = Format["Agencia_%1",GetPlayerUID Player];
		deleteMarker _MRK;
		sleep 300; //5 Minutes
        _action = _shop addAction["Roubar Agência",RJM_fnc_roubarAgencia,civilian];
	};
}; 

//Adiciona O Jogador A Lista De Procurados e Tranca O Caixa
if(_robber distance _shop > 10.5) exitWith {
    hint "Você precisa ficar a 10m para roubar essa loja! Caixa registradora agora está bloqueada e a polícia foi notificada!";
    [1,format["%1 Tentou Roubar A Agência: %2!",_robber,name _robber, _shop]] remoteExec ["life_fnc_broadcast",west];
    [getPlayerUID _robber, _robber getVariable ["realname",name _robber], "211"] remoteExecCall ["life_fnc_wantedAdd", RSERV];
};

 titleText[format["Você Conseguiu Roubar %1, Agora Saia Antes Que os Policiais Cheguem!",[_kassa] call life_fnc_numberText], "PLAIN"];
 RJM_GRANA = RJM_GRANA + _kassa;
 _MRK = Format["Agencia_%1",GetPlayerUID Player];
 deleteMarker _MRK;
 playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _robber];

if (_kassa >= 300000) then {
    [3, format["DF TV: A Agência %1 Acabou De Ser Assaltada, Total Roubado: R$%2",_shop, [_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast", civilian];
};

[] Spawn {
    life_use_atm = false;
    sleep 320;
    life_use_atm = true;
};

//Adiciona A Lista De Procurados
[getPlayerUID _robber, _robber getVariable ["realname",name _robber], "211"] remoteExecCall ["life_fnc_wantedAdd", RSERV];

// Salvar Perfil
 call SOCK_fnc_updatePartial;
 sleep 300; //5 Minutes
 _action = _shop addAction["Roubar Agência",RJM_fnc_roubarAgencia,civilian];



