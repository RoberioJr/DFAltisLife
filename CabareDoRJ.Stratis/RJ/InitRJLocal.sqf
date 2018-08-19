/*

    Author: RobérioJR
	|07/08/18|

*/

waitUntil {!isNull player && player == player};

[] ExecVM "RJ\Sistemas\Cfgs.sqf";
[] ExecVM "RJ\Sistemas\SetupEVH.sqf";
[] ExecVM "RJ\Sistemas\BarraDeStatus\StatusBar.sqf";
[] ExecVM "RJ\Sistemas\Admin\loop.sqf";

[] spawn RJ_fnc_Icons;
