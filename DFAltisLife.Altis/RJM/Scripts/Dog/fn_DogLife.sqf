/*
    Author: RobérioJR
*/

#include "..\..\..\script_macros.hpp"

Private ["_SemPerm","_ValorCop","_ValorCiv","_ValorMed"];
 
_SemPerm = "Você Não Tem Permissão Para Possuir Um Cachorro!";

if (JogadorTemUmCachorro) ExitWith { Hint 'Você Já Possui Um Cachorro!'; };
//if (RJ_ValorDOG > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
_ValorCop = RJ_ValorDOG select 0;
_ValorCiv = RJ_ValorDOG select 1;
_ValorMed = RJ_ValorDOG select 2;

Switch (PlayerSide) Do {
    case West: { 
	    if (PlayerSide IsEqualTo civilian) ExitWith { Hint Format['%1',_SemPerm]; };
        if (FETCH_CONST(Life_CopLevel) < 3) ExitWith { Hint Format['%1',_SemPerm]; };
		if (_ValorCop > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
        Hint Format['%1, Você Comprou Um Cachorro Por R$%2!',Name Player,RJ_ValorDOG];
		SystemChat 'Aperte F6 Mirando No Jogador Para O Dog Atacar.';
		CASH = CASH - _ValorCop;
	};
	case Civilian: {
	    if (PlayerSide IsEqualTo west) ExitWith { Hint Format['%1',_SemPerm]; };
		if (_ValorCiv > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
        Hint Format['%1, Você Comprou Um Cachorro Por R$%2!',Name Player,RJ_ValorDOG];
		CASH = CASH - _ValorCiv;
	};
};

[] call RJM_fnc_Dog;
