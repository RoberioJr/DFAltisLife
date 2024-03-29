/*

    Author: RobérioJr

*/

#include "..\..\..\script_macros.hpp"
/*

	Author: RobérioJR
	Proibido Usar Esse Código Sem Permissão Dos Autores.

	Ajuda Para Editar:
    ctrlShow[ID,false]; - Desativa Botão
	ctrlShow[ID,true]; - Ativa Botão
	_Btn ctrlSetText "TEXTO"; - Coloca Texto No Botão
	_Btn buttonSetAction "SCRIPT/CHAMADA"; - Coloca Ação No Botão
	_Btn ctrlSetTooltip "TEXTO"; - Coloca Descrição No Botão

*/
Private ['_select','_listplayers','_nivel','_botao','_nome','_cor','_array'];

If (!alive player || dialog) exitWith {};

If (PlayerSide IsEqualTo west) Then {
    If !(FETCH_CONST(life_coplevel) in [13,17]) ExitWith {hint 'Você Não Tem Permissão Para Usar Isso!'};
	_select = 0;
	If (FETCH_CONST(life_coplevel) IsEqualTo 17) Then {
	    _select = 1;
	};
};
If (PlayerSide IsEqualTo independent) Then {
    If !(FETCH_CONST(life_mediclevel) in [8,16]) ExitWith {hint 'Você Não Tem Permissão Para Usar Isso!'};
	_select = 2;
	If (FETCH_CONST(life_mediclevel) IsEqualTo 16) Then {
	    _select = 3;
	};
};
If (PlayerSide IsEqualTo civilian) Then {
    If !(FETCH_CONST(life_exercito) IsEqualTo 13) ExitWith {hint 'Você Não Tem Permissão Para Usar Isso!'};
	_select = 4;
};

disableSerialization;
createDialog "RJ_MenuSetagem";

_listplayers = (findDisplay 3000) displayCtrl 3004;
_nivel = (findDisplay 3000) displayCtrl 3005;
_botao = (findDisplay 3000) displayCtrl 3006;

_botao buttonSetAction "[] Spawn RJM_fnc_PrepararSetagem"; 

lbClear _listplayers;
{
    If (IsPlayer _x && !(player IsEqualTo _x)) Then {
		_nome = (name _x);
		_cor = [0.8,0.8,0.2,1];
		_cor = Switch (Side _x) Do {case west:{[0,0,1,1]};case civilian:{[0.3,0.2,0.6,1]};case independent:{[0,1,0,1]};default{[0.8,0.8,0.2,1]};};
		_listplayers LbAdd Format['%1',_nome];
		_listplayers LbSetColor [(lbSize _listplayers)-1, _cor];
		_listplayers LbSetData [(lbSize _listplayers)-1,str(_x)];
	};
} ForEach playableUnits;

lbClear _nivel;
_nivel lbAdd "Remover";
_nivel lbSetValue [(lbSize _nivel)-1,0];
{
    _array = (_x Select _select);
    If !((_array Select 0) IsEqualTo "" || (_array Select 1) < 0) Then {
        _nivel lbAdd format ["%1",(_array Select 0)];
        _nivel lbSetValue [(lbSize _nivel)-1,(_array Select 1)];
	};
} forEach RJ_PatentesCFG;







