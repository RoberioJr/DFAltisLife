/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
//Uso: [MARCADOR] call RJM_fnc_Hospital;
//Cria Um Hospital No Marcador Definido

private ["_hospital","_variavel"];
_marcador = param [0,0,[0]];

    //_marcador = 'hospital_rj';
	_hospital = createVehicle ["Land_Hospital_main_F", [0,0,0], [], 0, "NONE"];
    _hospital setDir (markerDir _marcador);
    _hospital setPosATL (getMarkerPos _marcador);
    _variavel = createVehicle ["Land_Hospital_side1_F", [0,0,0], [], 0, "NONE"];
    _variavel attachTo [_hospital, [4.69775,32.6045,-0.1125]];
    detach _variavel;
    _variavel = createVehicle ["Land_Hospital_side2_F", [0,0,0], [], 0, "NONE"];
    _variavel attachTo [_hospital, [-28.0336,-10.0317,0.0889387]];
    detach _variavel;
	