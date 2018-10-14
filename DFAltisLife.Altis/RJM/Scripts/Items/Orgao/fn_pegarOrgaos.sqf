private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if((_unit getVariable ["orgaoFaltando",FALSE])) exitWith {};
if((player getVariable ["temOrgao",FALSE])) exitWith {};
if((animationState _unit != "Incapacitated")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
if(life_inv_kidney >= 2) exitWith {hint "Você só pode levar 2 orgãos, no máximo"};
[_unit] Spawn {
    _unit = _this Select 0;
    if ([false,'bisturi',1] call life_fnc_handleInv) then {
        life_action_inUse = true;
        player setVariable["temOrgao",true,true];
        player playMove "AinvPknlMstpSnonWnonDnon_medic";
        sleep 5;
        _unit setVariable["orgaoFaltando",true,true];
		if(!([true,"kidney",1] call life_fnc_handleInv)) exitWith {hint "Você não têm espaço para guardar mais orgãos"};
        life_action_inUse = false;
        [[player], "life_fnc_temOrgao", _unit, false] spawn life_fnc_MP;
        Hint Format ['Você Roubou O Rim De %1', Name _unit];
    } else { Hint 'Você Não Tem Um Bisturí!'; };
};