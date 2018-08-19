
waitUntil {TerminouDeFazerLoadout};
Marcadores = [['coca','icone\morango.paa'],['coca1','icone\banana.paa'],['coca2','icone\maca.paa']];

findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", 
    '  
	{
        _this select 0 drawIcon [
	    MISSION_ROOT + (_x select 1),
        [1,1,1,1],  
        getMarkerPos (_x select 0), 
        24,  
        24,  
        0, 
        "", 
        1,  
        0.03,  
        "TahomaB",  
        "right"  
        ]  
	} ForEach Marcadores;
    '
];


/*
Marcadores = [['coca','icone\morango.paa'],['coca1','icone\banana.paa'],['coca2','icone\maca.paa']];

findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", 
    '  
	{
        _this select 0 drawIcon [
	    MISSION_ROOT + "icone\morango.paa",
        [1,0,0,1],  
        getMarkerPos _x, 
        24,  
        24,  
        0, 
        "", 
        1,  
        0.03,  
        "TahomaB",  
        "right"  
        ]  
	} ForEach Marcadores;
    '
];
*/
/*
findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", 
    {  
        _this select 0 drawIcon [
	    MISSION_ROOT + 'icone\morango.paa',  //Textura
        [1,0,0,1],  
        getMarkerPos 'coca',  //Posição
        24,  
        24,  
        0, //Direção 
        '', // Nome Do Marcador
        1,  
        0.03,  
        'TahomaB',  
        'right'  
        ]  
    }
];
*/


/*
findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", "  
 _this select 0 drawIcon [ MISSION_ROOT +  
  'icone\morango.paa',  
  [1,0,0,1],  
  getPos player,  
  24,  
  24,  
  getDir player,  
  '',  
  1,  
  0.03,  
  'TahomaB',  
  'right'  
 ]  
"];
*/
