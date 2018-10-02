while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "RJM\Scripts\MenuAdminRJ\admins.sqf";

  waitUntil {!alive player};
};