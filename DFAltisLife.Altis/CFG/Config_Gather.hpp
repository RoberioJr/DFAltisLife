class CfgGather {
    class Resources {
        class apple {
            amount = 5;
            zones[] = { "apple_1", "apple_2", "apple_3", "apple_4" };
            item = "";
            zoneSize = 30;
        };

        class peach {
            amount = 5;
            zones[] = { "peaches_1" };
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


		/* DROGAS!! */
		
		/* HEROINA */
        class heroin_unprocessed {
            amount = 3;
            zones[] = { "heroin_1" };
            item = "";
            zoneSize = 30;
        };

		/* COCAINA */
        class cocaine_unprocessed {
            amount = 3;
            zones[] = { "cocaine_1" };
            item = "";
            zoneSize = 30;
        };
  
        /* TABACO/CIGARRO */
		class tabaco_unprocessed {
		    amount = 3;
			zones[] = { "tabaco_1" };
			item = "";
			zoneSize = 30;
		};
		
		/* MACONHA */
        class cannabis {
            amount = 3;
            zones[] = { "weed_1" };
            item = "";
            zoneSize = 30;
        };
		
		class lsd_unprocessed {
            amount = 3;
            zones[] = { "lsd_1" };
            item = "";
            zoneSize = 30;
        };
		
		class ecstasy_unprocessed {
            amount = 3;
            zones[] = { "ecstasy_1" };
            item = "";
            zoneSize = 30;
        };
		
		class metanfetamina_unprocessed {
            amount = 3;
            zones[] = { "metanfetamina_1" };
            item = "";
            zoneSize = 30;
        };
		
		class lolo_unprocessed {
            amount = 3;
            zones[] = { "lolo_1" };
            item = "";
            zoneSize = 30;
        };
		
		class morfina_unprocessed {
            amount = 3;
            zones[] = { "morfina_1" };
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
            zones[] = { "copper_mine" };
            item = "pickaxe";
            mined[] = {"copper_unrefined"};
            zoneSize = 30;
        };

        class iron_unrefined {
            amount = 2;
            zones[] = { "iron_mine" };
            item = "pickaxe";
            mined[] = { "iron_unrefined" };
            zoneSize = 30;
        };

        class salt_unrefined {
            amount = 2;
            zones[] = { "salt_mine" };
            item = "pickaxe";
            mined[] = { "salt_unrefined" };
            zoneSize = 30;
        };

        class sand {
            amount = 2;
            zones[] = { "sand_mine" };
            item = "pickaxe";
            mined[] = { "sand" };
            zoneSize = 30;
        };

        class diamond_uncut {
            amount = 2;
            zones[] = { "diamond_mine" };
            item = "pickaxe";
            mined[] = { "diamond_uncut" };
            zoneSize = 30;
        };

        class rock {
            amount = 2;
            zones[] = { "rock_quarry" };
            item = "pickaxe";
            mined[] = { "rock" };
            zoneSize = 30;
        };

        class oil_unprocessed {
            amount = 2;
            zones[] = { "oil_field_1", "oil_field_2" };
            item = "pickaxe";
            mined[] = { "oil_unprocessed" };
            zoneSize = 30;
        };
    };
};