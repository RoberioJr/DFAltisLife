/*

    Author: RobérioJR

*/

private["_unit"];
_unit = cursorTarget;
if (isNull _unit) exitWith {};
if ((_unit getVariable ["CuArrombado",FALSE])) exitWith { hint 'Esse Ai Já Ta Sem As Pregas Do CU!'; };
if ((animationState _unit != "Incapacitated")) exitWith {};
if (player == _unit) exitWith {};
if (!isPlayer _unit) exitWith {};

[_unit] Spawn {
    _unit = _this Select 0;
    if ([false,'camisinha',1] call life_fnc_handleInv) then {
        life_action_inUse = true;
        player playMove "AinvPknlMstpSnonWnonDnon_medic";
		[player,'estrupo',75,1] remoteExec ["life_fnc_say3D",-2];
        sleep 3.5;
        _unit setVariable["CuArrombado",true,true];
        life_action_inUse = false;
		[player] RemoteExec ['RJM_fnc_CuArrombado',_unit];
		[4,Format['%1 Arrombou o CU De %2 Com Força E Sem Cuspe!',name player,name _unit]] RemoteExec ['RJM_fnc_Notificar',-2];
		["Estrupar"] spawn mav_ttm_fnc_addExp;
        //[[player], "life_fnc_temOrgao", _unit, false] spawn life_fnc_MP;
    } else { Hint 'Você Não Tem Camisinhas!'; };
};