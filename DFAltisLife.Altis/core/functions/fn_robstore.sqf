/*

	Author: RobérioJr
	
*/

private ["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip"];

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; 
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;

if !(alive _robber) exitWith {};
if (side _robber != civilian) exitWith { hint "Voce nao pode roubar esse posto!"; };
if (_robber distance _shop > 5) exitWith { hint "Voce precisa estar a menos de 5 metros do caixa para roubar!"; };
if (vehicle player != _robber) exitWith { hint "Saia do Seu veiculo para roubar!"; };
if (currentWeapon _robber == "") exitWith { hint "HaHa, you mongoloide men!? Vaza daqui antes que eu te quebre na porrada!"; };
if ((west countSide playableUnits) < 2) exitWith { hint "Nao Tem Policiais Suficientes Para O Roubo!"; };

_kassa = 500000 + round(random 100000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";

if (!LiberadoRoubarPosto) exitWith { hint "Não é possível assaltar um posto no momento, volte mais tarde!"; };
[1, 1200] RemoteExec ["RJM_fnc_VarAssaltoPub",2];

[1,format["ALARME! - POSTO DE GASOLINA: %1 Esta Sendo Roubado Por: %1!", _shop, name _robber]] remoteExec ["life_fnc_broadcast",west]; 

disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;

 _Cond = true;

	_VarMarcador = Format['MarcadorPosto_%1',(random 9999)];
    _Marcador = createMarker [_VarMarcador, position player]; 
	_Marcador setMarkerColor "ColorRed";
	_Marcador setMarkerText "!ATENÇAO! ASSALTO EM ANDAMENTO";
	_Marcador setMarkerType "mil_warning";
	
    while{true} do {
        sleep 5;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (10m) (%1%2)...",round(_cP * 100),"%"];

        if (_cP >= 1) exitWith {};
        if (_robber distance _shop > 10.5) exitWith { _Cond = false; };
        if !(alive _robber) exitWith { _Cond = false; };
		if (_robber getVariable "restrained") exitWith {_cond = false; hint "Você foi contido!!";};
    };
	
    5 cutText ["","PLAIN"];
	
	If (!_Cond) ExitWith {
	    Hint "O Assalto Foi Cancelado!!";
	    deleteMarker format["%1", _VarMarcador]; 
		_shop switchMove ""; 
	};
	
    titleText [format ["Voce Roubou R$%1, Agora Fuja Para Não Ser Preso!",[_kassa] call life_fnc_numberText],"PLAIN"];
	deleteMarker format ["%1", _VarMarcador]; 
	RJM_GRANA = RJM_GRANA + _kassa;

	if (_kassa > 149999) then {
		[3,format ["<t size='3.4' color='#ff0000' shadow='0'>DFTV</t> <t size='1.2'> Houve Um Grande Roubo Em Um Posto De Gasolina. Os Assaltantes Levaram uma Grande Quantidade Em Dinheiro: R$%1 </t>",[_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",-2];
	};

	[] Spawn {
		life_use_atm = false;
		sleep (80 + random(180));
		life_use_atm = true;
	};
	
	[getPlayerUID _robber,name _robber,"211"] remoteExec ["life_fnc_wantedAdd",2];
	_shop switchMove "";
	
sleep 900;
_action = _shop addAction["Roubar Posto De Gasolina",life_fnc_robstore];

