/*

    Author: RobérioJR

*/

If (!IsServer) ExitWith {};

_TipoDeAssalto = _This Select 0;
_TempoDeEspera = _This Select 1;

Switch (_TipoDeAssalto) Do {
    Case 1: { //Posto
	    [] Spawn {
	        LiberadoRoubarPosto = False;
		    PublicVariable "LiberadoRoubarPosto";
			Sleep _TempoDeEspera;
			LiberadoRoubarPosto = True;
		    PublicVariable "LiberadoRoubarPosto";
		};
	};
	Case 2: { //Loterica
	    [] Spawn {
	        LiberadoRoubarLoterica = False;
            PublicVariable "LiberadoRoubarLoterica";
			Sleep _TempoDeEspera;
			LiberadoRoubarLoterica = True;
            PublicVariable "LiberadoRoubarLoterica";
		};
	};
	Case 3: { //Agencia
	    [] Spawn {
	        LiberadoRoubarAgencia = False;
		    PublicVariable "LiberadoRoubarAgencia";
			Sleep _TempoDeEspera;
			LiberadoRoubarAgencia = True;
		    PublicVariable "LiberadoRoubarAgencia";
		};
	};
};



