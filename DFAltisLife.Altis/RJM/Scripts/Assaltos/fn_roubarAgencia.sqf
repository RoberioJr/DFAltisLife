/*
  
    Author: RobérioJR

*/

private ["_robber","_shop","_kassa","_ui","_pgText","_progress","_cP","_cond","_action"];

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;

if !(alive _robber) exitWith {};
if (side _robber !=civilian) exitWith {hint "Você precisa ser um civil para roubar essa loja.";};
if (_robber distance _shop > 10) exitWith {hint "Você precisa ficar a 10m para roubar essa loja";};
if (vehicle player !=_robber) exitWith {hint "Você precisa estar fora do seu veículo primeiro!";};
if (west countSide playableUnits < 5) exitWith {hint "Policiais insuficientes!";};
if (currentWeapon _robber isEqualTo "") exitWith {hint "Você precisa de armas para roubar essa loja!";};

if !(LiberadoRoubarAgencia) ExitWith {Hint 'Outra Agência Já Está Sendo Assaltada, Aguarde O Assalto Terminar!';};
[3,900] RemoteExec ['RJM_fnc_VarAssaltoPub',2];

_kassa = 300000 + ((west countSide playableUnits) * 7500);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";

 [1,format["000 ALERTA:\n\nAgência: %1 Está Sendo Roubado Por %2",_shop, name _robber]] remoteExec ["life_fnc_broadcast",west];

disableSerialization;
8 cutRsc ["life_progress", "PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubando Agência, Fique Perto (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

_Cond = true;

    _VarMarcador = Format['MarcadorAgencia_%1',(random 9999)];
    _Marcador = createMarker [_VarMarcador, position player];
    _Marcador setMarkerColor "ColorRed";
    _Marcador setMarkerText "ATENÇÃO: ROUBO EM PROGRESSO!!!";
    _Marcador setMarkerType "mil_warning";

While {True} Do {
    sleep 8;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format ["Roubando a Agência Bancária, fique por perto (10m)  (%1%2)...",round(_cP * 100), "%"];

    if (_cP >=1) exitWith {};
    if (_robber distance _shop > 10.5) exitWith { _Cond = False; };
    if !(alive _robber) exitWith { _Cond = False; };
	if (_robber getVariable "restrained") exitWith {_Cond = false; hint "Você foi contido!!";};
	if (life_istazed) exitWith {_Cond = false; hint "Você foi Imobilizado!";};
};

 8 cutText ["","PLAIN"]; //Mata A Barra De Progresso

 If (!_Cond) ExitWith {
	Hint "O Assalto Foi Cancelado!!";
	deleteMarker format["%1", _VarMarcador]; 
    _shop switchMove ""; 
 };

  titleText [format ["Voce Roubou R$%1, Agora Fuja Para Não Ser Preso!",[_kassa] call life_fnc_numberText],"PLAIN"];
  deleteMarker format ["%1", _VarMarcador]; 
  RJM_GRANA = RJM_GRANA + _kassa;

	If (_kassa >= 340000) then {
		[3,format ["<t size='3.4' color='#ff0000' shadow='0'>DFTV</t> <t size='1.2'> Houve Um Grande Roubo Em Uma Agência. Os Assaltantes Levaram uma Grande Quantidade Em Dinheiro: R$%1 </t>",[_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",-2];
	};

    [] Spawn {
		life_use_atm = false;
		sleep (80 + random(180));
		life_use_atm = true;
	};

   [getPlayerUID _robber, _robber getVariable ["realname",name _robber], "211"] remoteExecCall ["life_fnc_wantedAdd", RSERV];
   _shop switchMove "";

 sleep 900;
 _action = _shop addAction["Roubar Agência",RJM_fnc_roubarAgencia,civilian];



