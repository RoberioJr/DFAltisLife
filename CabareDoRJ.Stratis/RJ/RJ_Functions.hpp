/*

    Author: RobérioJR
	|07/08/18|

*/

class RJ_Scripts {
	tag = "RJ";

	class Functions {
	    file = "RJ\Fnc";
		class ENumeral {};
		class StrParaArray {};
		class PuloDoGato {};
		class KeyHandler {};
		class Marcador {};
		class Icons {};
		class Vel {};
		class AnimSync {};
		class say3D {};
		class SalvarProfile {};
		class AutoSave {};
	};
	
	class Actions {
		file = "RJ\Sistemas\Actions";
		class AoRespawnar {};
		class AoPegarItem {};
	};
	
	class Loadout {
		file = "RJ\Sistemas\Loadout";
		class LimparJogador {};
		class IniciarLoadout {};
		class ChecarLoadout {};
		class CaixaPreta {};
		class SpawnarJogador {};
	};
	
	class Economia {
		file = "RJ\Sistemas\Economia";
		class RecGrana {};
		class AdcSubGrana {};
		class Pagamento {};
	};
	
	class Dog {
		file = "RJ\Sistemas\Dog";
		class Dog {};
		class DogImob {};
		class DogAtacar {};
	};
};

#include "Sistemas\CHVD\CfgFunctions.hpp"
#include "Sistemas\Admin\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM