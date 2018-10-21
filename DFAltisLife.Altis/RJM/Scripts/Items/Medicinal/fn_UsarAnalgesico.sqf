/*

    Author: RobérioJR
  
*/

Private ['_cP','_cond','_ui','_progress','_pgText'];

closeDialog 0;
If (!Alive Player) ExitWith {};
If (Vehicle Player != Player) ExitWith {};
If (RJ_UsandoAnalgesico) ExitWith { hint 'Você Já Tomou Um Analgésico, Espere Um Pouco Para Usar Outro.'; };

if ([false,'analgesico',1] call life_fnc_handleInv) then {

_cond = true;

disableSerialization;
"analgesico" cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Tomando Analgesicos (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

If (_cond) Then {
    While {true} do {
        sleep 0.06;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Tomando Analgesicos (%1%2)...",round(_cP * 100),"%"];
		if (animationState Player != "AinvPknlMstpSlayWrflDnon_medic") then {
            [Player,"AinvPknlMstpSlayWrflDnon_medic"] remoteExecCall ["life_fnc_animSync",-2];
            Player playMoveNow "AinvPknlMstpSlayWrflDnon_medic";
        };
        if (_cP >= 1) exitWith {};
        if !(alive Player) exitWith {_cond = false;};
		if (life_istazed || life_isknocked || life_interrupted) exitWith {_cond = false;}; 
    };
	"analgesico" cutText ["","PLAIN"];
	Player playActionNow "stop";
	if !(_cond) ExitWith { Hint "Ação Interrompida..."; };
	
	RJ_UsandoAnalgesico = true;
	SystemChat "Você Usou Um Analgèsico, O Efeito Durará 2 Minutos!";
	
	[] Spawn {
	    _TempEfeito = 0;
		_TempCura = 0;
	    While {_TempEfeito < 120} Do {
		    Sleep 1;
			if !(alive player) exitWith {};
			if (_TempEfeito > 120) exitWith {};
			_TempEfeito = _TempEfeito + 1;
			_TempCura = _TempCura + 1;
			If (_TempCura >= 8) Then {
			    _TempCura = 0;
			    _Dam = Damage Player;
			    Player SetDamage (_Dam - 0.02);
			};
		};
		RJ_UsandoAnalgesico = false;
	};
};
} Else { hint 'Você Não Possui Analgésicos'; };




