/*

    Author: RobérioJR
	|07/08/18|

*/

JogadorPronto = False;
waitUntil {!isNull player && player == player};
WaitUntil {(!IsNil "DinheiroInicial")};

[] ExecVM "RJ\Sistemas\SetupVariaveis.sqf";
[] ExecVM "RJ\Sistemas\SetupEVH.sqf";
[] ExecVM "RJ\Sistemas\BarraDeStatus\StatusBar.sqf";
[] ExecVM "RJ\Sistemas\Admin\loop.sqf";

enableSentences false;

[] Spawn RJ_fnc_Icons;
[] Spawn RJ_fnc_AutoSave;
[] Spawn RJ_fnc_RecGrana;

JogadorPronto = True;
