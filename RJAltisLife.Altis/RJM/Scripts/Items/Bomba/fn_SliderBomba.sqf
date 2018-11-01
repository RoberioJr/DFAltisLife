/*

    Author: RobérioJR

*/
Private ['_Menu','_Slider','_Info','_PosicaoSlider','_Tempo'];

_Menu = findDisplay 4020;

_Slider = _Menu DisplayCtrl 4023;
_Info = _Menu DisplayCtrl 4021;

_PosicaoSlider = SliderPosition _Slider;
_Tempo = round _PosicaoSlider;

_Info ctrlSetText Format["%1 Segundos",_Tempo];

//_TempoD = [_Tempo, "MM:SS"] call BIS_fnc_secondsToString;