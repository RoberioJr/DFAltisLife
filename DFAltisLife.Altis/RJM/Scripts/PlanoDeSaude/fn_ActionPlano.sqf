private["_alvo", "_mensagem"];

_alvo = player;
_mensagem = _this select 1;

if(isNull player) exitWith{};
if( !(alive player) ) exitWith{};

if(JogadorTemUmPlano) then {
    _mensagem = format["<img size='10' color='#FFFFFF' image='complano.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>Plano de Saúde</t>", name player];
} else {
    _mensagem = format["<img size='10' color='#FFFFFF' image='semplano.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>Plano de Saúde</t>", name player];
};

[_mensagem] spawn {
     _mensagem = _this select 0;
	 hintSilent parseText _mensagem;
};