/*
    Author: RobérioJR
*/

_item = param [0,0,[0]];

closeDialog 0; //Fechar Inventário

switch (_item) do {
    case (_item IsEqualTo 'marijuana'):{ [] spawn RJM_fnc_Maconha; };
	case (_item IsEqualTo 'cocaineProcessed'):{ [] spawn RJM_fnc_Cocaina; };
	case (_item IsEqualTo 'tabacoProcessed'):{ [] spawn RJM_fnc_Cigarro; };
	case (_item IsEqualTo 'lsdProcessed'):{ [] spawn RJM_fnc_LSD; };
	case (_item IsEqualTo 'ecstasyProcessed'):{ [] spawn RJM_fnc_Ecstasy; };
	case (_item IsEqualTo 'metanfetaminaProcessed'):{ [] spawn RJM_fnc_Metafetamina; };
	case (_item IsEqualTo 'loloProcessed'):{ [] spawn RJM_fnc_Lolo; };
	case (_item IsEqualTo 'morfinaProcessed'): { [] spawn RJM_fnc_Morfina; };
	Default {Hint 'Carai Borracha!';};
};
