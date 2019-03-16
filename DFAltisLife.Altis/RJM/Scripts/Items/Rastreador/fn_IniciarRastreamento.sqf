/*

    Author: Marvinn
	Edits: RobérioJR

*/

Private ['_cP','_cond','_ui','_progress','_pgText','_velRastreado','_nomeJogador','_tipo','_tipoDoVeiculo'];


closeDialog 0;
If (!Alive Player) ExitWith {};
If (Vehicle Player != Player) ExitWith {};

_velRastreado = CursorObject;
_nomeJogador = name player;
//if (_velRastreado getVariable "carroRastreado") exitWith { Hint 'Esse Veiculo Já Está Sendo Rastreado'; };
if !(_velRastreado isKindOf "LandVehicle") exitWith {}; //LandVehicle
if (isNil '_velRastreado' || IsNull _velRastreado) exitWith {};


if ([false,'rastreador',1] call life_fnc_handleInv) then {

_cond = true;

disableSerialization;
"Rastreador" cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Plantando Rastreador (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if (_cond) then {
    While {true} do {
        sleep 0.1;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Plantando Rastreador (%1%2)...",round(_cP * 100),"%"];
		if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
            [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["life_fnc_animSync",-2];
            player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
        };
        if (_cP >= 1) exitWith {};
        if !(alive player) exitWith {_cond = false;};
		if (life_istazed || life_isknocked || life_interrupted) exitWith {_cond = false;}; 
    };
	"Rastreador" cutText ["","PLAIN"];
    player playActionNow "stop";
	if !(_cond) ExitWith { Hint "Ação Interrompida..."; };
	
    _tipo = TypeOf _velRastreado;
    _tipoDoVeiculo = getText (configFile >> "CfgVehicles" >> _tipo >> "displayName");
    SystemChat format['Alvo: %1 | Tipo Alvo: %2',_velRastreado, _tipoDoVeiculo];
	["Rastreador"] spawn mav_ttm_fnc_addExp;
	if (playerSide IsEqualto civilian) Then {
	    [_velRastreado, _tipoDoVeiculo, _nomeJogador] Call RJM_fnc_Rastreando;
	};
	if (playerSide IsEqualto west) Then {
	    [_velRastreado, _tipoDoVeiculo, _nomeJogador] remoteExecCall ["RJM_fnc_Rastreando", west];
	};
};
} Else { Hint "Você Não Possui Um Rastreador Meu Amigo!"; };


