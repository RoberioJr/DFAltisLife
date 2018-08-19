/*

    Author: RobérioJR
	|10/08/18|

*/

Private ['_MrkSpawn'];

if (!Alive Player) exitWith {};
if ((Vehicle Player) != Player) exitWith {};

switch (PlayerSide) do {
    case West: { _MrkSpawn = SpawnAzul; };
	case East: { _MrkSpawn = SpawnVermelho; };
	case Independent: { _MrkSpawn = SpawnVerde; };
};

[] spawn { 
    player AllowDamage False;
    sleep 4;
	player AllowDamage True;
};

  player setPos (GetMarkerPos _MrkSpawn);
  
 if !(PrimeiroRespawn) Then { PrimeiroRespawn = true; (findDisplay 46) displayAddEventHandler ["KeyDown", {_this call RJ_fnc_KeyHandler}]; };