/*

    Author: RobérioJr

*/

Private _Obj = CursorObject;

If (!Alive Player) ExitWith {};
If (IsNull _Obj || IsNil '_Obj') ExitWith {};
If !((_Obj GetVariable ["RJ_ItemVar",["",0,False]]) select 2) ExitWith {Hint 'Você Não Pode Pegar Isso!'};

Private _Item = (_Obj GetVariable "RJ_ItemVar") Select 0;
Private _Quantidade = (_Obj GetVariable "RJ_ItemVar") Select 1;

If (([_Item, _Quantidade, life_carryWeight, life_maxWeight] call life_fnc_calWeightDiff) <= 0) ExitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
player playMove "AinvPknlMstpSlayWrflDnon";

Sleep 0.6;
life_action_inUse = false;

If (IsNull _Obj) ExitWith {};

Private _Msg = "";
_Msg = Switch (true) Do {
    case (_Item == "lixo"): {Format["Você Pegou %1 Sacolas De Lixo.",_Quantidade]};
	default {Format["Você Pegou %1 Unidades Disso!",_Quantidade]};
};

[1,_Msg] call RJM_fnc_Notificar;

DeleteVehicle _Obj;
[True,_Item,_Quantidade] call life_fnc_handleInv;