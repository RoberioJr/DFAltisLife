#define F(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};
#define JIP(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
    jip = 1; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2
#define HC HC_Life

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 1;
		/* Maverick */
		#include "..\maverick\maverick_remoteExec_master.cpp"
		#include "..\The-Programmer\theprogrammer_remoteExec_master.cpp"

        /* Client only functions */
		JIP(life_fnc_signLeft,CLIENT)
		JIP(life_fnc_signRight,CLIENT)
        F(life_fnc_AAN,CLIENT)
        F(life_fnc_addVehicle2Chain,CLIENT)
        F(life_fnc_adminID,CLIENT)
        F(life_fnc_adminInfo,CLIENT)
        F(life_fnc_bountyReceive,CLIENT)
        JIP(life_fnc_copLights,CLIENT)
        F(life_fnc_copSearch,CLIENT)
        JIP(life_fnc_copSiren,CLIENT)
        F(life_fnc_freezePlayer,CLIENT)
        F(life_fnc_gangCreated,CLIENT)
        F(life_fnc_gangDisbanded,CLIENT)
        F(life_fnc_gangInvite,CLIENT)
        F(life_fnc_garageRefund,CLIENT)
        F(life_fnc_giveDiff,CLIENT)
        F(life_fnc_hideObj,CLIENT)
        F(life_fnc_impoundMenu,CLIENT)
        F(life_fnc_jail,CLIENT)
        F(life_fnc_jailMe,CLIENT)
        F(life_fnc_knockedOut,CLIENT)
        F(life_fnc_licenseCheck,CLIENT)
        F(life_fnc_licensesRead,CLIENT)
        F(life_fnc_lightHouse,CLIENT)
        JIP(life_fnc_mediclights,CLIENT)
        F(life_fnc_medicRequest,CLIENT)
        JIP(life_fnc_medicSiren,CLIENT)
		JIP(life_fnc_medicSirenAlarm,CLIENT)
        F(life_fnc_moveIn,CLIENT)
        F(life_fnc_pickupItem,CLIENT)
        F(life_fnc_pickupMoney,CLIENT)
        F(life_fnc_receiveItem,CLIENT)
        F(life_fnc_receiveMoney,CLIENT)
        F(life_fnc_removeLicenses,CLIENT)
        F(life_fnc_restrain,CLIENT)
        F(life_fnc_revived,CLIENT)
        F(life_fnc_robPerson,CLIENT)
        F(life_fnc_robReceive,CLIENT)
        F(life_fnc_searchClient,CLIENT)
        F(life_fnc_seizeClient,CLIENT)
        F(life_fnc_soundDevice,CLIENT)
        F(life_fnc_spikeStripEffect,CLIENT)
        F(life_fnc_tazeSound,CLIENT)
        F(life_fnc_ticketPaid,CLIENT)
        F(life_fnc_ticketPrompt,CLIENT)
        F(life_fnc_vehicleAnimate,CLIENT)
        F(life_fnc_wantedList,CLIENT)
        F(life_fnc_wireTransfer,CLIENT)
        F(SOCK_fnc_dataQuery,CLIENT)
        F(SOCK_fnc_insertPlayerInfo,CLIENT)
        F(SOCK_fnc_requestReceived,CLIENT)
        F(SOCK_fnc_updateRequestRJ,CLIENT)
        F(TON_fnc_clientGangKick,CLIENT)
        F(TON_fnc_clientGangLeader,CLIENT)
        F(TON_fnc_clientGangLeft,CLIENT)
        F(TON_fnc_clientGetKey,CLIENT)
        F(TON_fnc_clientMessage,CLIENT)
        F(TON_fnc_player_query,CLIENT)
		/* RJ EDIT */
		F(zipties_fnc_zip_tie,CLIENT)
        F(zipties_fnc_zip_gagplayer,CLIENT)
        F(zipties_fnc_zip_blindfold,CLIENT)
        F(zipties_fnc_zip_patdown,CLIENT)
        F(zipties_fnc_zip_untieFix,CLIENT)
		F(RJM_fnc_DogImob,CLIENT)
		F(RJM_fnc_Musica3D,CLIENT)
		F(RJM_fnc_Notifi,CLIENT)
		F(RJM_fnc_Musica,CLIENT)
		F(RJM_fnc_Volume,CLIENT)
		F(RJM_fnc_Notificar,CLIENT)
		F(RJM_fnc_NotificarADM,CLIENT)
		F(bis_fnc_debugconsoleexec,CLIENT) //DebugConsole - Remover Mais Rápido Possivel
		F(RJM_fnc_temOrgaos,CLIENT)
		F(RJM_fnc_Rastreando,CLIENT)
		F(RJM_fnc_TornoRastreando,CLIENT)
		F(RJM_fnc_JogadorRemovido,CLIENT)

        /* Server only functions */
        F(BIS_fnc_execVM,SERVER)
        F(DB_fnc_insertRequest,SERVER)
        F(DB_fnc_queryRequest,SERVER)
        F(DB_fnc_updatePartialRJ,SERVER)
        F(DB_fnc_updateRequestRJ,SERVER)
        F(life_fnc_jailSys,SERVER)
        F(life_fnc_wantedAdd,SERVER)
        F(life_fnc_wantedBounty,SERVER)
        F(life_fnc_wantedCrimes,SERVER)
        F(life_fnc_wantedFetch,SERVER)
        F(life_fnc_wantedProfUpdate,SERVER)
        F(life_fnc_wantedRemove,SERVER)
        F(TON_fnc_addContainer,SERVER)
        F(TON_fnc_addHouse,SERVER)
        F(TON_fnc_chopShopSell,SERVER)
        F(TON_fnc_cleanupRequest,SERVER)
        F(TON_fnc_deleteDBContainer,SERVER)
        F(TON_fnc_getID,SERVER)
        F(TON_fnc_getVehicles,SERVER)
        F(TON_fnc_insertGang,SERVER)
        F(TON_fnc_keyManagement,SERVER)
        F(TON_fnc_manageSC,SERVER)
        F(TON_fnc_pickupAction,SERVER)
        F(TON_fnc_removeGang,SERVER)
        F(TON_fnc_sellHouse,SERVER)
        F(TON_fnc_sellHouseContainer,SERVER)
        F(TON_fnc_setObjVar,SERVER)
        F(TON_fnc_spawnVehicle,SERVER)
        F(TON_fnc_spikeStrip,SERVER)
        F(TON_fnc_updateGang,SERVER)
        F(TON_fnc_updateHouseContainers,SERVER)
        F(TON_fnc_updateHouseTrunk,SERVER)
        F(TON_fnc_vehicleCreate,SERVER)
        F(TON_fnc_vehicleDelete,SERVER)
        F(TON_fnc_vehicleStore,SERVER)
        F(TON_fnc_vehicleUpdate,SERVER)
        F(TON_fnc_handleBlastingCharge,SERVER)
        F(TON_fnc_houseGarage,SERVER)
		F(TON_fnc_insureCar,SERVER)     /* Seguro De Veiculos */
		F(RJM_fnc_SetarJogador,SERVER)

        /* HeadlessClient only functions */
        F(HC_fnc_addContainer,HC)
        F(HC_fnc_addHouse,HC)
        F(HC_fnc_chopShopSell,HC)
        F(HC_fnc_deleteDBContainer,HC)
        F(HC_fnc_getVehicles,HC)
        F(HC_fnc_houseGarage,HC)
        F(HC_fnc_insertGang,HC)
        F(HC_fnc_insertRequest,HC)
        F(HC_fnc_insertVehicle,HC)
        F(HC_fnc_jailSys,HC)
        F(HC_fnc_keyManagement,HC)
        F(HC_fnc_queryRequest,HC)
        F(HC_fnc_removeGang,HC)
        F(HC_fnc_sellHouse,HC)
        F(HC_fnc_sellHouseContainer,HC)
        F(HC_fnc_spawnVehicle,HC)
        F(HC_fnc_spikeStrip,HC)
        F(HC_fnc_updateGang,HC)
        F(HC_fnc_updateHouseContainers,HC)
        F(HC_fnc_updateHouseTrunk,HC)
        F(HC_fnc_updatePartialRJ,HC)
        F(HC_fnc_updateRequestRJ,HC)
        F(HC_fnc_vehicleCreate,HC)
        F(HC_fnc_vehicleDelete,HC)
        F(HC_fnc_vehicleStore,HC)
        F(HC_fnc_vehicleUpdate,HC)
        F(HC_fnc_wantedAdd,HC)
        F(HC_fnc_wantedBounty,HC)
        F(HC_fnc_wantedCrimes,HC)
        F(HC_fnc_wantedFetch,HC)
        F(HC_fnc_wantedProfUpdate,HC)
        F(HC_fnc_wantedRemove,HC)
		F(HC_fnc_insureCar,HC)    /* Seguro De Veiculos */

        /* Functions for everyone */
        F(BIS_fnc_effectKilledAirDestruction,ANYONE)
        F(BIS_fnc_effectKilledSecondaries,ANYONE)
        F(life_fnc_animSync,ANYONE)
        F(life_fnc_broadcast,ANYONE)
        F(life_fnc_colorVehicle,ANYONE)
        F(life_fnc_corpse,ANYONE)
        F(life_fnc_demoChargeTimer,ANYONE)
        F(life_fnc_flashbang,ANYONE)
        F(life_fnc_jumpFnc,ANYONE)
        F(life_fnc_lockVehicle,ANYONE)
        F(life_fnc_pulloutVeh,ANYONE)
        F(life_fnc_say3D,ANYONE)
        F(life_fnc_setFuel,ANYONE)
        F(life_fnc_simDisable,ANYONE)
		/*RJ EDIT*/
		F(life_fnc_radio,ANYONE)
		F(life_fnc_radio3d,ANYONE)
		/* Guincho Avançado */
		F(SA_Set_Owner,ANYONE)
        F(SA_Simulate_Towing,ANYONE)
        F(SA_Hide_Object_Global,ANYONE)
        F(SA_Attach_Tow_Ropes,ANYONE)
        F(SA_Take_Tow_Ropes,ANYONE)
        F(SA_Pickup_Tow_Ropes,ANYONE)
        F(SA_Drop_Tow_Ropes,ANYONE)
        F(SA_Put_Away_Tow_Ropes,ANYONE)
        F(SA_RemoteExec,ANYONE)
        F(SA_RemoteExecServer,ANYONE)
		F(SA_hint,ANYONE)
		F(zlt_fnc_partrepair,ANYONE) /* Reparo De Veiculo */
		F(RJM_fnc_LogServidor,ANYONE)
		F(RJM_fnc_VarAssaltoPub,ANYONE)
		F(RJM_fnc_AttListaCopom,ANYONE)
    };

    class Commands {
        mode = 1;
        jip = 0;

        F(addHandgunItem,ANYONE)
        F(addMagazine,ANYONE)
        F(addPrimaryWeaponItem,ANYONE)
        F(addWeapon,ANYONE)
        F(setFuel,ANYONE)
    };
};
