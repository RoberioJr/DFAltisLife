/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/

class RJM_Scripts {
	tag = "RJM";

    class Funcoes {
		file = "RJM\Fnc";
		class UnidadesPerto {};
		class Jogadores {};
		class Hospital {};
		class IconesMap {};
		class DelayRJ {};
		class Notificar {};
	};

    class Variados {
        file = "RJM\Scripts\Variados";
		class Cor {};
		class EventHandlerCinto {};
		class Gaslacrimo {};
		class Msg {};
		class Marcador {};
		class LoopSide {};
		class RemoverNeblina {};
		class FpsBoost {};
		class AbrirPorta {};
	};		
	
	class Assaltos {
	    file = "RJM\Scripts\Assaltos";
		class pAssalto {};
		class sAssaltoMSG {};
		class roubarAgencia {};
		class roubarLoterica {};
	};
	
	class EfeitosDrogas {
		file = "RJM\Scripts\EfeitosDasDrogas";
		class EfeitosItems {};
		class Maconha {};
		class Cocaina {};
		class LSD {};
		class Cigarro {};
		class Metafetamina {};
		class Ecstasy {}
		class Lolo {};
		class Crack {};
		class Heroina {};
	};
	
	class Dog {
		file = "RJM\Scripts\Dog";
		class Dog {};
		class DogImob {};
		class DogAtacar {};
		class DogLife {};
		class DogNome {};
	};
	
	class RadioRJ {
		file = "RJM\Scripts\Radio\fnc";
		class Menu {};
		class radio {};
		class radioSom {};
		class VolumeAlterar {};
		class Musica3D {};
		class Musica {};
		class Notifi {};
		class Volume {};
	};
	
	class AutoSave {
	    file = "RJM\Scripts\AutoSave";
		class autoSaveInv {};
	};
	
	class Notificar {
		file = "RJM\Scripts\Notificar";
		class createNotification {};
		class NotificarADM {};
	};
};

#include "Scripts\MenuAdminRJ\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM
//#include "Logo\rj_logofunc.h"                           //Marca D'Agua Com Logo
