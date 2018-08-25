/*
 
    Author: RobérioJR
	Desc: Demorou Pra Caralho Mas Eu Consegui \o/ :) *-*...

*/

waitUntil {Alive Player};
WaitUntil {RJ_JogadorPronto};
waitUntil {!isNull (findDisplay 46)};

findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", 
	'  
	{
        _this select 0 drawIcon [
	    RJ_MISSAO_DIR + (_x select 1),
        [1,1,1,1],  
        getMarkerPos (_x select 0), 
        24,  
        24,  
        0, 
        (_x select 2), 
        1,  
        0.03,  
        "TahomaB",  
        "right"  
        ]  
	} ForEach RJ_MrkMapa;
	
	_this select 0 drawIcon [
	    RJ_MISSAO_DIR + "RJM\Recursos\Icones\BrasaoDF_P.paa",
        [1,1,1,1],  
        getPos player,
        24,  
        24,  
        getDir player, 
        "",
        1,  
        0.03,  
        "TahomaB",  
        "right"  
        ]  
    '	
];
