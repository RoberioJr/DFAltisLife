/*	
.----.    .-..-.   .-.    .----. .---. .----. .-..----.  .---.  .----.
| {}  }.-.| ||  `.'  |   { {__  /  ___}| {}  }| || {}  }{_   _}{ {__  
| .-. \| {} || |\ /| |   .-._} }\     }| .-. \| || .--'   | |  .-._} }
`-' `-'`----'`-' ` `-'   `----'  `---' `-' `-'`-'`-'      `-'  `----' 
Script by: Marvinn
*/

private["_ferido", "_iniciarCirurgia","_obj"];
_ferido = _this select 0;
_iniciarCirurgia = _this select 1;
_obj = _this select 2;
while(_iniciarCirurgia) do {
if ((_obj distance _ferido) < 11) then {
        disableSerialization;
        "Cirurgia" cutRsc ["life_progress","PLAIN"];
        _ui = uiNameSpace getVariable "life_progress";
        _progress = _ui displayCtrl 38201;
        _pgText = _ui displayCtrl 38202;
        _pgText ctrlSetText format["Efetuando Cirurgia (1%1)...","%"];
        _progress progressSetPosition 0.01;
        _cP = 0.01;
        while (_iniciarCirurgia){
		sleep 0.7;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Efetuando Cirurgia (%1%2)...",round(_cP * 100),"%"];
        if (_cP >= 1) exitWith {detach _obj; hint "Cirurgia concluída com Sucesso!";};
    };
     };
};