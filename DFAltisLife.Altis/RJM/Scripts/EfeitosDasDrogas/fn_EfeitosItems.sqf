/*
    Author: RobérioJR
*/

_item = _this Select 0;

closeDialog 0; //Fechar Inventário

[21] Spawn RJM_fnc_DelayRJ;

switch (true) do {
    case (_item IsEqualTo 'marijuana'):{ [] spawn RJM_fnc_Maconha; };
	case (_item IsEqualTo 'cocaineProcessed'):{ [] spawn RJM_fnc_Cocaina; };
	case (_item IsEqualTo 'tabacoProcessed'):{ [] spawn RJM_fnc_Cigarro; };
	case (_item IsEqualTo 'lsdProcessed'):{ [] spawn RJM_fnc_LSD; };
	case (_item IsEqualTo 'ecstasyProcessed'):{ [] spawn RJM_fnc_Ecstasy; };
	case (_item IsEqualTo 'metanfetaminaProcessed'):{ [] spawn RJM_fnc_Metafetamina; };
	case (_item IsEqualTo 'loloProcessed'):{ [] spawn RJM_fnc_Lolo; };
	case (_item IsEqualTo 'crackProcessed'): { [] spawn RJM_fnc_Crack; };
	case (_item IsEqualTo 'heroinProcessed'): { [] spawn RJM_fnc_Heroina; };
	Default {Hint 'Carai Borracha!';};
};
