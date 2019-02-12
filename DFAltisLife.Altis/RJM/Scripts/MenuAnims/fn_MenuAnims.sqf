/*

    Author: RobérioJR

*/

private["_display", "_list"];

disableSerialization;

waitUntil {!isNull(findDisplay 2900)};

If (Vehicle Player != Player) ExitWith { Hint "Saia Do Veiculo Para Fazer Gestos!"; closeDialog 0; };

_display = findDisplay 2900;
_list = _display displayCtrl 2902;

lbClear _list; 
{
  _list lbAdd format["%1", _x select 0];
  _list lbSetdata[(lbSize _list) - 1, str(_x select 1)];
} foreach RJ_MenuAnims;