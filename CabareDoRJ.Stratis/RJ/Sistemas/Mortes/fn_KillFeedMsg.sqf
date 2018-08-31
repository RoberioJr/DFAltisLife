

Params [
    ["_Mensagem","",[""]]
];

If (_Mensagem IsEqualTo "") ExitWith {};

SystemChat Format ["%1"_Mensagem];