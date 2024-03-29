#include "..\..\..\script_macros.hpp"

waitUntil {!(isNull (findDisplay 46))};

//If ((GetPlayerUID player) IsEqualTo "76561198134612622") Then { WaitUntil {FpsBoostAtivado}; };

disableSerialization;
_rscLayer = "RJMStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["RJMStatusBar","PLAIN"];
[] spawn {
uiSleep 5;
 _colourDefault = parseText "#ADADAD"; //set your default colour here
 _colour100 = parseText "#33FF00";
 _colour90 = parseText "#33FF00";
 _colour80 = parseText "#33FF00";
 _colour70 = parseText "#33FF00";
 _colour60 = parseText "#66FF00";
 _colour50 = parseText "#CCFF00";
 _colour40 = parseText "#FFFF00";
 _colour30 = parseText "#FFFF00";
 _colour20 = parseText "#CC0000";
 _colour10 = parseText "#CC0000";
 _colour0 = parseText "#CC0000";
 _colourDead = parseText "#000000";
 _uid = getPlayerUID player;
while {true} do {
	uiSleep 2;
	
	if(isNull ((uiNamespace getVariable "RJMStatusBar")displayCtrl 10713)) then {
	    diag_log "Deu Um B.O Na Barra De Status, Vou Criar Essa Porra Denovo...";
	    disableSerialization;
	    _rscLayer = "RJMStatusBar" call BIS_fnc_rscLayer;
	    _rscLayer cutRsc["RJMStatusBar","PLAIN"];
    };
 
//Setar Variaveis e Valores das Mesmas
_TempoRestart = 14350 - serverTime; //21600 = 6horas
_CivplayHUD = civilian countSide playableUnits; //1
_WestplayHUD = west countSide playableUnits; //2
_IndepplayHUD = independent countSide playableUnits; //3
//_grid = mapGridPosition player; //4
_Dinheiro = [RJM_GRANA] call life_fnc_numberText;
_hunger = round(life_hunger); //7
_thirst = round(life_thirst); //8
_damage = round ((1 - (damage player)) * 100); //9
_FpsHud = round (diag_fps); //10
_UpTimeHUD = [_TempoRestart,"HH:MM:SS"] call BIS_fnc_secondsToString; //11
_players = (count playableUnits -1);

_colourHunger = _colourDefault;
switch true do {
	case(_hunger >= 100) : {_colourHunger = _colour70;};
	case((_hunger >= 90) && (_hunger < 100)) : {_colourHunger = _colour70;};
	case((_hunger >= 80) && (_hunger < 90)) : {_colourHunger = _colour70;};
	case((_hunger >= 70) && (_hunger < 80)) : {_colourHunger = _colour70;};
	case((_hunger >= 60) && (_hunger < 70)) : {_colourHunger = _colour60;};
	case((_hunger >= 50) && (_hunger < 60)) : {_colourHunger = _colour50;};
	case((_hunger >= 40) && (_hunger < 50)) : {_colourHunger = _colour40;};
	case((_hunger >= 30) && (_hunger < 40)) : {_colourHunger = _colour30;};
	case((_hunger >= 20) && (_hunger < 30)) : {_colourHunger = _colour20;};
	case((_hunger >= 10) && (_hunger < 20)) : {_colourHunger = _colour10;};
	case((_hunger >= 1) && (_hunger < 10)) : {_colourHunger = _colour0;};
	case(_hunger < 1) : {_colourHunger = _colourDead;};
};

_colourThirst = _colourDefault;
switch true do{
	case(_thirst >= 100) : {_colourThirst = _colour70;};
	case((_thirst >= 90) && (_thirst < 100)) : {_colourThirst = _colour70;};
	case((_thirst >= 80) && (_thirst < 90)) : {_colourThirst = _colour70;};
	case((_thirst >= 70) && (_thirst < 80)) : {_colourThirst = _colour70;};
	case((_thirst >= 60) && (_thirst < 70)) : {_colourThirst = _colour60;};
	case((_thirst >= 50) && (_thirst < 60)) : {_colourThirst = _colour50;};
	case((_thirst >= 40) && (_thirst < 50)) : {_colourThirst = _colour40;};
	case((_thirst >= 30) && (_thirst < 40)) : {_colourThirst = _colour30;};
	case((_thirst >= 20) && (_thirst < 30)) : {_colourThirst = _colour20;};
	case((_thirst >= 10) && (_thirst < 20)) : {_colourThirst = _colour10;};
	case((_thirst >= 1) && (_thirst < 10)) : {_colourThirst = _colour0;};
	case(_thirst < 1) : {_colourThirst = _colourDead;};
};

_colourDamage = _colourDefault;
switch true do {
	case(_damage >= 100) : {_colourDamage = _colour70;};
	case((_damage >= 90) && (_damage < 100)) : {_colourDamage = _colour70;};
	case((_damage >= 80) && (_damage < 90)) : {_colourDamage = _colour70;};
	case((_damage >= 70) && (_damage < 80)) : {_colourDamage = _colour70;};
	case((_damage >= 60) && (_damage < 70)) : {_colourDamage = _colour60;};
	case((_damage >= 50) && (_damage < 60)) : {_colourDamage = _colour50;};
	case((_damage >= 40) && (_damage < 50)) : {_colourDamage = _colour40;};
	case((_damage >= 30) && (_damage < 40)) : {_colourDamage = _colour30;};
	case((_damage >= 20) && (_damage < 30)) : {_colourDamage = _colour20;};
	case((_damage >= 10) && (_damage < 20)) : {_colourDamage = _colour10;};
	case((_damage >= 1) && (_damage < 10)) : {_colourDamage = _colour0;};
	case(_damage < 1) : {_colourDamage = _colourDead;};
};

_colourFps = _colourDefault;
switch true do {
	case(_FpsHud >= 45) : {_colourFps = _colour70;};
	case((_FpsHud >= 30) && (_FpsHud < 45)) : {_colourFps = _colour30;};
	case((_FpsHud >= 1) && (_FpsHud < 30)) : {_colourFps = _colour0;};
	case(_FpsHud < 1) : {_colourFps = _colourDead;};
};
((uiNamespace getVariable "RJMStatusBar")displayCtrl 10713)ctrlSetStructuredText parseText
 format["<t shadow='1' shadowColor='#000000'>
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\civ.paa'/><t font='LCD14'>%1<t> 
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\cop.paa'/><t font='LCD14'>%2<t>  
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\med.paa'/><t font='LCD14'>%3<t>  
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\Dinheiro.paa'/><t font='LCD14'> %4<t>  
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\hunger.paa'/><t font='LCD14' color='%6'> %5</t> 
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\thirst.paa'/><t font='LCD14' color='%8'>%7</t> 
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\health.paa'/><t font='LCD14' color='%10'>%9</t> 
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\fps.paa'/><t font='LCD14' color='%12'> %11</t> 
 <img size='1.1' shadowColor='#000000' image='RJM\Recursos\Icones\uptime.paa'/><t font='LCD14'> %13<t> 
 </t>",_CivplayHUD,_WestplayHUD,_IndepplayHUD,_Dinheiro,_hunger,_colourHunger,_thirst,_colourThirst,_damage,_colourDamage,_FpsHud,_colourFps,_UpTimeHUD,_colourDefault];
 }; 
};

