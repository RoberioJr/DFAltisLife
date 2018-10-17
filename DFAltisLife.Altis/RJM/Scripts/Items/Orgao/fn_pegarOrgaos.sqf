private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if((_unit getVariable ["CuArrombado",FALSE])) exitWith { hint 'Esse Ai Já Ta Sem As Pregas Do CU!'; };
if((animationState _unit != "Incapacitated")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
[_unit] Spawn {
    _unit = _this Select 0;
    if ([false,'camisinha',1] call life_fnc_handleInv) then {
        life_action_inUse = true;
        player playMove "AinvPknlMstpSnonWnonDnon_medic";
        sleep 3;
        _unit setVariable["CuArrombado",true,true];
        life_action_inUse = false;
		[player] RemoteExec ['RJM_fnc_temOrgaos',_unit];
		[Format['%1 Arrombou o Cu De %2 Com Força E Sem Cuspe!',name player,name _unit],4] RemoteExec ['RJM_fnc_Notificar',-2];
        //[[player], "life_fnc_temOrgao", _unit, false] spawn life_fnc_MP;
    } else { Hint 'Você Não Tem Camisinhas!'; };
};