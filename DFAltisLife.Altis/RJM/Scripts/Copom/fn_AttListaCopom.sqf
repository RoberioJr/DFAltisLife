/*

    Author: RobérioJr

*/

_Nome = _This Select 0;
_Pos = _This Select 1;
_Jog = _This Select 2;

If ((IsNil "_Nome") || (IsNil "_Pos") || (IsNil "_Jog")) ExitWith {};
If (_Nome IsEqualTo "") ExitWith {};

 //life_med_calls pushBack [(name player),(getpos life_corpse),"I need a revive - automatic SOS message via telephone",servertime,"",player];
 life_med_calls pushBack [_Nome,_Pos,"I need a revive - automatic SOS message via telephone",servertime,"",_Jog];
 
 publicVariable "life_med_calls";