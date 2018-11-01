#include "..\..\..\script_macros.hpp"
/*

  Author: Casperento
  <3
  
*/
disableSerialization;
if !(createDialog "RJ_TermosCond") exitWith {diag_log "Erro Na Função De Termos De Condições!!";};

private _arrRules = LIFE_SETTINGS(getArray,"rj_TermosCondMenu");
private _lstRules = CONTROL(66669,4693);
private _rule = "";
{_rule = _rule + "<t size='0.5' color='#FF0000'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square'/></t>" + " " + "<t color='#ffffff'>"+ _x +"</t>"+"<br />";} forEach _arrRules;
_lstRules ctrlSetStructuredText (parseText _rule);

private _yLstReg = (ctrlPosition _lstRules) select 1;
private _hLstReg = ctrlTextHeight _lstRules;
_lstRules ctrlSetPosition [(ctrlPosition _lstRules) select 0, _yLstReg, (ctrlPosition _lstRules) select 2, _hLstReg];
_lstRules ctrlCommit 0;