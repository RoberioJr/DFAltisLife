/*

    Author: RobérioJr

*/

_Marcador = _This Select 0;
_Tempo = _This Select 1;

If (_Marcador IsEqualTo "" || IsNil "_Marcador") ExitWith {};
If (_Tempo < 0 || IsNil "_Tempo") ExitWith {};

Sleep _Tempo;
DeleteMarker (Format['%1',_Marcador]);

