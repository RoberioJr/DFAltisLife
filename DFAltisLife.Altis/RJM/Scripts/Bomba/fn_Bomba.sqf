/*

    Author: RobérioJR

*/

Private ['_cP','_cond','_ui','_progress','_pgText','_Pos','_TempoDaExplosao','_Obj'];

If (!Alive Player) ExitWith {};
If (Vehicle Player != Player) ExitWith {};

_TempoDaExplosao = _This Select 0;

closeDialog 0;
if (_TempoDaExplosao < 10) ExitWith {Hint "Erro Na Configuração Da Bomba";};

_cond = true;

disableSerialization;
6 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Plantando Bomba (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if (_cond) then {
    While {true} do {
        sleep 0.3;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Plantando Bomba (%1%2)...",round(_cP * 100),"%"];
		if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
            [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["life_fnc_animSync",-2];
            player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
        };
        if (_cP >= 1) exitWith {};
        if !(alive player) exitWith {_cond = false;};
		if (life_istazed || life_isknocked || life_interrupted) exitWith {_cond = false;}; 
    };
	6 cutText ["","PLAIN"];
    player playActionNow "stop";
	if !(_cond) ExitWith { Hint "Ação Interrompida..."; };
	_Obj = createVehicle ["Land_Sleeping_bag_folded_F", getPos player, [], 0, "CAN_COLLIDE"];
	_Obj EnableSimulation False;
	_Obj AllowDamage False;
	[player,"bombaplant",50,1] remoteExecCall ["life_fnc_say3D",0];
	Sleep _TempoDaExplosao;
	//Explosão
	deleteVehicle _Obj;
    "Bo_GBU12_LGB" createVehicle (GetPos _Obj);
};



