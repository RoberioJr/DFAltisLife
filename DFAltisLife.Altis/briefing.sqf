waitUntil {!isServer && !isNull player && player isEqualTo player};
if (player diarySubjectExists "controls") exitWith {};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
TEXT HERE<br/><br/>
                "
        ]
    ];
*/


    player createDiaryRecord ["changelog",
        [
            "Server Change Log",
                "
This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.<br/><br/>
                "
        ]
    ];

        player createDiaryRecord ["serverrules",
        [
            "Exploits",
                "
Estas são consideradas explorações, e você não será chutado, mas banido. <br/> <br/>
1. Sair da prisão por qualquer outro método além de pagar fiança ou escapar por helicóptero. <br/>
2. Matar-se para sair do roleplay. Saindo de ser criticado, contido, preso, prisão, etc. Se o registro mostra que você foi preso, então você morreu, você será banido. Não pague fiança e mate-se para uma viagem fácil para casa. Caminha pelo teu preguiçoso. <br/>
3. Duping itens e / ou dinheiro. Se alguém lhe enviar uma quantidade de dinheiro inacessível no início do jogo, informe para um administrador IMEDIATAMENTE e transfira esse dinheiro para um administrador. Faça isso o mais rápido possível ou um administrador pode proibi-lo se eles o vejam sem questionar. <br/>
4. Usando itens claramente pirateados. Se um hacker entrar e gerar itens não obtidos, você pode ser banido por usar esses itens. Informe os itens para os administradores imediatamente e fique longe deles. <br/>
5. Abusando erros ou mecanismos de jogo para obter ganhos. Existe uma arma replicante em algum lugar? Informe-o e deixe-o em paz. Se um administrador apanha você abusando da falha, projete. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Cop Interaction",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Os civis podem ser presos por procurar em mochilas / veículos da polícia. Constantemente, isso resultará na sua remoção do servidor. <br/>
2. Os civis podem ser presos por seguir policiais no jogo, para dar sua posição. <br/>
3. Os civis ou rebeldes que tomam armas para matar policiais na cidade ou em outro lugar, sem motivo RP, serão considerados RDMing. Veja a seção RDMing. <br/>
4. Seguir e / ou perseguir policiais por longos períodos de tempo será considerado um briefing e / ou spam, e resultará na sua remoção do servidor. <br/>
5. Bloquear ativamente os policiais de fazer seus deveres pode levar a sua prisão. Constantemente, isso resultará na sua remoção do servidor. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Boats",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Repetidamente empurrando barcos sem permissão. <br/>
2. Empurrando um barco com a intenção de machucar ou matar alguém. Isso não é RP, é apenas uma falha na mecânica. <br/>
3. Funcionando corretamente sobre os nadadores / mergulhadores. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Aviation",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Apontando um helicóptero para qualquer coisa. Outros helicópteros, veículos, edifícios. <br/>
2. Voando abaixo de 150m pela cidade constantemente. Uma vez que é ilegal, mais do que isso, você correu o risco de entrar na cidade e, portanto, contra as regras do servidor. <br/>
3. Roubar helicópteros sem aviso prévio e tempo significativo para o motorista bloquear o veículo. Se eles aterrissem e fogem sem bloquear, bem, se eles simplesmente saem e você entra antes que eles tenham a chance de trancá-lo, não há. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Vehicles",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Executando as pessoas sobre (VRDM). Há acidentes e, em seguida, está saindo do seu caminho para fugir de alguém. <br/>
2. Propulsando-se na frente de veículos para se ferir / se machucar. <br/>
3. Recorrendo a outros veículos para causar uma explosão. <br/>
4. Constantemente tentando entrar em veículos que não pertencem a você, a fim de chatear o proprietário do veículo e não tentar RP. <br/>
5. Roubar um veículo apenas para quebrar ou destruí-lo. <br/>
6. Comprar vários veículos com a finalidade de fazer qualquer um dos itens acima. <br/>
7. O único motivo para atirar em um veículo seria desativá-lo e / ou disparar tiros de aviso em um cenário de role-play. Você não deve destruir deliberadamente veículos inimigos. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Communication Rules",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Chat lateral não pode ser usado para tocar música ou de outra forma micspam. <br/>
2. Spamming qualquer canal de bate-papo resultará na sua remoção. <br/>
4. Os canais Teamspeak são divididos em áreas por um motivo. Os policiais devem estar sempre nos canais do policial. <br/>
5. Os civis não podem estar em nenhum canal de policial no teamspeak para coletar informações sobre sua localização ou movimentos. Civs capturados fazendo isso serão removidos do canal. Os agressores repetidos podem ser chutados ou banidos tanto do jogo quanto do teamspeak. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Random Deathmatching (RDM)",
                "
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Matar qualquer pessoa sem uma causa maior. <br/>
2. Declarar uma rebelião não é motivo para matar ninguém, até mesmo policiais. <br/>
3. Os policiais e os civis / rebeldes só podem começar em um tiroteio se houver motivos relacionados a um crime. <br/>
4. Se você é morto no fogo cruzado de uma luta, não é RDM. <br/>
5. Matar alguém em uma tentativa de se proteger ou de outros não é RDM. <br/>
6. Tirar um jogador sem dar tempo razoável para seguir as demandas é considerado RDM. <br/> <br/>
Todos são julgados pelos administradores caso a caso. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Regra da nova vida",
                "
A  regra da nova vida aplica-se a policiais e civis. <br/> <br/>
Os itens desta lista podem resultar na sua remoção do servidor e / ou da proibição, com base no critério dos administradores. <br/> <br/>
1. Se você for morto, deve aguardar 15 minutos antes de retornar à cena da sua morte. <br/>
2. Se você morrer durante o papel, seus crimes passados são esquecidos, mas você também não pode se vingar. <br/>
3. Se você é RDM, não é uma vida nova. <br/>
4. Se você reaparecer manualmente, não é uma vida nova. <br/>
5. Se você se matar de forma proposital para evitar o roleplay, não é uma vida nova. <br/> <br/>
                "
        ]
    ];

    player createDiaryRecord ["serverrules",
        [
            "Nao seja Pau no Cu",
                "
Se um administrador tiver que lhe dizer que está sendo um pau no cu, você está fazendo coisas erradas. <br/>
Causando outros sofrimento, interrompendo roleplay, a lista continua. <br/>
Apenas não seja um idiota? <br/>
Esta regra pode ser invocada de acordo com o critério de um administrador. <br/> <br/>
                "
        ]
    ];
    player createDiaryRecord ["policerules",
        [
            "Speeding",
                "

318/5000
As seguintes velocidades devem ser aplicadas pela Força de Polícia de Altis para a segurança absoluta dos cidadãos de Kavala e todas as viagens além da cidade. <br/> <br/>
Dentro das principais cidades: <br/>
Estradas pequenas: 50 km / h <br/>
Estradas principais: 65km / h <br/>
Fora das principais cidades: <br/>
Estradas pequenas: 80km / h <br/>
Estradas principais: 110km / h <br/> <br/>
                "
        ]
    ];
// Controls Section

    player createDiaryRecord ["controls",
        [
            "Controles Gerais",
                "
Y: Abra o Menu do Jogador. <br/>
U: Bloqueie e desbloqueie veículos e casas. <br/>
T: Inventario do veículo e armazenamento de itens virtuais da casa. <br/>
Shift esquerdo + B: Renda (mãos na cabeça). <br/>
Shift esquerdo + G: Nocateia Um Jogador. <br/>
Left Shift + R: Algema Um Jogador. <br/>
Windows esquerdo: chave de interação principal. Usado para interagir com objetos como veículos, casas, caixas eletrônicos e jogadores restritos. Pode ser rebote para uma única tecla como H pressionando ESC-> Configurar-> Controles-> Personalizado-> Usar Ação 10. <br/>
Shift esquerdo + H: Holsters a arma em suas mãos. <br/>
Esquerda Ctrl + H: Reverte a ação do coldre. <br/>
Shift + Barra de espaço: Salte. <br/>
End: Ativa O Fps Boost. <br/>
F5: Liga A Caixa De Som Do Veiculo (Apenas Doadores). <br/>

Shift esquerdo + O: (un) som de fade (tampões de ouvido). <br/> <br/>
                "
        ]
    ];
