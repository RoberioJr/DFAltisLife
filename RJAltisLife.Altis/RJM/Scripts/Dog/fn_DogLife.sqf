/*
    Author: RobérioJR
*/

#include "..\..\..\script_macros.hpp"

Private ["_SemPerm","_Valor","_DogPass"];
 
_SemPerm = "Você Não Tem Permissão Para Possuir Um Cachorro!";
_DogPass = false;

if (JogadorTemUmCachorro) ExitWith { Hint 'Você Já Possui Um Cachorro!'; };

Switch (PlayerSide) Do {
    case West: { 
	    _Valor = RJ_ValorDOG select 0;
        if (FETCH_CONST(Life_CopLevel) < 2) ExitWith { Hint Format['%1',_SemPerm]; };
		if (_Valor > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
		_DogPass = true;
		SystemChat 'Aperte F6 Mirando No Jogador Para O Dog Atacar.';
	};
	case Civilian: {
	    _Valor = RJ_ValorDOG select 1;
		if (_Valor > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
		_DogPass = true;
	};
	case Independent: {
	    _Valor = RJ_ValorDOG select 2;
		if (_Valor > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
		_DogPass = true;
		SystemChat 'Aperte F6 Mirando No Jogador Para O Dog Atacar.';
	};
};

if (_DogPass) Then {  
    Hint Format['%1, Você Comprou Um Cachorro Por R$%2!',Name Player,_Valor];
    CASH = CASH - _Valor;
    [] call RJM_fnc_Dog; 
	["ComprarCachorro"] spawn mav_ttm_fnc_addExp; //Xp Maverick
};

