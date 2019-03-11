/*

    Author: RobérioJr

*/

If ((lbCurSel 3004) isEqualTo -1) ExitWith { Hint "Selecione Um Jogador Primeiro!" };
If ((lbCurSel 3005) isEqualTo -1) ExitWith { Hint "Selecione Uma Patente Primeiro!" };

_jogador = call compile format ["%1",(lbData [3004,(lbCurSel 3004)])];
_valor = lbValue [3005,(lbCurSel 3005)];
_uid = (getPlayerUID _jogador);

_confirm = [
    format ["Quer Mesmo Setar %1 Para O Nivel %2 No Banco De Dados?",(Name _jogador),_valor],
	"Confirmar Setagem",
	"Confirmar",
	"Cancelar"
] call BIS_fnc_guiMessage;

If (!_confirm) ExitWith {CloseDialog 0};

If (IsNil "_valor" || IsNil "_uid") ExitWith { Hint "Erro Ao Setar Jogador!" };
If (IsNil "_valor" || IsNil "_uid") ExitWith { Hint "Erro Ao Setar Jogador!" };

_query = "";
_tipo = "";
Switch (PlayerSide) Do {
    case west: {_query = format ["UPDATE players SET coplevel='%1' WHERE pid='%2'",_valor,_uid]; _tipo = "COP";};
	case independent: {_query = format ["UPDATE players SET mediclevel='%1' WHERE pid='%2'",_valor,_uid]; _tipo = "MED";};
};
 
if (_query isEqualTo "") exitWith {};

If (_valor IsEqualTo 0) Then { [_jogador] remoteExec ['RJM_fnc_JogadorRemovido',_jogador]; };

[_query,(Name Player),(Name _jogador),_valor,_tipo] RemoteExec ["RJM_fnc_SetarJogador",2];