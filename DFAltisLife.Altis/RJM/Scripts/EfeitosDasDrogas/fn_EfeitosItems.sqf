/*
    Author: RobérioJR
*/

_item = _this Select 0;

closeDialog 0; //Fechar Inventário

[21] Spawn RJM_fnc_DelayRJ;

switch (true) do {
    case (_item IsEqualTo 'marijuana'):{ [] spawn RJM_fnc_Maconha; };
	case (_item IsEqualTo 'tabacoProcessed'):{ [] spawn RJM_fnc_Cigarro; };
	Default {Hint 'Carai Borracha!';};
};
