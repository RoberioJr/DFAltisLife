/*
    Author: RobérioJR
*/

#include "..\..\..\script_macros.hpp"

if (PlayerSide IsEqualTo civilian) ExitWith {};
if (FETCH_CONST(Life_CopLevel) < 3) ExitWith {};
if (JogadorTemUmCachorro) ExitWith {};
if (75000 > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
Hint Format['%1, Você Comprou Um Cachorro Por R$75.000,00!',Name Player];
CASH = CASH - 75000;
[] call RJM_fnc_Dog;