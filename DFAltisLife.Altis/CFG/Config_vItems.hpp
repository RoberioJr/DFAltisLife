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
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "pickaxe", "toolkit", "fuelFull", "peach", "storagesmall", "storagebig", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw" };
    };

    class med_market {
        name = "STR_Shops_Market";
        side = "med";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "redgull", "tbacon", "toolkit", "fuelFull", "defibrillator" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "peach", "bisturi", "ziptie", "gag", "blindfold", "boltcutter", "blastingcharge" };
    };

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        conditions = "";
        items[] = { "waterBottle", "rabbit", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "boltcutter", "blastingcharge", "handcuffs", "keys" };
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
        items[] = { "cocaine_processed", "heroin_processed", "marijuana", "tabaco_processed", "kidney" };
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

    class glass {
        name = "STR_Shops_Glass";
        side = "civ";
        conditions = "";
        items[] = { "glass" };
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
        items[] = { "donuts", "coffee", "spikeStrip", "waterBottle", "rabbit", "redgull", "toolkit", "fuelFull", "defusekit", "ossodog" };
    };
	
	/* Isso não é uma loja! - Mercado (Y MENU) */
	//description = "DESCRIÇÃO DO ITEM"; - ADICIONAR NOS ITEMS Q ESTÃO NO MERCADO!!
	class ymarket {
    name = "STR_Shops_yMarket";
    conditions = "";
    items[] = {"apple", "peach", "pineapple", "banana", "strawberry", "grape", "guava", "cannabis", "catshark", "catshark_raw", "cement", "cocaine_processed", "cocaine_unprocessed", "copper_refined", "copper_unrefined", "diamond_cut", "diamond_uncut", "glass", "goat", "goat_raw", "goldbar", "hen", "hen_raw", "heroin_processed", "heroin_unprocessed", "tabacoProcessed", "lsdProcessed", "ecstasyProcessed", "metanfetaminaProcessed", "loloProcessed", "crackp", "iron_refined", "iron_unrefined", "mackerel", "mackerel_raw", "marijuana", "mullet", "mullet_raw", "oil_processed", "oil_unprocessed", "ornate", "ornate_raw", "rabbit", "rabbit_raw", "rock", "rooster", "rooster_raw", "salema", "salema_raw", "sand", "salt_refined", "salt_unrefined", "sheep", "sheep_raw", "tuna", "tuna_raw", "turtle_soup", "turtle_raw", "kidney"};
    };
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
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
	
	class bisturi {
		variable = "bisturi";
        displayName = "STR_Item_Bisturi";
        weight = 8;
        buyPrice = 8000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\bisturi.paa";
	};
	
	class ossodog {
		variable = "ossodog";
        displayName = "STR_Item_OssoDog";
        weight = 2;
        buyPrice = 250;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\osso.paa";
	};
	
	class ziptie {
        variable = "ziptie";
        displayName = "STR_Ziptie";
        weight = 6;
        buyPrice = 4500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ziptie.paa";
    };

    class gag {
        variable = "gag";
        displayName = "STR_gag";
        weight = 7;
        buyPrice = 5500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\gag.paa";
    };

    class blindfold {
        variable = "blindfold";
        displayName = "STR_blindfold";
        weight = 7;
        buyPrice = 6500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\blindfold.paa";
    };

    class kidney {
        variable = "kidney";
        displayName = "STR_kidney";
        weight = 15;
        buyPrice = -1;
        sellPrice = 100000;
        illegal = true;
        edible = -1;
        icon = "icons\kidney.paa";
    };
	
    //Misc
    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 2;
        buyPrice = 500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_pickaxe.paa";
    };

    class defibrillator {
        variable = "defibrillator";
        displayName = "STR_Item_Defibrillator";
        weight = 4;
        buyPrice = 750;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_defibrillator.paa";
    };

    class toolkit {
        variable = "toolkit";
        displayName = "STR_Item_Toolkit";
        weight = 4;
        buyPrice = 500;
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
        sellPrice = 10;
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
        buyPrice = 2500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_spikeStrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 8000;
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
        sellPrice = 82000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_goldBar.paa";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 15;
        buyPrice = 42500;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_blastingCharge.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 7000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_boltCutter.paa";
    };

    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 2000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_defuseKit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 80000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 150000;
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
        sellPrice = 845;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilProcessed.paa";
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
        sellPrice = 735;
        illegal = false;
        edible = -1;
        icon = "icons\ico_copper.paa";
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
        sellPrice = 525;
        illegal = false;
        edible = -1;
        icon = "icons\ico_iron.paa";
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
        sellPrice = 420;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltProcessed.paa";
    };

    class sand {
        variable = "sand";
        displayName = "STR_Item_Sand";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_sand.paa";
    };

    class glass {
        variable = "glass";
        displayName = "STR_Item_Glass";
        weight = 2;
        buyPrice = -1;
        sellPrice = 315;
        illegal = false;
        edible = -1;
        icon = "icons\ico_glass.paa";
    };

    class diamond_uncut {
        variable = "diamondUncut";
        displayName = "STR_Item_DiamondU";
        weight = 3;
        buyPrice = -1;
        sellPrice = 365;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondUncut.paa";
    };

    class diamond_cut {
        variable = "diamondCut";
        displayName = "STR_Item_DiamondC";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1055;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondCut.paa";
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
        sellPrice = 630;
        illegal = false;
        edible = -1;
        icon = "icons\ico_cement.paa";
    };

    //Drugs
	/* DROGAS */
	
	class tabaco_unprocessed {
        variable = "tabacoUnprocessed";
        displayName = "STR_Item_TabacoU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\tabaco.paa";
        processedItem = "tabaco_processed";
    };
	
    class tabaco_processed {
        variable = "tabacoProcessed";
        displayName = "STR_Item_Tabaco";
        weight = 3;
        buyPrice = 2200;
        sellPrice = 1700;
        illegal = true;
        edible = -1;
        icon = "icons\tabacop.paa";
    };
	
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
        buyPrice = 2050;
        sellPrice = 1680;
        illegal = true;
        edible = -1;
        icon = "icons\lsdp.paa";
    };
	
	class ecstasy_unprocessed {
        variable = "ecstasyUnprocessed";
        displayName = "STR_Item_EcstasyU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ecstasy.paa";
        processedItem = "ecstasy_processed";
    };

    class ecstasy_processed {
        variable = "ecstasyProcessed";
        displayName = "STR_Item_EcstasyP";
        weight = 3;
        buyPrice = 2500;
        sellPrice = 2055;
        illegal = true;
        edible = -1;
        icon = "icons\ecstasyp.paa";
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
        buyPrice = 2700;
        sellPrice = 2265;
        illegal = true;
        edible = -1;
        icon = "icons\metap.paa";
    };
	
	class lolo_unprocessed {
        variable = "loloUnprocessed";
        displayName = "STR_Item_loloU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\lolo.paa";
        processedItem = "lolo_processed";
    };

    class lolo_processed {
        variable = "loloProcessed";
        displayName = "STR_Item_loloP";
        weight = 3;
        buyPrice = 2000;
        sellPrice = 1575;
        illegal = true;
        edible = -1;
        icon = "icons\lolop.paa";
    };
	
	class crack_unprocessed {
        variable = "crackUnprocessed";
        displayName = "STR_Item_MorfinaU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\crack.paa";
        processedItem = "crackProcessed";
    };

    class crack_processed {
        variable = "crackProcessed";
        displayName = "STR_Item_MorfinaP";
        weight = 3;
        buyPrice = -1;
        sellPrice = 2055;
        illegal = true;
        edible = -1;
        icon = "icons\crackp.paa";
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
        buyPrice = 2600;
        sellPrice = 2160;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinProcessed.paa";
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
        buyPrice = 2300;
        sellPrice = 1830;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
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
        buyPrice = 2450;
        sellPrice = 1935;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineProcessed.paa";
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
    };

    //Food
    class apple {
        variable = "apple";
        displayName = "STR_Item_Apple";
        weight = 1;
        buyPrice = -1;
        sellPrice = 200;
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
        sellPrice = 200;
        illegal = false;
        edible = 10;
        icon = "icons\pera.paa";
    };
	
	class guava {
        variable = "guava";
        displayName = "STR_Item_Guava";
        weight = 1;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = 10;
        icon = "icons\goiaba.paa";
    };
	
	
	class grape {
        variable = "grape";
        displayName = "STR_Item_Grape";
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = 10;
        icon = "icons\uva.paa";
    };
	
	class strawberry {
        variable = "strawberry";
        displayName = "STR_Item_Strawberry";
        weight = 1;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = 10;
        icon = "icons\morango.paa";
    };
	
	class banana {
        variable = "banana";
        displayName = "STR_Item_Banana";
        weight = 1;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = 10;
        icon = "icons\banana.paa";
    };
	
	class pineapple {
        variable = "pineapple";
        displayName = "STR_Item_Pineapple";
        weight = 1;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = 10;
        icon = "icons\abacaxi.paa";
    };

    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 85;
        sellPrice = -1;
        illegal = false;
        edible = 40;
        icon = "icons\ico_tBacon.paa";
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
        weight = 2;
        buyPrice = -1;
        sellPrice = 165;
        illegal = false;
        edible = -1;
        icon = "icons\ico_rabbitRaw.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 1;
        buyPrice = -1;
        sellPrice = 155;
        illegal = false;
        edible = 20;
        icon = "icons\ico_rabbit.paa";
    };

    class salema_raw {
        variable = "salemaRaw";
        displayName = "STR_Item_SalemaRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 80;
        illegal = false;
        edible = -1;
        icon = "icons\ico_salemaRaw.paa";
    };

    class salema {
        variable = "salema";
        displayName = "STR_Item_Salema";
        weight = 1;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedFish.paa";
    };

    class ornate_raw {
        variable = "ornateRaw";
        displayName = "STR_Item_OrnateRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 110;
        illegal = false;
        edible = -1;
        icon = "icons\ico_ornateRaw.paa";
    };

    class ornate {
        variable = "ornate";
        displayName = "STR_Item_Ornate";
        weight = 1;
        buyPrice = -1;
        sellPrice = 150;
        illegal = false;
        edible = 25;
        icon = "icons\ico_cookedFish.paa";
    };

    class mackerel_raw {
        variable = "mackerelRaw";
        displayName = "STR_Item_MackerelRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 175;
        illegal = false;
        edible = -1;
        icon = "icons\ico_mackerelRaw.paa";
    };

    class mackerel {
        variable = "mackerel";
        displayName = "STR_Item_Mackerel";
        weight = 2;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedFish.paa";
    };

    class tuna_raw {
        variable = "tunaRaw";
        displayName = "STR_Item_TunaRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 700;
        illegal = false;
        edible = -1;
        icon = "icons\ico_tunaRaw.paa";
    };

    class tuna {
        variable = "tuna";
        displayName = "STR_Item_Tuna";
        weight = 3;
        buyPrice = -1;
        sellPrice = 1100;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedFish.paa";
    };

    class mullet_raw {
        variable = "mulletRaw";
        displayName = "STR_Item_MulletRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 250;
        illegal = false;
        edible = -1;
        icon = "icons\ico_mulletRaw.paa";
    };

    class mullet {
        variable = "mullet";
        displayName = "STR_Item_Mullet";
        weight = 2;
        buyPrice = -1;
        sellPrice = 400;
        illegal = false;
        edible = 80;
        icon = "icons\ico_cookedFish.paa";
    };

    class catshark_raw {
        variable = "catsharkRaw";
        displayName = "STR_Item_CatSharkRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 370;
        illegal = false;
        edible = -1;
        icon = "icons\ico_catsharkRaw.paa";
    };

    class catshark {
        variable = "catshark";
        displayName = "STR_Item_CatShark";
        weight = 3;
        buyPrice = -1;
        sellPrice = 590;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedFish.paa";
    };

    class turtle_raw {
        variable = "turtleRaw";
        displayName = "STR_Item_TurtleRaw";
        weight = 6;
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
        buyPrice = 1000;
        sellPrice = 750;
        illegal = false;
        edible = 100;
        icon = "icons\ico_turtleSoup.paa";
    };

    class hen_raw {
        variable = "henRaw";
        displayName = "STR_Item_HenRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "icons\ico_wholeChickenRaw.paa";
    };

    class hen {
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 1;
        buyPrice = -1;
        sellPrice = 85;
        illegal = false;
        edible = 65;
        icon = "icons\ico_wholeChicken.paa";
    };

    class rooster_raw {
        variable = "roosterRaw";
        displayName = "STR_Item_RoosterRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "icons\ico_chickenDrumstickRaw.paa";
    };

    class rooster {
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 115;
        buyPrice = -1;
        sellPrice = 85;
        illegal = false;
        edible = 45;
        icon = "icons\ico_chickenDrumstick.paa";
    };

    class sheep_raw {
        variable = "sheepRaw";
        displayName = "STR_Item_SheepRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = -1;
        icon = "icons\ico_lambChopRaw.paa";
    };

    class sheep {
        variable = "sheep";
        displayName = "STR_Item_Sheep";
        weight = 2;
        buyPrice = -1;
        sellPrice = 115;
        illegal = false;
        edible = 100;
        icon = "icons\ico_lambChop.paa";
    };

    class goat_raw {
        variable = "goatRaw";
        displayName = "STR_Item_GoatRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 115;
        illegal = false;
        edible = -1;
        icon = "icons\ico_muttonLegRaw.paa";
    };

    class goat {
        variable = "goat";
        displayName = "STR_Item_Goat";
        weight = 2;
        buyPrice = -1;
        sellPrice = 135;
        illegal = false;
        edible = 100;
        icon = "icons\ico_muttonLeg.paa";
    };
};
