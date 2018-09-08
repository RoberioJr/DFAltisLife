/*

    Author: RobérioJR

*/

if (PlayerSide In [east,civilian,independent]) ExitWith {};
_vehicle = (Vehicle Player);
if(RJ_DelayTerminado) then {
	[5] Spawn RJM_fnc_DelayRJ;
    if (_vehicle IsEqualTo "C_Quadbike_01_F") Then {
        _vel = velocity _vehicle;
        _dir = direction _vehicle;
        _speed = 12; 
        _vehicle setVelocity [
            (_vel select 0) + (sin _dir * _speed), 
            (_vel select 1) + (cos _dir * _speed), 
            (_vel select 2)
        ];
    };
} Else { SystemChat 'Aguarde O Turbo Resfriar...'; };