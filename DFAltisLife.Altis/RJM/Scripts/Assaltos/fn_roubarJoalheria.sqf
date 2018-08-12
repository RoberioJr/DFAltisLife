/*

    Author: MrKraken
    Edits: RobérioJR
	
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bi.../wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "Você Não Pode Roubar Essa Joalheria!" };
if(_robber distance _shop > 5) exitWith { hint "Você Precisa Estar A 4 Metros Para Assaltar!" };

if !(_kassa) then { _kassa = 90000; };
if (_rip) exitWith { hint "O Assalto Já Está Acontecendo!" };
if (vehicle player != _robber) exitWith { hint "Saia De Dentro Do Veiculo!" };

if !(alive _robber) exitWith {};
if(!([false,"boltcutter",1] call life_fnc_handleInv)) exitWith {"Você Não Tem Um Alicate"};
if (_kassa == 0) exitWith { hint "Não Tem Dinheiro No Caixa!!" };

_rip = true;
_kassa = 200000 + round(random 100000);
_shop removeAction _action;
//_shop switchMove "AmovPercMstpSsurWnonDnon";

hint "Um Alarme Foi Ativado, A Policia Já Deve Estar A Caminho!"; 
[[1,format["ALARME! - Joalheria: %1 Está Sendo Assaltada!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

_cops = (west countSide playableUnits);
if(_cops < 5) exitWith{hint "Não Tem Policiais Suficientes Para Roubar Essa Joalheria!";};
disableSerialization;
6 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (12m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
while{true} do
{
sleep 4;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Roubo Em Progresso, Fique Por Perto (12m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; 
            _marker = createMarker ["rjMarker200", _Pos];
            "rjMarker200" setMarkerColor "ColorRed";
            "rjMarker200" setMarkerText "!ATENÇÃO! Assalto Em Progresso !ATENÇÃO!";
            "rjMarker200" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 12.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 12.5) exitWith { deleteMarker "rjMarker200"; _shop switchMove ""; hint "Você Deve Estar A Menos De 12M Para Assaltar! - Agora O Caixa Foi Trancado."; 5 cutText ["","PLAIN"]; _rip = false; };
6 cutText ["","PLAIN"];

titleText[format["Você Roubou R$%1, Agora Corre Carai!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "rjMarker200"; 
RJM_GRANA = RJM_GRANA + _kassa;

_rip = false;
life_use_atm = false;
sleep (120 + random(240));
life_use_atm = true;
if!(alive _robber) exitWith {};
[getPlayerUID _robber,name _robber,"211"]remoteExec["life_fnc_wantedAdd",false,false]
};
sleep 450;
_action = _shop addAction["Roubar Cofre Da Joalheria",RJM_fnc_roubarJoalheria];
//_shop switchMove "";