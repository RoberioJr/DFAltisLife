/*  
    File: fn_autoMessages.sqf  
    Author: BenjaminSansNom  

    Description:  
    Auto messages in game every X seconds  
*/  
  
    // Add a line in this array to add a message  
	
    _messages = [  
        "Alguma Dúvida? Entre Em Nosso Discord:<br/> <t color='#e32828' size='1.5'>Discord.gg/wk8JaGa</t>", 
        "Nosso Site:<br/><t color='#e32828' size='1.5'>EM BREVE</t>",
        "Horarios De Restart:<br/> <t color='#e32828' size='1.5'>12:00 | 18:00 | 00:00 | 06:00</t>"		
    ];  

    _refreshTime = 920; // Time between each message (in seconds)  

    _i = 0;  
    while {true} do {  
        _count = count _messages;  
        _message = _messages select _i;  
        hint parseText format["<t color='#ffffff' size='2'>Distrito Federal</t><t color='#c45454' size='2'>AL</t><br/><br/><img shadown='false' size='6' image='textures\BannerP.paa'/><br/><br/>%1", _message];  
        sleep _refreshTime;  
        if (_i == (_count - 1)) then {  
            _i = 0;  
        } else {  
            _i = _i + 1;  
        };  
    };  