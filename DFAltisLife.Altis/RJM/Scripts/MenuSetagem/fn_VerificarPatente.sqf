/*

    Author: RobérioJr

*/

params["_jogador"];

If (IsNull _jogador) ExitWith {};

private _nivel = _jogador GetVariable ["RJ_Patente",0];
private _patente = "";


Switch (Side _jogador) Do {
    case west: {
	    If (_nivel in [1,2,3,4,5,6,7,8,9,10,11,12,13]) then { 
		    { _array = (_x Select 0); If ((_array Select 1) IsEqualTo _nivel) Then { _patente = (_array Select 0); }; } ForEach RJ_PatentesCFG;
		};
	};
	case independent: {
	    If (_nivel in [1,2,3,4,5,6,7,8]) Then {
		    { _array = (_x Select 2); If ((_array Select 1) IsEqualTo _nivel) Then { _patente = (_array Select 0); }; } ForEach RJ_PatentesCFG;
		};
		If (_nivel in [9,10,11,12,13,14,15,16]) Then {
		    { _array = (_x Select 3); If ((_array Select 1) IsEqualTo _nivel) Then { _patente = (_array Select 0); }; } ForEach RJ_PatentesCFG;
		};
	};
	case civilian: {
	    If (_nivel in [1,2,3,4,5,6,7,8,9,10,11,12,13]) Then {
		    { _array = (_x Select 4); If ((_array Select 1) IsEqualTo _nivel) Then { _patente = (_array Select 0); }; } ForEach RJ_PatentesCFG;
		};
	};
};
If (_patente IsEqualTo "") Then { _patente = "Civil"; };

_patente