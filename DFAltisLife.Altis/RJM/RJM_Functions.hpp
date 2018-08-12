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
		class roubarJoalheria {}
		class FpsBoost {};
	};		
	
	class Assaltos {
	    file = "RJM\Scripts\Assaltos";
		class pAssalto {};
		class sAssaltoMSG {};
	};
	
	class AutoSave {
	    file = "RJM\Scripts\AutoSave";
		class autoSaveInv {};
	};
};

#include "Scripts\MenuAdminRJ\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM
//#include "Logo\rj_logofunc.h"                   //Marca D'Agua Com Logo
