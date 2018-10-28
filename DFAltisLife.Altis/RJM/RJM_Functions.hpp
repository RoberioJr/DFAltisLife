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
		class ApreenderItems {};
	};		
	
	class Assaltos {
	    file = "RJM\Scripts\Assaltos";
		class pAssalto {};
		class sAssaltoMSG {};
		class roubarAgencia {};
		class roubarLoterica {};
		class VarAssaltoPub {};
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
	
	class Bomba {
		file = "RJM\Scripts\Items\Bomba";
		class Bomba {};
		class SliderBomba {};
		class ConfigurarBomba {};
	};

	class Medicinal {
		file = "RJM\Scripts\Items\Medicinal";
		class UsarAnalgesico {};
		class UsarKitMedico {};
	};
	
	class Rastreador {
		file = "RJM\Scripts\Items\Rastreador";
		class IniciarRastreamento {};
		class Rastreando {};
	};
	
	class Estrupo {
		file = "RJM\Scripts\Items\Estrupo";
		class CUArrombado {};
		class ArrombarCU {};
	};
	
	class TermosCond {
		file = "RJM\Scripts\TermosCond";
	    class AbrirTermosECond {}; 
        class AceitarTermos {}; 
        class DiscordarTermos {}; 
	};
	
	class MenuAnims {
		file = "RJM\Scripts\MenuAnims";
		class MenuAnims {};
	};
	
	class AutoSave {
	    file = "RJM\Scripts\AutoSave";
		class autoSaveInv {};
	};
	
	class Administrador {
		file = "RJM\Scripts\MenuAdminRJ";
		class ModoAdmin {};
	};
	
	class Notificar {
		file = "RJM\Scripts\Notificar";
		class createNotification {};
		class NotificarADM {};
	};
	
	class Cirurgia {
		file = "RJM\Scripts\Cirurgia";
		class EventMaca {};
		class initCirurgia {};
};

#include "Scripts\MenuAdminRJ\VAS\cfgfunctions.hpp"     //Menu De Equipamento ADM
