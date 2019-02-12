/*

    Author: Robério

*/

if (!alive player || vehicle player != player) exitWith {};

private _esperar = false;
private _pos = getPosATL player;
private "_pqd";

if (_pos select 2 < 10) then
{
	_pqd = createVehicle ["NonSteerable_Parachute_F", _pos, [], 0, "FLY"];
	_pqd setPosATL _pos;
	_pqd setDir 0; 
} else {
	_esperar = true;
	_pqd = createVehicle ["Steerable_Parachute_F", _pos, [], 0, "CAN_COLLIDE"];
	_pqd setDir getDir player;
};

 _pqd disableCollisionWith player;
 _pqd allowDamage false;
 player moveInDriver _pqd;
 _pqd setVelocity [0,0,0];

[_pqd, _esperar, diag_tickTime] spawn {
	params ["_pqd", "_esperar", "_tempoInicio"];

	if (vehicle player == _pqd && animationState player != "para_pilot") then
	{
		player switchMove "para_pilot";
	};

	sleep (([0.5, 4.25] select _esperar) - (diag_tickTime - _tempoInicio)); // 4.25 = Tempo Para O Paraquedas Abrir
	waitUntil {isTouchingGround _pqd || !alive _pqd};

	if (!isNull _pqd) then
	{
		_pqd setVelocity [0,0,0];
		sleep 0.5;
		if (vehicle player == _pqd) then { moveOut player };
		sleep 1.5;
		deleteVehicle _pqd;
	};
};
