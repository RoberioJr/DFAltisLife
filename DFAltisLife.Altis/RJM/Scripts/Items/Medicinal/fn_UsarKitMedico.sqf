/*

    Author: RobérioJR
  
*/

Private ['_cP','_cond','_ui','_progress','_pgText'];

closeDialog 0;
If (!Alive Player) ExitWith {};
If (Vehicle Player != Player) ExitWith {};
If ((Damage Player) < 0.24) ExitWith { hint 'Você Não Pode Usar O Kit Medico Pois Não Está Muito Ferido!'; }; 
If (RJ_UsandoMedikit) ExitWith { hint 'Aguarde Um Momento Para Usar Outro MediKit'; };

if ([false,'kitmedico',1] call life_fnc_handleInv) then {

_cond = true;

disableSerialization;
"kitmedico" cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Usando Kit Medico (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

If (_cond) Then {
    While {true} do {
        sleep 0.12;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Usando Kit Medico (%1%2)...",round(_cP * 100),"%"];
		if (animationState Player != "AinvPknlMstpSlayWrflDnon_medic") then {
            [Player,"AinvPknlMstpSlayWrflDnon_medic"] remoteExecCall ["life_fnc_animSync",-2];
            Player playMoveNow "AinvPknlMstpSlayWrflDnon_medic";
        };
        if (_cP >= 1) exitWith {};
        if !(alive Player) exitWith {_cond = false;};
		if (life_istazed || life_isknocked || life_interrupted) exitWith {_cond = false;}; 
    };
	"kitmedico" cutText ["","PLAIN"];
	Player playActionNow "stop";
	if !(_cond) ExitWith { Hint "Ação Interrompida..."; };
	
	[] Spawn {
	    //_Dam = Damage Player;
	    //Player SetDamage (_Dam - 0.5);
		Player SetDamage 0;
		RJ_UsandoMedikit = True;
		Sleep 240;
		RJ_UsandoMedikit = False;
	};
};
} Else { hint 'Você Não Um Kit Médico'; };




