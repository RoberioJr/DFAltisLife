/*
    Author: RobérioJR
*/

#include "..\..\..\script_macros.hpp"

if (PlayerSide IsEqualTo civilian) ExitWith {};
if (FETCH_CONST(Life_CopLevel) < 3) ExitWith { Hint 'Você Não Tem Permissão Para Possuir Um Cachorro!'; };
if (JogadorTemUmCachorro) ExitWith { Hint 'Você Já Possui Um Cachorro!'; };
if (RJ_ValorDOG > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
Hint Format['%1, Você Comprou Um Cachorro Por R$%2!',Name Player,RJ_ValorDOG];
CASH = CASH - RJ_ValorDOG;
[] call RJM_fnc_Dog;