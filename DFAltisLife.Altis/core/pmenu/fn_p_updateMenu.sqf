#include "..\..\script_macros.hpp"
/*
    
	Author: RobérioJr
	
*/

[] spawn the_programmer_iphone_fnc_updateInventaire;

private _mode = param [0,0,[0]];

If (_mode IsEqualTo 1) Then {
    _display = findDisplay 602;
    _inv = _display displayCtrl 10009;
	_listjog = _display displayCtrl 10008;

	lbClear _inv;
	lbClear _listjog;

	_near_units = [];
	{ if (player distance _x < 10) then {_near_units pushBack _x}; } forEach playableUnits;
	{
		if (!isNull _x && alive _x && player distance _x < 10 && !(_x isEqualTo player)) then {
			_listjog lbAdd format ["%1 - %2",_x getVariable ["realname",name _x], side _x];
			_listjog lbSetData [(lbSize _listjog)-1,str(_x)];
		};
	} forEach _near_units;

	ctrlSetText[10004,format ["Peso: %1 / %2", life_carryWeight, life_maxWeight]];

	{
		if (ITEM_VALUE(configName _x) > 0) then {
			_inv lbAdd format ["%2 [x%1]",ITEM_VALUE(configName _x),localize (getText(_x >> "displayName"))];
			_inv lbSetData [(lbSize _inv)-1,configName _x];
			_icon = M_CONFIG(getText,"VirtualItems",configName _x,"icon");
			if (!(_icon isEqualTo "")) then {
				_inv lbSetPicture [(lbSize _inv)-1,_icon];
			};
		};
	} forEach ("true" configClasses (missionConfigFile >> "VirtualItems"));

};