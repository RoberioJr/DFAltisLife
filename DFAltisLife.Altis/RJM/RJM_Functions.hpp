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
		class Musica3D {};
		class Musica {};
		class UnidadesPerto {};
		class Jogadores {};
		class Notifi {};
		class Hospital {};
		class Volume {};
		class IconesMap {};
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
		class DelayRJ {};
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
		class Morfina {};
		class Heroina {};
	};
	
	class AutoSave {
	    file = "RJM\Scripts\AutoSave";
		class autoSaveInv {};
	};
};

#include "Scripts\MenuAdminRJ\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM
//#include "Logo\rj_logofunc.h"                           //Marca D'Agua Com Logo
