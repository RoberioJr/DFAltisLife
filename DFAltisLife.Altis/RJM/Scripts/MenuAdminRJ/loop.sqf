

[] Spawn {
    WaitUntil {!Nil "RJ_Administradores"};
	Sleep 0.1;
    if ((getPlayerUID player) in RJ_Administradores) then {
        [] execVM "RJM\Scripts\MenuAdminRJ\VeiculoSpawn\iniciar.sqf"; 
    };
};
while {true} do
{
    waitUntil {alive vehicle player};
    //[] execVM "RJM\Scripts\MenuAdminRJ\admins.sqf";
    waitUntil {!alive player};
};