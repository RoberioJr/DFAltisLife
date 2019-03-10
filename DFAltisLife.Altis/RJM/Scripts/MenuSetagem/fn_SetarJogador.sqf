/*

    Author: RobérioJr

*/

_query = _This Select 0;
_nome1 = _This Select 1;
_nome2 = _This Select 2;
_nivel = _This Select 3;
_tipo = _This Select 4;

if (_query isEqualTo "") exitWith {};

Diag_Log Format[":: %1, Setou %2 Para O Nivel %3 Do Tipo: %4 ::",_nome1,_nome2,_nivel,_tipo];

[_query,1] call DB_fnc_asyncCall;