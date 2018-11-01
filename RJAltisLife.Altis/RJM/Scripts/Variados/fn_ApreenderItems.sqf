/*
	
	Author: RobérioJR
	
*/
_Items = nearestObjects [player,["weaponholder"],3];
_Items = _Items + nearestObjects [player,["GroundWeaponHolder"],3];
_Items = _Items + nearestObjects [player,["WeaponHolderSimulated"],3];
_Aprendidos = 0;
for "_i" from 0 to count _Items - 1 do
{
	_Aprendidos = _Aprendidos + 1;
	deleteVehicle (_Items select _i);
};

titleText[format["Apreendido %1 Objetos, Eles Foram Colocados Em Evidência.", _Aprendidos],"PLAIN"];