/*
    Author: RobérioJR
*/

if (!Alive Player) ExitWith {};

if ([false,'ossodog',1] call life_fnc_handleInv) then {
    RJ_DogOcupado = true; 
    player playAction "PlayerCrouch";
    player setBehaviour "SAFE";
    disableUserInput true; 
    dog AllowDamage false;
    dog playMove "Dog_sit"; 
    dog attachto [player,[0.17,0.45,0.03]];  
    dog SetDir 180;
    sleep 4; 
    disableUserInput false;
    detach dog; 
    Sleep 3;
    dog AllowDamage true;
    RJ_DogOcupado = false;
    RJ_FomeDog = 100;
	SystemChat Format ['%1, Você Alimentou O Seu Cão',Name player];
};
 
 