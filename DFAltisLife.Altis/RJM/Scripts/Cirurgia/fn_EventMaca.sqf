/*	
.----.    .-..-.   .-.    .----. .---. .----. .-..----.  .---.  .----.
| {}  }.-.| ||  `.'  |   { {__  /  ___}| {}  }| || {}  }{_   _}{ {__  
| .-. \| {} || |\ /| |   .-._} }\     }| .-. \| || .--'   | |  .-._} }
`-' `-'`----'`-' ` `-'   `----'  `---' `-' `-'`-'`-'      `-'  `----' 
Script by: Marvinn
*/

params["_target", "_caller", "_actionId", "_arguments"];
_target = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;
_arguments = _this select 3;
_obj = nearestObject [player, "Land_Stretcher_01_F"];
_fe = nearestObjects [player, ["C_man_1"], 5];
_ferido = _fe select 0;
_ferido switchMove "AinjPpneMstpSnonWnonDnon";
_ferido attachTo [_obj, [0, 0.20, 0.25] ];
_iniciarCirurgia = false;
_feridoCirurgicamente = _ferido getVariable "precisaDeCirurgia";

while {_feridoCirurgicamente} do {
      _caller addAction ["Iniciar Cirurgia", {_iniciarCirurgia = true;}];
	  
	  if(_iniciarCirurgia isEqualTo true) then {
	       [_ferido, _iniciarCirurgia, _feridoCirurgicamente, _obj] spawn RJM_fnc_initCirurgia;
	  };
	  
      if (!(_feridoCirurgicamente)) then {
          _caller removeAction _actionId;
   };
};