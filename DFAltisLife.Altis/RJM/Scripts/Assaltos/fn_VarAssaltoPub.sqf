/*

    Author: RobérioJR

*/
/*
Params [
    ["_TipoDeAssalto",0,[0]],
    ["_TempoDeEspera",1,[0]]
];*/

//If (!IsServer) ExitWith {};

_TipoDeAssalto = _This Select 0;
_TempoDeEspera = _This Select 1;

Switch (_TipoDeAssalto) Do {
    Case 1: { //Posto
	    [_TempoDeEspera] Spawn {
	        LiberadoRoubarPosto = False;
		    PublicVariable "LiberadoRoubarPosto";
			Sleep (_This Select 0);
			LiberadoRoubarPosto = True;
		    PublicVariable "LiberadoRoubarPosto";
		};
	};
	Case 2: { //Loterica
	    [_TempoDeEspera] Spawn {
	        LiberadoRoubarLoterica = False;
            PublicVariable "LiberadoRoubarLoterica";
			Sleep (_This Select 0);
			LiberadoRoubarLoterica = True;
            PublicVariable "LiberadoRoubarLoterica";
		};
	};
	Case 3: { //Agencia
	    [_TempoDeEspera] Spawn {
	        LiberadoRoubarAgencia = False;
		    PublicVariable "LiberadoRoubarAgencia";
			Sleep (_This Select 0);
			LiberadoRoubarAgencia = True;
		    PublicVariable "LiberadoRoubarAgencia";
		};
	};
	Case 4: { //Reserva
	    [_TempoDeEspera] Spawn {
	        LiberadoRoubarReserva = False;
		    PublicVariable "LiberadoRoubarReserva";
			//Sleep (_This Select 0);
			//LiberadoRoubarReserva = True;
            //PublicVariable "LiberadoRoubarReserva";
		};
	};
};



