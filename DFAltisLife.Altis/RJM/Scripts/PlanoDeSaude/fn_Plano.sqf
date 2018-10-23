private["_Valor", "_planoJogador"];
_Valor = 85000;
_planoJogador = player getVariable "JogadorTemUmPlano";
if (85000 > CASH) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
if (_planoJogador) exitWith { Hint 'Você já tem um plano de saúde'; };

if !(_planoJogador) then {
    Hint Format['%1, Você comprou um Plano de Saúde por R$%2!',Name Player,_Valor];
    CASH = CASH - _Valor;
	JogadorTemUmPlano = true;
    [] call RJM_fnc_ActionPlano;
};