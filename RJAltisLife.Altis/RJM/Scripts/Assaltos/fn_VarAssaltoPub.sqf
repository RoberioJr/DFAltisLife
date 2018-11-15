/*

    Author: RobérioJR

*/
Params [
    ["_TipoDeAssalto",0,[0]],
    ["_TempoDeEspera",1,[0]]
];

If (!IsServer) ExitWith {};

//_TipoDeAssalto = _This Select 0;
//_TempoDeEspera = _This Select 1;

Switch (_TipoDeAssalto) Do {
    Case 1: { //Posto
	    [_TempoDeEspera] Spawn {
		    _TempoDeEspera = _This Select 0;
	        LiberadoRoubarPosto = False;
		    PublicVariable "LiberadoRoubarPosto";
			Sleep _TempoDeEspera;
			LiberadoRoubarPosto = True;
		    PublicVariable "LiberadoRoubarPosto";
		};
	};
	Case 2: { //Loterica
	    [_TempoDeEspera] Spawn {
		    _TempoDeEspera = _This Select 0;
	        LiberadoRoubarLoterica = False;
            PublicVariable "LiberadoRoubarLoterica";
			Sleep _TempoDeEspera;
			LiberadoRoubarLoterica = True;
            PublicVariable "LiberadoRoubarLoterica";
		};
	};
	Case 3: { //Agencia
	    [_TempoDeEspera] Spawn {
		    _TempoDeEspera = _This Select 0;
	        LiberadoRoubarAgencia = False;
		    PublicVariable "LiberadoRoubarAgencia";
			Sleep _TempoDeEspera;
			LiberadoRoubarAgencia = True;
		    PublicVariable "LiberadoRoubarAgencia";
		};
	};
};



