#include "..\..\..\script_macros.hpp"
/*
    
    Author: MrKraken
    Edits: RobérioJR & Nulo

*/
private ["_robber","_shop","_kassa","_ui","_pgText","_progress","_cP","_rip","_action"];

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;

if(side _robber !=civilian) exitWith {hint "Você precisa ser um civil para roubar essa loja.";};
if(_robber distance _shop > 10) exitWith {hint "Você precisa ficar a 10m para roubar essa loja";};
if(vehicle player !=_robber) exitWith {hint "Você precisa estar fora do seu veículo primeiro!";};
if(west countSide playableUnits < 4) exitWith {hint "Policiais insuficientes!";};
 
if!(alive _robber) exitWith {};
if (currentWeapon _robber isEqualTo "") exitWith {hint "Você precisa de armas para roubar essa loja!";};

_rip = true;
_kassa = 300000 + round(random 100000);
_shop removeAction _action;

[1,format["000 ALERTA:\n\n A Lotérica: %1 Está Sendo Roubado Por %2",_shop,_robber, name _robber]] remoteExec ["life_fnc_broadcast",west];

disableSerialization;
7 cutRsc ["life_progress", "PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubando Lotérica, Fique Por Perto (3m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
    while{true} do
        {
            sleep 7;
            _cP = _cP + 0.01;
            _progress progressSetPosition _cP;
            _pgText ctrlSetText format ["Roubando a Casa Lotérica, fique por perto (10m)  (%1%2)...",round(_cP * 100), "%"];

                _marker = createMarker ["MarkerLotericaRJ", _shop];
                "MarkerLotericaRJ" setMarkerColor "ColorRed";
                "MarkerLotericaRJ" setMarkerText "ATENÇÃO: ROUBO EM PROGRESSO!!!";
                "MarkerLotericaRJ" setMarkerType "mil_warning";

            if(_cP >=1) exitWith {};
            if(_robber distance _shop > 10.5) exitWith{};
            if!(alive _robber) exitWith {};
        };

        if(_robber getVariable "restrained") exitWith {_rip = false; hint "Você foi contido!!";};      
        if(life_istazed) exitWith {_rip = false; hint "Você foi Imobilizado!";};                                
        if!(alive _robber) exitWith {_rip = false;};

        if(_robber distance _shop > 10.5) exitWith {
        hint "Você precisa ficar a 10m para roubar essa loja! Caixa registradora agora está bloqueada e a polícia foi notificada!";
        7 cutText ["","PLAIN"];
        [1,format["%1 Tentou Assaltar A Lotérica: %2!",_robber,name _robber, _shop]] remoteExec ["life_fnc_broadcast",west];
        [getPlayerUID _robber, _robber getVariable ["realname",name _robber], "211"] remoteExecCall ["life_fnc_wantedAdd", RSERV];
        };
        7 cutText ["","PLAIN"];

        titleText[format["Você Conseguiu Roubar R$%1, Agora Saia Antes Que os Policiais Cheguem!",[_kassa] call life_fnc_numberText], "PLAIN"];
        RJM_GRANA = RJM_GRANA + _kassa;
        deleteMarker "MarkerLotericaRJ";
        _rip = false;
        life_use_atm = false;
        playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _robber];
        sleep 25;
		if (_kassa >= 175000) then {
            [3, format["DF TV: A Lotérica %1 Acabou De Ser Assaltada, Total Roubado: R$%2",_shop, [_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast", civilian];
        };
		[] Spawn { Sleep 2; deleteMarker "MarkerLotericaRJ"; };
		sleep 300;
        life_use_atm = true;
        if!(alive _robber) exitWith {};
        [getPlayerUID _robber, _robber getVariable ["realname",name _robber], "211"] remoteExecCall ["life_fnc_wantedAdd", RSERV];
        call SOCK_fnc_updatePartial;
    };
sleep 300; //5 Minutes
_action = _shop addAction["Roubar Lotérica",RJM_fnc_roubarLoterica,civilian];