disableSerialization;  
if (count life_bar_placey >= RJ_LimiteColocaveis) exitWith { hint "Você Ja Colocou Muitos Objetos!"; };  
_display = findDisplay 20000;  
_placeables = _display displayCtrl 20001;  
_className = lbData[20001, lbCurSel (20001)];  
closeDialog 0;  
life_barrier_active = true;  
_allowMoveDistance = 50;  
_objeto = _className createVehicle (position player);  
life_barrier_activeObj = _objeto;  
_attachPos = [0, 3, 0.5];  
_objeto attachTo[player, _attachPos];  
_objeto enableSimulationGlobal false;  
_originalPos = position _objeto;  
_playerOriginalPos = position player;  

waitUntil{  
	if (life_barrier_activeObj distance _originalPos > _allowMoveDistance || player distance _playerOriginalPos > _allowMoveDistance) then {  
		[true] call RJM_fnc_ColocaveisCancelar;  
    };  
    sleep 1;  
    !life_barrier_active;  
};  