class CfgGather {
    class Resources {
        class apple {
            amount = 5;
            zones[] = { "apple_1", "apple_2", "apple_3" };
            item = "";
            zoneSize = 30;
        };

        class peach {
            amount = 5;
            zones[] = { "peaches_1", "peaches_2", "peaches_3" };
            item = "";
            zoneSize = 30;
        };
		
		class guava {
            amount = 5;
            zones[] = { "guava_1" };
            item = "";
            zoneSize = 30;
        };
		
		class grape {
            amount = 5;
            zones[] = { "grape_1"  };
            item = "";
            zoneSize = 30;
        };
		
		class strawberry {
            amount = 5;
            zones[] = { "strawberry_1" };
            item = "";
            zoneSize = 30;
        };
		
		class banana {
            amount = 5;
            zones[] = { "banana_1" };
            item = "";
            zoneSize = 30;
        };
		
		class pineapple {
            amount = 5;
            zones[] = { "pineapple_1" };
            item = "";
            zoneSize = 30;
        };

		
		class uranio {
			amount = 3;
            zones[] = { "mina_uranio" };
            item = "";
            zoneSize = 100;
		};

		/* DROGAS!! */
		
		/* HEROINA */
        class heroin_unprocessed {
            amount = 3;
            zones[] = { "campo_hero" };
            item = "";
            zoneSize = 30;
        };

		/* COCAINA */
        class cocaine_unprocessed {
            amount = 3;
            zones[] = { "campo_coca" };
            item = "";
            zoneSize = 30;
        };
  
        /* TABACO/CIGARRO */
		class tabaco_unprocessed {
		    amount = 3;
			zones[] = { "campo_tabaco" };
			item = "";
			zoneSize = 30;
		};
		
		/* MACONHA */
        class cannabis {
            amount = 3;
            zones[] = { "campo_maconha" };
            item = "";
            zoneSize = 30;
        };
		
		class lsd_unprocessed {
            amount = 3;
            zones[] = { "campo_lsd" };
            item = "";
            zoneSize = 30;
        };
		
		class metanfetamina_unprocessed {
            amount = 3;
            zones[] = { "campo_meta" };
            item = "";
            zoneSize = 30;
        };
		
		class lolo_unprocessed {
            amount = 3;
            zones[] = { "campo_lolo" };
            item = "";
            zoneSize = 30;
        };
		
		class crack_unprocessed {
            amount = 3;
            zones[] = { "campo_morfina" };
            item = "";
            zoneSize = 30;
        };
		
    };

/*
This block can be set using percent,if you want players to mine only one resource ,just leave it as it is.
Example:
        class copper_unrefined
    {
            amount = 2;
        zones[] = { "copper_mine" };
        item = "pickaxe";
        mined[] = { "copper_unrefined" };
This will make players mine only copper_unrefined
Now let's go deeper
Example 2:
        class copper_unrefined
    {
            amount = 2;
        zones[] = { "copper_mine" };
        item = "pickaxe";
        mined[] = { {"copper_unrefined",0,25},{"iron_unrefined",25,95},{"diamond_uncut",95,100} };
    };
    This will give :
    25(±1)% to copper_unrefined;
    70(±1)% to iron_unrefined;
    5%(±1)% to diamond_uncut;

                                                         ! Watch Out !
 If percents are used,you MUST put more than 1 resource in the mined parameter
 mined[] = { {"copper_unrefined",0,25} }; NOT OK (But the script will work)
 mined[] = { {"copper_unrefined",0,45 },{"iron_unrefined",45} };  NOT OK (The script won't work )
 mined[] = { {"copper_unrefined",0,45},{"copper_unrefined",80,100} }; NOT OK
 mined[] = { "copper_unrefined" }; OK
 mined[] = { {"copper_unrefined",0,35} , { "iron_unrefined" ,35,100 } }; OK
*/

    class Minerals {
        class copper_unrefined {
            amount = 2;
            zones[] = { "mina_cobre" };
            item = "pickaxe";
            mined[] = {"copper_unrefined"};
            zoneSize = 30;
        };

        class iron_unrefined {
            amount = 2;
            zones[] = { "mina_ferro" };
            item = "pickaxe";
            mined[] = { "iron_unrefined" };
            zoneSize = 30;
        };

        class salt_unrefined {
            amount = 2;
            zones[] = { "mina_sal" };
            item = "pickaxe";
            mined[] = { "salt_unrefined" };
            zoneSize = 30;
        };

        class sand {
            amount = 2;
            zones[] = { "mina_areia" };
            item = "pickaxe";
            mined[] = { "sand" };
            zoneSize = 30;
        };

        class diamond_uncut {
            amount = 2;
            zones[] = { "mina_diamante" };
            item = "pickaxe";
            mined[] = { "diamond_uncut" };
            zoneSize = 30;
        };

        class rock {
            amount = 2;
            zones[] = { "campo_pedra" };
            item = "pickaxe";
            mined[] = { "rock" };
            zoneSize = 30;
        };

        class oil_unprocessed {
            amount = 2;
            zones[] = { "campo_petroleo" };
            item = "pickaxe";
            mined[] = { "oil_unprocessed" };
            zoneSize = 30;
        };
		
		
		class madeira {
            amount = 2;
            zones[] = { "campo_madeira" };
            item = "pickaxe";
            mined[] = { "madeira" };
            zoneSize = 30;
        };
		
		class aco {
            amount = 2;
            zones[] = { "campo_aco" };
            item = "pickaxe";
            mined[] = { "aco" };
            zoneSize = 30;
        };
		
		class pepita {
            amount = 2;
            zones[] = { "mina_pepita" };
            item = "pickaxe";
            mined[] = { "pepita" };
            zoneSize = 30;
        };
		
    };
};