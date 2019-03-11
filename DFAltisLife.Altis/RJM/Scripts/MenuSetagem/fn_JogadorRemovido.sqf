/*

    Author: RobérioJr

*/

_verificar = _This Select 0;

[] call SOCK_fnc_updateRequestRJ;
player EnableSimulation False;
[1,"Você Foi Removido De Uma Corporação, Seu Jogo Irá Fechar Em Alguns Segundos!"] call RJM_fnc_Notificar;
Sleep 2;

[1,"Você Foi Removido De Uma Corporação, Seu Jogo Irá Fechar Em Alguns Segundos!"] call RJM_fnc_Notificar;
Sleep 3;

[] ExecVM "RJM\Scripts\Variados\CrasharJogo.sqf";