/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*/
class VirtualShops {
    //Virtual Shops
    class market {
        name = "STR_Shops_Market";
        side = "civ";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "apple", "peach", "guava", "grape", "strawberry", "banana", "pineapple", "redgull", "cocacola", "tbacon", "chocolate", "donuts", "pizza", "ruffles", "pickaxe", "toolkit", "fuelFull", "storagesmall", "storagebig", "rabbit_raw", "hen_raw", "rooster_raw", "ossodog" };
    };

    class med_market {
        name = "STR_Shops_Market";
        side = "med";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "redgull", "tbacon", "ossodog", "toolkit", "fuelFull", "analgesico", "kitmedico", "defibrillator" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "peach", "camisinha", "analgesico", "kitmedico", "ziptie", "gag", "blindfold", "rastreador", "boltcutter", "bomba", "blastingcharge" };
    };
	
	class exercito {
		name = "STR_MAR_MarketExerc";
        side = "civ";
        conditions = "call life_exercito >= 1";
        items[] = { "waterBottle", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "peach", "analgesico", "kitmedico", "ziptie", "gag", "blindfold", "rastreador", "boltcutter" };
	};

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "redgull", "tbacon", "pickaxe", "toolkit", "fuelFull" };
    };

	class lixo {
        name = "STR_Shops_Lixao";
        side = "civ";
        conditions = "";
        items[] = { "lixo" };
    };
	
	class uranio {
		name = "STR_Shops_uranio";
        side = "civ";
        conditions = "";
        items[] = { "uraniop" };
	};
	
    class wongs {
        name = "STR_Shops_Wongs";
        side = "civ";
        conditions = "";
        items[] = { "turtle_soup", "turtle_raw" };
    };

    class coffee {
        name = "STR_Shops_Coffee";
        side = "civ";
        conditions = "";
        items[] = { "coffee", "donuts" };
    };

    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        conditions = "";
        items[] = { "coffee", "donuts", "redgull", "toolkit", "fuelFull"};
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        conditions = "";
        items[] = { "cocaine_processed", "heroin_processed", "marijuana", "tabaco_processed", "lsd_processed", "metanfetamina_processed", "lolo_processed", "crack_processed" };
    };

    class oil {
        name = "STR_Shops_Oil";
        side = "civ";
        conditions = "";
        items[] = { "oil_processed", "pickaxe", "fuelFull" };
    };

    class fishmarket {
        name = "STR_Shops_FishMarket";
        side = "civ";
        conditions = "";
        items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
    };

    class iron  {
        name = "STR_Shops_Minerals";
        side = "civ";
        conditions = "";
        items[] = { "iron_refined", "copper_refined" };
    };

    class diamond {
        name = "STR_Shops_Diamond";
        side = "civ";
        conditions = "";
        items[] = { "diamond_uncut", "diamond_cut" };
    };

    class salt {
        name = "STR_Shops_Salt";
        side = "civ";
        conditions = "";
        items[] = { "salt_refined" };
    };

    class cement {
        name = "STR_Shops_Cement";
        side = "civ";
        conditions = "";
        items[] = { "cement" };
    };

    class gold {
        name = "STR_Shops_Gold";
        side = "civ";
        conditions = "";
        items[] = { "goldbar" };
    };

    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        conditions = "";
        items[] = { "gag", "blindfold", "donuts", "coffee", "spikeStrip", "waterBottle", "rabbit", "redgull", "analgesico", "kitmedico", "toolkit", "fuelFull", "defusekit", "rastreador", "tornozeleira", "ossodog" };
    };
	
	class aco_lapidado {
        name = "STR_Shops_Aco";
        side = "civ";
        conditions = "";
        items[] = { "aco", "aco_lapidado"};
    };
	
	class pepita_lapidada {
        name = "STR_Shops_Pepita";
        side = "civ";
        conditions = "";
        items[] = { "pepita", "pepita_lapidada"};
    };
	
	class papel {
        name = "STR_Shops_Papel";
        side = "civ";
        conditions = "";
        items[] = { "madeira", "papel"};
    };
	
	/* Isso não é uma loja! - Mercado (Y MENU) */
	//description = "DESCRIÇÃO DO ITEM"; - ADICIONAR NOS ITEMS Q ESTÃO NO MERCADO!!
	class ymarket {
		name = "STR_Shops_yMarket";
		conditions = "";
		items[] = {"apple", "peach", "pineapple", "banana", "strawberry", "grape", "guava", "cannabis", "catshark", "catshark_raw", "cement", "cocaine_processed", "copper_refined", "diamond_cut", "diamond_uncut", "goldbar", "hen", "hen_raw", "heroin_processed", "lsd_processed", "metanfetamina_processed", "iron_refined", "iron_unrefined", "mackerel", "mackerel_raw", "marijuana", "mullet", "mullet_raw", "oil_processed", "ornate", "ornate_raw", "rabbit", "rabbit_raw", "rock", "rooster", "rooster_raw", "salema", "salema_raw", "salt_refined", "tuna", "tuna_raw", "turtle_soup", "turtle_raw", "uranio", "uraniop", "lixo" };
    };
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/

class VirtualItems {
    //Virtual Items

	/* RJ EDIT */
	class uranio {
		variable = "uranio";
        displayName = "STR_Item_uranio";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\uranio.paa";
	};
	
	class uraniop {
		variable = "uraniop";
        displayName = "STR_Item_uraniop";
        weight =3;
        buyPrice = -1;
        sellPrice = 5000;
        illegal = false;
        edible = -1;
        icon = "icons\uraniop.paa";
	};
	
	class lixo {
		variable = "lixo";
        displayName = "STR_Item_lixo";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = false;
        edible = -1;
        icon = "icons\lixo.paa";
	};
	
	class kitmedico {
	    variable = "kitmedico";
        displayName = "STR_Item_kitmedico";
        weight = 12;
        buyPrice = 15000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\kitmedico.paa";
	};
	
	class analgesico {
		variable = "analgesico";
        displayName = "STR_Item_analgesico";
        weight = 7;
        buyPrice = 10000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\analgesico.paa";
	};
	
	class bomba {
		variable = "bomba";
        displayName = "STR_Item_bomba";
        weight = 7;
        buyPrice = 500000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\bomba.paa";
	};
	
	class rastreador {
		variable = "rastreador";
        displayName = "STR_Item_Rastreador";
        weight = 6;
        buyPrice = 25000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\rastreador.paa";
	};
	
	class tornozeleira {
	    variable = "tornozeleira";
        displayName = "STR_Item_Tornozeleira";
        weight = 6;
        buyPrice = 50000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\tornozeleira.paa";
	};
	
	class ossodog {
		variable = "ossodog";
        displayName = "STR_Item_OssoDog";
        weight = 2;
        buyPrice = 500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\osso.paa";
	};
	
	class ziptie {
        variable = "ziptie";
        displayName = "STR_Ziptie";
        weight = 6;
        buyPrice = 30000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ziptie.paa";
    };

    class gag {
        variable = "gag";
        displayName = "STR_gag";
        weight = 7;
        buyPrice = 15500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\gag.paa";
    };

    class blindfold {	
        variable = "blindfold";
        displayName = "STR_blindfold";
        weight = 7;
        buyPrice = 12500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\blindfold.paa";
    };

    class camisinha {
        variable = "camisinha";
        displayName = "STR_camisinha";
        weight = 5;
        buyPrice = 5000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\camisinha.paa";
		description = "Serve Para Não Transmitir Doenças Sexuais (DST) :)";
    };
	
    //Misc
    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 2;
        buyPrice = 1000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_pickaxe.paa";
    };

    class defibrillator {
        variable = "defibrillator";
        displayName = "STR_Item_Defibrillator";
        weight = 4;
        buyPrice = 15000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_defibrillator.paa";
    };

    class toolkit {
        variable = "toolkit";
        displayName = "STR_Item_Toolkit";
        weight = 4;
        buyPrice = 1500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "\a3\weapons_f\items\data\UI\gear_toolkit_ca.paa";
    };

    class fuelEmpty {
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 2;
        buyPrice = -1;
        sellPrice = 500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuelEmpty.paa";
    };

    class fuelFull {
        variable = "fuelFull";
        displayName = "STR_Item_FuelF";
        weight = 5;
        buyPrice = 1000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuel.paa";
    };

    class spikeStrip {
        variable = "spikeStrip";
        displayName = "STR_Item_SpikeStrip";
        weight = 15;
        buyPrice = 50000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_spikeStrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 15500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_lockpick.paa";
    };

    class goldbar {
        variable = "goldBar";
        displayName = "STR_Item_GoldBar";
        weight = 12;
        buyPrice = -1;
        sellPrice = 300000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_goldBar.paa";
		description = "As Barras De Ouro Padrão São Utilizadas Como Reservas Monetárias Em Espécie Pelos Bancos Centrais, Valem Um Boa Grana.";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 15;
        buyPrice = 500000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_blastingCharge.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 25000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_boltCutter.paa";
    };

    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 15000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_defuseKit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 150000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 300000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageBig.paa";
    };

    //Mined Items
    class oil_unprocessed {
        variable = "oilUnprocessed";
        displayName = "STR_Item_OilU";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilUnprocessed.paa";
    };

    class oil_processed {
        variable = "oilProcessed";
        displayName = "STR_Item_OilP";
        weight = 2;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilProcessed.paa";
		description = "Além De Gerar A Gasolina, Que Serve De Combustível Para Grande Parte Dos Automóveis Que Circulam No Mundo, Vários Produtos São Derivados Como Produtos Asfálticos, Querosene, Solventes, Óleos Combustíveis, Óleos Lubrificantes e Óleo Diesel.";
    };

    class copper_unrefined {
        variable = "copperUnrefined";
        displayName = "STR_Item_CopperOre";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_copperOre.paa";
    };

    class copper_refined {
        variable = "copperRefined";
        displayName = "STR_Item_CopperIngot";
        weight = 2;
        buyPrice = -1;
        sellPrice = 2500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_copper.paa";
		description = "Uma das principais aplicações do cobre é para produção de ligas metálicas, materiais formados pela mistura de dois ou mais componentes, no qual pelo menos um é metal.";
    };

    class iron_unrefined {
        variable = "ironUnrefined";
        displayName = "STR_Item_IronOre";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_ironOre.paa";
    };

    class iron_refined {
        variable = "ironRefined";
        displayName = "STR_Item_IronIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 1800;
        illegal = false;
        edible = -1;
        icon = "icons\ico_iron.paa";
		description = "O nome ferro é derivado do latim ferrum, é um metal maleável, tenaz, de coloração branco-acizentada apresentando propriedades magnéticas; é ferromagnético à temperatura ambiente, assim como o Níquel e o Cobalto.";
    };

    class salt_unrefined {
        variable = "saltUnrefined";
        displayName = "STR_Item_Salt";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltUnprocessed.paa";
    };

    class salt_refined {
        variable = "saltRefined";
        displayName = "STR_Item_SaltR";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltProcessed.paa";
		description = "O sal era, até o início do século XX, um importante conservante alimentar. A tal ponto chegava sua importância, que foi até mesmo usado como forma de pagamento no período romano, sendo esta a origem da palavra 'salário'. Por este motivo as explorações de sal chegaram a ter valor estratégico, inclusive tendo sido criadas vilas fortificadas para defender as salinas.";
    };

    class diamond_uncut {
        variable = "diamondUncut";
        displayName = "STR_Item_DiamondU";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondUncut.paa";
    };

    class diamond_cut {
        variable = "diamondCut";
        displayName = "STR_Item_DiamondC";
        weight = 2;
        buyPrice = -1;
        sellPrice = 4000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondCut.paa";
		description = "O diamante é o mais duro material de ocorrência natural que se conhece, com uma dureza de 10 (valor máximo da escala de Mohs). Isto significa que não pode ser riscado por nenhum outro mineral ou substância, exceto o próprio diamante, funcionando como um importante material abrasivo.";
    };

    class rock {
        variable = "rock";
        displayName = "STR_Item_Rock";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_rock.paa";
    };

    class cement {
        variable = "cement";
        displayName = "STR_Item_CementBag";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_cement.paa";
		description = "O cimento (derivada do latim cæmentué) um aglomerante hidráulico que, em contato com a água, produz reação exotérmica de cristalização de produtos hidratados, ganhando assim resistência mecânica. É o principal material de construção usado como aglomerante. ";
    };

    //Drugs
	/* DROGAS */
	
	class lsd_unprocessed {
        variable = "lsdUnprocessed";
        displayName = "STR_Item_LsdU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\lsd.paa";
        processedItem = "lsd_processed";
    };

    class lsd_processed {
        variable = "lsdProcessed";
        displayName = "STR_Item_LsdP";
        weight = 3;
        buyPrice = 5000;
        sellPrice = 4000;
        illegal = true;
        edible = -1;
        icon = "icons\lsdp.paa";
		description = "LSD é a sigla de Lysergsäurediethylamid, palavra alemã para a dietilamida do ácido lisérgico, que é uma das mais potentes substâncias alucinógenas conhecidas.";
    };
	
	class metanfetamina_unprocessed {
        variable = "metanfetaminaUnprocessed";
        displayName = "STR_Item_MetanfetaminaU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\meta.paa";
        processedItem = "metanfetamina_processed";
    };
	
    class metanfetamina_processed {
        variable = "metanfetaminaProcessed";
        displayName = "STR_Item_MetanfetaminaP";
        weight = 3;
        buyPrice = 6000;
        sellPrice = 5000;
        illegal = true;
        edible = -1;
        icon = "icons\metap.paa";
		description = "'Say my name'";
    };
	
	class heroin_unprocessed {
        variable = "heroinUnprocessed";
        displayName = "STR_Item_HeroinU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinUnprocessed.paa";
        processedItem = "heroin_processed";
    };

    class heroin_processed {
        variable = "heroinProcessed";
        displayName = "STR_Item_HeroinP";
        weight = 3;
        buyPrice = 7000;
        sellPrice = 6000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinProcessed.paa";
		description = "Heroína ou diamorfina é um opioide frequentemente utilizado como droga recreativa devido ao seu efeito eufórico.";
    };

    class cannabis {
        variable = "cannabis";
        displayName = "STR_Item_Cannabis";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cannabis.paa";
        processedItem = "marijuana";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_Item_Marijuana";
        weight = 3;
        buyPrice = 5000;
        sellPrice = 4000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
		description = "Cannabis sativa é uma planta herbácea da família das Canabiáceas, amplamente cultivada em muitas partes do mundo.";
    };

    class cocaine_unprocessed {
        variable = "cocaineUnprocessed";
        displayName = "STR_Item_CocaineU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineUnprocessed.paa";
        processedItem = "cocaine_processed";
    };

    class cocaine_processed {
        variable = "cocaineProcessed";
        displayName = "STR_Item_CocaineP";
        weight = 3;
        buyPrice = 8000;
        sellPrice = 7000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineProcessed.paa";
		description = "A cocaína, benzoilmetilecgonina ou éster do ácido benzoico, também conhecida por coca, é um alcaloide, estimulante, com efeitos anestésicos utilizada fundamentalmente como uma droga recreativa.";
    };

    //Drink
    class redgull {
        variable = "redgull";
        displayName = "STR_Item_RedGull";
        weight = 1;
        buyPrice = 350;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "icons\ico_redgull.paa";
    };

    class coffee {
        variable = "coffee";
        displayName = "STR_Item_Coffee";
        weight = 1;
        buyPrice = 50;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "icons\ico_coffee.paa";
    };

    class waterBottle {
        variable = "waterBottle";
        displayName = "STR_Item_WaterBottle";
        weight = 1;
        buyPrice = 65;
        sellPrice = -1;
        illegal = false;
        edible = 100;
        icon = "icons\ico_waterBottle.paa";
		description = "Uma Bela Maçã :)";
    };

    //Food
    class apple {
        variable = "apple";
        displayName = "STR_Item_Apple";
        weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\ico_apple.paa";
		description = "Uma Bela Maçã :)"; //Necessário Para Aparecer A Descrição No Mercado
    };

    class peach {
        variable = "peach";
        displayName = "STR_Item_Peach";
        weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\pera.paa";
		description = "Uma Pêra Pow.";
    };
	
	class guava {
        variable = "guava";
        displayName = "STR_Item_Guava";
        weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\goiaba.paa";
		description = "Pegar O Onibus Ou Comprar A Goiaba? Eis A Questão...";
    };
	
	
	class grape {
        variable = "grape";
        displayName = "STR_Item_Grape";
		weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\uva.paa";
		description = "Uma Uva. Cuidado Para Não Levar Uma Descarga Elétrica.";
    };
	
	class strawberry {
        variable = "strawberry";
        displayName = "STR_Item_Strawberry";
        weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\morango.paa";
		description = "Um Belo Morango.";
    };
	
	class banana {
        variable = "banana";
        displayName = "STR_Item_Banana";
        weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\banana.paa";
		description = "Você Gosta De Uma BANANA?      ( ͡° ͜ʖ ͡°).";
    };
	
	class pineapple {
        variable = "pineapple";
        displayName = "STR_Item_Pineapple";
        weight = 1;
        buyPrice = -1;
        sellPrice = 225;
        illegal = false;
        edible = 10;
        icon = "icons\abacaxi.paa";
		description = "Um Abacaxi Bem Bonito.";
    };

    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 150;
        sellPrice = -1;
        illegal = false;
        edible = 40;
        icon = "icons\ico_tBacon.paa";
    };
	
	class cocacola {
		variable = "cocacola";
        displayName = "STR_Item_cocacola";
        weight = 1;
        buyPrice = 100;
        sellPrice = -1;
        illegal = false;
        edible = 45;
        icon = "icons\coca.paa";
	};
	
	class ruffles {
		variable = "ruffles";
        displayName = "STR_Item_ruffles";
        weight = 1;
        buyPrice = 70;
        sellPrice = -1;
        illegal = false;
        edible = 30;
        icon = "icons\ruffles.paa";
	};
	
	class pizza {
		variable = "pizza";
        displayName = "STR_Item_pizza";
        weight = 1;
        buyPrice = 200;
        sellPrice = -1;
        illegal = false;
        edible = 50;
        icon = "icons\pizza.paa";
	};

	class chocolate {
		variable = "chocolate";
        displayName = "STR_Item_chocolate";
        weight = 1;
        buyPrice = 75;
        sellPrice = -1;
        illegal = false;
        edible = 40;
        icon = "icons\chocolate.paa";
	};
	
    class donuts {
        variable = "donuts";
        displayName = "STR_Item_Donuts";
        weight = 1;
        buyPrice = 75;
        sellPrice = -1;
        illegal = false;
        edible = 30;
        icon = "icons\ico_donuts.paa";
    };

    class rabbit_raw {
        variable = "rabbitRaw";
        displayName = "STR_Item_RabbitRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_rabbitRaw.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 2;
        buyPrice = -1;
        sellPrice = 300;
        illegal = false;
        edible = 20;
        icon = "icons\ico_rabbit.paa";
    };

    class salema_raw {
        variable = "salemaRaw";
        displayName = "STR_Item_SalemaRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_salemaRaw.paa";
    };

    class salema {
        variable = "salema";
        displayName = "STR_Item_Salema";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedFish.paa";
    };

    class ornate_raw {
        variable = "ornateRaw";
        displayName = "STR_Item_OrnateRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_ornateRaw.paa";
    };

    class ornate {
        variable = "ornate";
        displayName = "STR_Item_Ornate";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 25;
        icon = "icons\ico_cookedFish.paa";
    };

    class mackerel_raw {
        variable = "mackerelRaw";
        displayName = "STR_Item_MackerelRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_mackerelRaw.paa";
    };

    class mackerel {
        variable = "mackerel";
        displayName = "STR_Item_Mackerel";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedFish.paa";
    };

    class tuna_raw {
        variable = "tunaRaw";
        displayName = "STR_Item_TunaRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_tunaRaw.paa";
    };

    class tuna {
        variable = "tuna";
        displayName = "STR_Item_Tuna";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedFish.paa";
    };

    class mullet_raw {
        variable = "mulletRaw";
        displayName = "STR_Item_MulletRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_mulletRaw.paa";
    };

    class mullet {
        variable = "mullet";
        displayName = "STR_Item_Mullet";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 80;
        icon = "icons\ico_cookedFish.paa";
    };

    class catshark_raw {
        variable = "catsharkRaw";
        displayName = "STR_Item_CatSharkRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_catsharkRaw.paa";
    };

    class catshark {
        variable = "catshark";
        displayName = "STR_Item_CatShark";
        weight = 2;
        buyPrice = -1;
        sellPrice = 590;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedFish.paa";
    };

    class turtle_raw {
        variable = "turtleRaw";
        displayName = "STR_Item_TurtleRaw";
        weight = 8;
        buyPrice = -1;
        sellPrice = 14000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_turtleRaw.paa";
    };

    class turtle_soup {
        variable = "turtleSoup";
        displayName = "STR_Item_TurtleSoup";
        weight = 2;
        buyPrice = 500;
        sellPrice = 270;
        illegal = false;
        edible = 100;
        icon = "icons\ico_turtleSoup.paa";
    };

    class hen_raw {
        variable = "henRaw";
        displayName = "STR_Item_HenRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_wholeChickenRaw.paa";
    };

    class hen {
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 65;
        icon = "icons\ico_wholeChicken.paa";
    };

    class rooster_raw {
        variable = "roosterRaw";
        displayName = "STR_Item_RoosterRaw";
        weight = 3;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = -1;
        icon = "icons\ico_chickenDrumstickRaw.paa";
    };

    class rooster {
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 2;
        buyPrice = -1;
        sellPrice = 270;
        illegal = false;
        edible = 45;
        icon = "icons\ico_chickenDrumstick.paa";
    };

    
	class madeira {
        variable = "madeira";
        displayName = "STR_Item_Madeira";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		
    };
	
	class papel {
        variable = "papel";
        displayName = "STR_Item_Papel";
        weight = 2;
        buyPrice = -1;
        sellPrice = 940;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Papel [pronúncia: kɹæk ] O papel é fabricado através da Madeira que é um material produzido a partir do tecido formado pelas plantas lenhosas com funções de sustentação mecânica.";		
    };
	
	/*class malte {
        variable = "malte";
        displayName = "STR_Item_Malte";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Malte [pronúncia: kɹæk ] O Malte é o processo de conversão do cereal em malte e é fundamental para a qualidade e a personalidade da cerveja";		
    };
	
	class lupulu {
        variable = "lupulu";
        displayName = "STR_Item_Lupulu";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Lupulu [pronúncia: kɹæk ] O Lupulu é uma planta trepadeira que tem o nome científico de Humulus lupulus, que cresce favoravelmente em regiões de clima temperado.";		
    };
	
	class caixa_cerveja {
        variable = "caixa_cerveja";
        displayName = "STR_Item_Caixa_cerveja";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Cerveja [pronúncia: kɹæk ] A cerveja (do gaulês, através do latim servisia [1]) é uma bebida produzida a partir da fermentação de cereais, principalmente a cevada maltada.";		
    };
	
	class circuitos {
        variable = "circuitos";
        displayName = "STR_Item_Circuitos";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Circuitos [pronúncia: kɹæk ] Os Circuitos são componentes eletrônicos usados na fabricação de processadores";		
    };
	
	class processador {
        variable = "processador";
        displayName = "STR_Item_Processador";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Processador [pronúncia: kɹæk ] Um processador é uma espécie de microchip especializado. A sua função é acelerar, endereçar, resolver ou preparar dados, dependendo da aplicação.";		
    };*/
	
	class pepita {
        variable = "pepita";
        displayName = "STR_Item_Pepita";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Pepita de ouro [pronúncia: kɹæk ] Pepita de ouro é o nome dado a um metal nativo, em especial ao ouro, quando ocorre como grãos ou palhetas.";		
    };
	
	class pepita_lapidada {
        variable = "pepita_lapidada";
        displayName = "STR_Item_Pepita_lapidada";
        weight = 2;
        buyPrice = -1;
        sellPrice = 2820;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Pepita de ouro Lapidada[pronúncia: kɹæk ] Pepita de ouro lapidada é o nome dado a uma pepita de ouro, quando ocorre o processo de lapidação.";		
    };
	
	class aco {
        variable = "aco";
        displayName = "STR_Item_Aco";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Aço [pronúncia: kɹæk ] O aço é uma liga metálica formada essencialmente por ferro e carbono, com percentagens deste último variando entre 0,008 e 2,11%.";		
    };
	
	class aco_lapidado {
        variable = "aco_lapidado";
        displayName = "STR_Item_Aco_Lapidado";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1880;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Aço Lapidado [pronúncia: kɹæk ] O aço lapidado é uma liga metálica formada essencialmente por ferro e carbono, com percentagens deste último variando entre 0,008 e 2,11%.";		
    };
	
	class cano_aco {
        variable = "cano_aco";
        displayName = "STR_Item_Cano_aco";
        weight = 2;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\";
		description = "Cano de aço [pronúncia: kɹæk ] O cano de aço é uma peça fabricada através do material do aço lapidado usado para fabricação de armas.";		
    };
	
};
