
Private '_AcTurbo';
if !(PlayerSide IsEqualTo West) ExitWith {};
while {true} Do {
    WaitUntil {(Vehicle Player) IsEqualTo "C_Quadbike_01_F" && (Driver (vehicle player) == player)};
	_AcTurbo = player addAction ["<t color = '#40FF00'>Turbo</t>", "RJM\Scripts\Turbo\vel.sqf"];
	WaitUntil {(Vehicle Player) != "C_Quadbike_01_F" || (Driver (vehicle player) != player)};
	player removeAction _AcTurbo; 
};