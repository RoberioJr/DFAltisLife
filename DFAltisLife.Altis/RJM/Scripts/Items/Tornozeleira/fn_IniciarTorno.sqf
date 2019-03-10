/*

    Author: RobérioJR

*/

Private ['_cP','_cond','_ui','_progress','_pgText','_Jogador'];

_Jogador = CursorTarget;

closeDialog 0;
If (!Alive Player) ExitWith {};
If (Vehicle Player != Player) ExitWith {};
If (!IsPlayer _Jogador) ExitWith {};

if ([false,'tornozeleira',1] call life_fnc_handleInv) then {

_cond = true;

disableSerialization;
"Tornozeleira" cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Implantando Tornozeleira (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if (_cond) then {
    While {true} do {
        sleep 0.1;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Implantando Tornozeleira (%1%2)...",round(_cP * 100),"%"];
		if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
            [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["life_fnc_animSync",-2];
            player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
        };
        if (_cP >= 1) exitWith {};
        if !(alive player) exitWith {_cond = false;};
		if (life_istazed || life_isknocked || life_interrupted) exitWith {_cond = false;}; 
    };
	"tornozeleira" cutText ["","PLAIN"];
    player playActionNow "stop";
	if !(_cond) ExitWith { Hint "Ação Interrompida..."; };

    SystemChat format['Alvo Rastreado: %1',(name _Jogador)];
	
	_Jogador setVariable ["Tornozeleira", true, true];
	[1,Format['%1 Implantou Uma Tornozeleira em você, Você Será Rastreado Pelos Próximos 15 Minutos!',(name player)]] RemoteExec ["RJM_fnc_Notificar",_Jogador];
	[_Jogador] remoteExec ["RJM_fnc_TornoRastreando", west];
};
} Else { Hint "Você Não Possui Uma Tornozeleira Meu Amigo!"; };


