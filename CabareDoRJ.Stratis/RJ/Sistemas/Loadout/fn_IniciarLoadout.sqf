/*

    Author: RobérioJR
	|07/08/18|

*/


[] call RJ_fnc_LimparJogador;
TerminouDeFazerLoadout = False;
if (InicializLoadoutsCheck) then {
    [] spawn {
   InicializLoadoutsCheck = false;
    [missionNamespace, "arsenalOpened", {
        TerminouDeFazerLoadout = False;
	    //disableSerialization;
	    //_display = _this select 0;
	    //(_display displayCtrl 44150) ctrlRemoveAllEventHandlers "buttonclick";
	    //(_display displayCtrl 44150) ctrlEnable false;
	    //_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29]) then {true}"];
	    }] call BIS_fnc_addScriptedEventHandler;
	    
		[missionNamespace, "arsenalClosed", {
		    TerminouDeFazerLoadout = True;
		    [] call RJ_fnc_ChecarLoadout;
	    }] call BIS_fnc_addScriptedEventHandler;
        
		while {True} do {
            sleep 121;
	        [] call RJ_fnc_ChecarLoadout;
        };
    };
};
_OBJ = "Box_East_Ammo_F";
["Open", _OBJ] call BIS_fnc_arsenal;

    // Remover Itens Do Arsenal 
	[_OBJ,[true],true] call BIS_fnc_removeVirtualMagazineCargo;
	[_OBJ,[true],true] call BIS_fnc_removeVirtualBackpackCargo;
	[_OBJ,[true],true] call BIS_fnc_removeVirtualItemCargo;
	[_OBJ,[true],true] call BIS_fnc_removeVirtualWeaponCargo;
	
  // Adicionando Items Permitidos 
 [_OBJ,Armas,true] call BIS_fnc_addVirtualWeaponCargo;
 [_OBJ,Mochilas,true] call BIS_fnc_addVirtualBackpackCargo;
 [_OBJ,Pentes,true] call BIS_fnc_addVirtualMagazineCargo;
 [_OBJ,Itens,true] call BIS_fnc_addVirtualItemCargo;

 [] call RJ_fnc_CaixaPreta;