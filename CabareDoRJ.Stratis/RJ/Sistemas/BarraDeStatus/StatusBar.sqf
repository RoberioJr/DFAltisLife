
waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "osefStatusBar2" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar2","PLAIN"];
[] spawn {
uiSleep 3;
 while {true} do
 {
 uiSleep 1;
 if(isNull ((uiNamespace getVariable "osefStatusBar2")displayCtrl 10713)) then ///*55554*/
 {
 diag_log "statusbar is null create";
 disableSerialization;
 _rscLayer = "osefStatusBar2" call BIS_fnc_rscLayer;
 _rscLayer cutRsc["osefStatusBar2","PLAIN"];
 };
 
//Setar Variaveis e Valores das Mesmas
_EastplayHUD = east countSide playableUnits; //1
_WestplayHUD = west countSide playableUnits; //2
_IndepplayHUD = independent countSide playableUnits; //3
_damage = round ((1 - (damage player)) * 100); //4
_FpsHud = round (diag_fps); //5
((uiNamespace getVariable "osefStatusBar2")displayCtrl 10713)ctrlSetStructuredText parseText
 format["<t shadow='1' shadowColor='#000000'>
 <img size='1.2' shadowColor='#000000' image='RJ\Sistemas\BarraDeStatus\ImagesStatusBar\vermelho.paa'/>%1 
 <img size='1.2' shadowColor='#000000' image='RJ\Sistemas\BarraDeStatus\ImagesStatusBar\azul.paa'/>%2 
 <img size='1.2' shadowColor='#000000' image='RJ\Sistemas\BarraDeStatus\ImagesStatusBar\verde.paa'/>%3 
 <img size='1.4' shadowColor='#000000' image='RJ\Sistemas\BarraDeStatus\ImagesStatusBar\health.paa'/>%4 
 <img size='1.3' shadowColor='#000000' image='RJ\Sistemas\BarraDeStatus\ImagesStatusBar\fps.paa'/>%5 
 </t>",_EastplayHUD,_WestplayHUD,_IndepplayHUD, _damage, _FpsHud];
 }; 
};

