
Private '_AcTurbo';
if (PlayerSide IsEqualTo West) then {
while {true} Do {
    WaitUntil {typeOf (vehicle player) IsEqualTo "C_Quadbike_01_F" && (Driver (vehicle player) == player)};
	_AcTurbo = player addAction ["<t color = '#40FF00'>Turbo</t>", "RJM\Scripts\Turbo\vel.sqf"];
	WaitUntil {(typeOf (vehicle player) != "C_Quadbike_01_F") || (Driver (vehicle player) != player)};
	player removeAction _AcTurbo; 
};
};