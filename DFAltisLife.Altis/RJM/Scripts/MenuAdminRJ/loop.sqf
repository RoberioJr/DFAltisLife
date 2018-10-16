
while {true} do
{
    waitUntil {alive vehicle player};
    //[] execVM "RJM\Scripts\MenuAdminRJ\admins.sqf";
	if ((getPlayerUID player) in RJ_Administradores) then {
        [] execVM "RJM\Scripts\MenuAdminRJ\VeiculoSpawn\iniciar.sqf"; 
    };
    waitUntil {!alive player};
};