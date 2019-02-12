/*
    File: fn_setupEVH.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master eventhandler file
*/
player addEventHandler ["Killed", {_this call life_fnc_onPlayerKilled}];
player addEventHandler ["HandleDamage", {_this call life_fnc_handleDamage}];
player addEventHandler ["Respawn", {_this call life_fnc_onPlayerRespawn}];
player addEventHandler ["Take", {_this call life_fnc_onTakeItem}];
player addEventHandler ["Fired", {_this call life_fnc_onFired}];
player addEventHandler ["InventoryClosed", {_this call life_fnc_inventoryClosed}];
player addEventHandler ["InventoryOpened", {_this call life_fnc_inventoryOpened}];
player addEventHandler ["HandleRating", {0}];

    /* AntiDupe DESATIVADO - ITEMS SOMEM AO PEGAR DE DENTRO DO VEICULO */
/*
player addEventHandler["Put", {if (vehicle player != player) then {AntiDupeItems = [];player setVariable ["AntiDupeItems",true,true];AntiDupeItems = getUnitLoadout player;};}];
player addEventHandler["Take", {if (player getVariable "AntiDupeItems") then {AntiDupeItems = []; AntiDupeItems = getUnitLoadout player;};}];
player addEventHandler["GetOutMan", {if (player getVariable "AntiDupeItems") then {player setUnitLoadout AntiDupeItems;AntiDupeItems = [];player setVariable ["AntiDupeItems",false,true];};}];
*/

addMissionEventHandler ["Map", {_this call life_fnc_checkMap}];
