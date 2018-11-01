/*
file: fn_robShops.sqf
Author: MrKraken
Description:
Executes the rob shob action!
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "Voce nao pode roubar esse posto!" };
if(_robber distance _shop > 5) exitWith { hint "Voce precisa estar a menos de 5 metros do caixa para roubar!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "O Roubo ja esta acontecendo!" };
if (vehicle player != _robber) exitWith { hint "Saia do Seu veiculo para roubar!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you mongoloide men!? Vaza daqui antes que eu te quebre na porrada!" };
if (_kassa == 0) exitWith { hint "Não Tem Dinheiro no Caixa!" };

_rip = true;
_kassa = 85000 + round(random 90000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 0) then {[1,format["ALARME! - POSTO DE GASOLINA: %1 Esta Sendo Roubado!", _shop]] remoteExec ["life_fnc_broadcast",west]; };

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[_vault,-1] remoteExec ["disableSerialization;",2]; hint "Nao Tem Policiais Suficientes Para O Roubo!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;

if(_rip) then
{
while{true} do
{
sleep 5;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				            _marker = createMarker ["MarkerRJposto", _Pos]; //by ehno: Place a Maker on the map
				            "MarkerRJposto" setMarkerColor "ColorRed";
				            "MarkerRJposto" setMarkerText "!ATENÇAO! ASSALTO EM ANDAMENTO";
				            "MarkerRJposto" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "MarkerRJposto"; _shop switchMove ""; hint "Voce precisa estar a menos de 10m para roubar o posto! - Agora não será possivel roubar."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Voce Roubou %1R$, Agora Fuja Para Não Ser Preso!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "MarkerRJposto"; // by ehno delete maker
RJM_GRANA = RJM_GRANA + _kassa;

if (_kassa > 149999) then {
    [3,format ["<t size='3.4' color='#ff0000' shadow='0'>DFTV</t> <t size='1.2'> Houve Um Grande Roubo Em Um Posto De Gasolina. Os Assaltantes Levaram uma Grande Quantidade Em Dinheiro: %1 </t>",_kassa]] remoteExec ["life_fnc_broadcast",civilian];
};

_rip = false;
life_use_atm = false;
sleep (60 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"] remoteExec ["life_fnc_wantedAdd",2];
};
sleep 300;
_action = _shop addAction["Roubar Posto De Gasolina",life_fnc_robstore];
_shop switchMove "";