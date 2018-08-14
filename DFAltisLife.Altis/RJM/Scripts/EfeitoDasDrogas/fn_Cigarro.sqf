/*
    Author: RobérioJR
*/

Private ['_msg','_smoke'];

_msg = 
[
    'Fumar e depois chupar uma bala é o mesmo que peidar e sentar no sabonete.',
	'Sempre fiz questão de nunca fumar quando estou a dormir.',
	'Pensar e fumar são duas operações idênticas que consistem em atirar pequenas nuvens ao vento.',
	'Fumar mata, amar destrói.',
	'Agora a cobra vai fumar',
	'Vou fumar paixão pra liberar amor, que é o que falta no planeta.',
	'Bora Fumar Batata',
	'Gosto tanto de fumar, Que se nao fumasse ia começar a fumar.',
	'Um bom fumador acende o cigarro sem fogo.',
	'O câncer é uma prova que estamos vivendo demais'
] Call BIS_fnc_SelectRandom;
 if ((Vehicle Player) != player) then { _msg = 
    [
        'Para quê beber e dirigir, se posso fumar e viajar?',
		'Se Usamos só 10% de nosso cerebro,para que serve os outros 90% se nao para queimar?'
    ] Call BIS_fnc_SelectRandom; 
 };

hint Format["%1",_msg];
_smoke = createVehicle ["SmokeS﻿hell", position player, [], 0, "NONE"];  
_smoke attachTo [player, [-0.03,0,0.7]];
uisleep 40;﻿
deleteVehicle _smoke;