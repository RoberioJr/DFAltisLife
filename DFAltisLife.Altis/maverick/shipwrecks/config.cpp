/*
	Author: Maverick Applications
	Desc: Altis Life Shipwreck
*/

//Customize your settings to fit your server setup!
class Maverick_Shipwrecks {

    //How often (in seconds) should a shipwreck spawn, if no wreck is on the map?
    ShipwreckInterval = 2200; //1800 = 30min

    //Define the possible locations for your shipwrecks.
    //getPosATL format -> Get the position via: diag_log(getPosATL player) -> replace the [] with {}
	Positions[] = {
		{18420.225,19977.434,0},
		{3030.027,16564.689,0},
		{25755.4,17288.719,0},
		{22889.22,12278.635,0}
	};

    //Define the radius, in which the wreck randomly spawns around the given center position
    Radius = 250;

    //Define the possible sets of virtual items the user can loot from the wreck.
	ShipLoot[] = {
		//{ { "itemname1", amount }, { "itemname2", amount }, { "itemname3", amount } }
        { { "goldbar", 5 }, { "analgesico", 2 } },
        { { "goldbar", 7 } },
        { { "goldbar", 2 }, { "camisinha", 1 } }
	};

	//What shall be displayed as text to gather the items from the ship? (The text of the addAction ingame)
	ShipLootText = "Recupere O Saque";

    //The message when the user has got all the loot successfully.
    ShipLootSuccess = "Você reivindicou com êxito o saque do naufrágio!";

    //The message in case something fails, or the user can not carry all the items.
    ShipLootFail = "Você não pode carregar todo o saque. Libere algum espaço primeiro!";

	//Define the message, that should appear when a shipwreck spawns (broadcasted to all clients).
	SpawnMSG = "Naufrágio\n\nUm navio afundado foi localizado! Pode conter itens importantes e foi marcado no seu mapa!";

    //Define the message, that should appear when a shipwreck disappears after a user looted it (broadcasted to all clients).
	DeleteMSG = "Naufrágio\n\nO navio foi saqueado com sucesso e desapareceu!";
};