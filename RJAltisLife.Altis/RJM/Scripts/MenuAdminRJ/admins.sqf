/*
/         Edit:RoberioJr
/         Description: Menu De Admin
*/

waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in RJ_Administradores) then {
    act = player addaction [("<t color=""#9400D3"">" + ("AdminRJ!") +"</t>"),"RJM\Scripts\MenuAdminRJ\tools.sqf","",5,false,true,"",""];
};
