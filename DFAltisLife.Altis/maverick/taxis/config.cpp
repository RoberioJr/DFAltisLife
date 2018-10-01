/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define true 1
#define false 0

class maverick_taxis_cfg {
	class pricing {
		pricePerKilometre 					= 2500;  // Reais
		basePrice							= 5000; // Price at which billing starts, required to call a taxi
		moneyHandVariable					= "RJM_GRANA";
		moneyBankVariable					= "RJM_BANCO";
		paymentSource						= "BOTH";
		fullRefundOnDriverAbort				= true;
	};

	class keybindings {
		keyCode								= 20; // Keycodes can be found at https://community.bistudio.com/wiki/DIK_KeyCodes
		reqShift							= false;
		reqAlt								= true;
		reqCtrl								= false;
	};

	class general {
		automaticNavigation 				= true; // Automatically starts Navigator once the user has to go to a specific point
	};

	class drivers {
		//condition 							= "true";
		condition                           = "license_civ_uber";
	};

	class localization {
		// Localization
		msgMainInfoNoTaxiCalled	=			"<t size='2'>Você não tem uma chamada de Uber ativa!</t><br/><t>Clique em 'Chamar Uber' para criar uma solicitação de Uber para todos os motoristas de Uber disponíveis!</t><br/><br/><t font='RobotoCondensedBold'>Motoristas disponíveis: %1</t>";
		msgMainInfoNoTaxiYet =				"<t size='2'>Um Uber foi chamado!</t><br/><t>Nenhum Motorista aceitou seu pedido ainda. Você será notificado quando um motorista de Uber o fizer!</t><br/><br/><t font='RobotoCondensedBold'>Motoristas disponíveis: %1</t>";
		msgTaxiCalled = 					"Uma Chamada De Uber Foi Criada!";
		msgTaxiCancelled = 					"Seu pedido de Uber atual foi cancelado!";
		msgTaxiFareCancelled =				"Você cancelou a tarifa";
		msgTaxiCancelConfirm =				"Um Uber já aceitou o seu pedido e está a caminho de você. Tem certeza de que ainda deseja cancelar?";
		msgTaxiCancelHeader	=				"Cancelar Chamada";
		msgTaxiCancelButtonConfirm =		"Sim";
		msgTaxiCancelButtonCancel =			"Não";
		msgTaxiCancelDriverConfirm =		"Tem certeza de que deseja cancelar a tarifa? Se um preço base já foi transferido para você, ele será transferido novamente para o cliente.";
		msgTaxiMeterInfoText = 				"<t>Distancia Total</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Tempo decorrido</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Preço Total (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>";
		msgTaxiMeterStatusTextActive = 		"<t align='right' font='RobotoCondensedBold'>ATIVO</t>";
		msgTaxiMeterStatusTextInactive = 	"<t align='right' font='RobotoCondensedBold'>INATIVO</t>";
		masTaxiInfoPleaseWait =				"<t size='2'>%1 está a caminho de você!</t><br/>Por favor, aguarde a sua localização atual para o seu motorista de Uber. Ele está atualmente a %2 de distância.</t>";
		msgTaxiFareCancelledAsCustomer =	"Seu Uber cancelou a tarifa";
		masTaxiFareCancelledAsDriver =		"Seu cliente cancelou a tarifa.";
		msgTaxiCallAccepted =				"Um motorista de motorista de Uber está a caminho";
		msgTaxiDriverNotAvailable =			"Você não atende aos requisitos para trabalhar como Motorista Uber";
		msgTaxiDestinationUpdated =			"O destino foi atualizado";
		msgTaxiNoRoadNearFound =			"Nenhum segmento de estrada perto da posição encontrado!";
		msgTaxiCannotCallWhileDriver =		"Você não pode chamar um Uber enquanto está de plantão como motorista de Uber!";
		msgTaxiCannotDriveWhileCalling =	"Você não pode trabalhar como motorista de Uber enquanto chama a si mesmo!";
		msgTaxiSpamClickPrevention =		"Você não pode fazer essa ação tão rápido!";
		msgTaxiAlreadyInFare =				"Você já aceitou uma tarifa!";
		msgCallTaxi =						"Chamar Uber";
		msgBaseNotAffordable =				"Você não tem dinheiro suficiente para chamar um Uber!";
		msgPaidCustomer =					"Chegou ao seu destino.<br/>Pagamento Total: R$%1";
		msgNotFullyPaidCustomer =			"Chegou ao seu destino. Você não podia pagar a quantia total de R$%1, em vez de R$%2 (excluindo taxa base) foram pagos!";
		msgPaidDriver =						"Você chegou ao destino.<br/>Seu cliente pagou você <t color='#43a047'>R$%1</t>.";
		msgNotFullyPaidDriver =				"Você chegou ao destino. Seu cliente não pode pagar o valor total de <t color='#43a047'>R$%1</t>, em vez de <t color='#43a047'>%2$</t> (excluindo taxa base) foram transferidos para você.";
		msgPayCustomer =					"Chegou ao seu destino.<br/>O pagamento total que é feito é R$%1.";
		msgPayDriver =						"Você chegou ao destino.<br/>Seu cliente foi solicitado a pagar R$%1.";
		msgTotalPayment =					"Pagamento Total: R$%1";
		msgTaximeterPositionSaved =			"Posição do taxímetro salva";
		msgTaximeterPositionReset =			"Posição do taxímetro resetada";
		msgTaxiPressSpaceSaveSettings = 	"Pressione [SPACE] para salvar";
		msgNowOnDuty =						"Agora você está de plantão e receberá notificações quando receber uma chamada de Uber!";
		msgNowOffDuty =						"Você está agora de folga";
		msgTaxiMenuActiveCalls =			"Ver chamadas ativas";
		msgTaxiNewCallCreated = 			"Uma nova chamada de Uber foi criada";
		msgTaxiBillingPayment =				"Pagamento total por distância percorrida";
		msgTaxiBillingDriverMissingP =		"Quantidade não acessível pelo cliente";
		msgTaxiBillingBasePrice =			"Preço base";
		msgTaxiBillingCustomerMissingP =	"Quantidade não acessível";
		msgTaxiCurrentFareInformation =		"Informações atuais sobre tarifa";
		msgTaxiBillingCancelled =			"Tarifa cancelada";


		// Tasks
		msgTaskDriverPickupDescription =	"Pegue seu passageiro neste local";
		msgTaskDriverPickupDescriptionS =	"PEGAR";
		msgTaskDriverPickupHUD =			"Pegar";

		msgTaskCustomerDriverDescription =	"Entre no veículo do motorista";
		msgTaskCustomerDriverDescriptionS =	"ENTRAR";
		msgTaskCustomerDriverHUD =			"Entrar";

		msgTaskDriverGoToDescription =		"Destino do cliente";
		msgTaskDriverGoToDescriptionS =		"DESTINO";
		msgTaskDriverGoToDriverHUD =		"Mova aqui";

		#define dialogCallTaxiTitle			"Serviço Uber"
		#define dialogCancelTaxi			"Cancelar Chamada de Uber"
		#define dialogClose					"Fechar"
		#define dialogTaxiMeter				"Taximetro"
		#define dialogTaxiFareList			"Chamadas Disponiveis"
		#define dialogTaxiGoOnDuty			"Vá no dever"
		#define dialogTaxiGoOffDuty			"Vá em frente"
		#define dialogTaxiAcceptCall		"Aceitar Chamada Selecionada"
		#define dialogTaxiCancelCall		"Cancelar Chamada Atual"
		#define dialogMenuCustomer			"Chamar Uber"
		#define dialogMenuDriver			"Trabalhar Como Uber"
		#define dialogMenuSettings			"Configurações"
		#define dialogDestination			"Destino"
		#define dialogHowToDestination		"Clique duas vezes em uma posição no mapa para marcá-la como seu destino. Se você já tiver um motorista vindo até você, ele será notificado sobre a posição atualizada."
		#define dialogStatusTitle			"Status Da Chamada"
		#define dialogStatusMarkedDest		"Destino Selecionado"
		#define dialogStatusCreatedCall		"Chamada Criada"
		#define dialogStatusDriverFound		"O Motorista Aceitou a Chamada"
		#define dialogStatusPickedUp		"Seja Pego"
		#define dialogSettingsCustomizePos	"Posição Do Taximetro"
		#define dialogSettingsCustomize		"Customizar"
		#define dialogSettingsReset			"Resetar"
		#define dialogDragMe				"Drag Me"
		#define dialogFareSummaryTitle		"Resumo de tarifas"
		#define dialogSummaryClosePromt		"[ALT] + [T] para fechar"
		#define dialogAvaibleDrivers		"Motoristas Disponiveis"
	};
};

#include "gui\taxi_gui_master.cpp"
