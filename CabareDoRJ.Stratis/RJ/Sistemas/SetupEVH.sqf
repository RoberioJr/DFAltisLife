/*

    Author: RobérioJR
	|07/08/18|

*/

player addEventHandler ["Respawn", {_this call RJ_fnc_AoRespawnar}];
player addEventHandler ["Take", {_this call RJ_fnc_AoPegarItem}];
player addEventHandler ["HandleDamage", {_this call RJ_fnc_handleDamage}];

addMissionEventHandler ["Map", {_this call RJ_fnc_Marcador}];

//addMissionEventHandler ["EntityKilled", {call RJ_fnc_ContadorDeMortes}];