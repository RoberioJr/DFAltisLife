/*

    Author: RobérioJR
	|07/08/18|

*/

Private _ArmasPermitidas = Armas;
private _ArmaDoJogador = (weapons player);

{
    _ArmasPermitidas set [_forEachIndex,toLower(_x)];
} forEach _ArmasPermitidas;
{
    _ArmaDoJogador set [_forEachIndex,toLower(_x)];
} forEach _ArmaDoJogador;

private _ArmasProibidas = {!(_x in _ArmasPermitidas)} count _ArmaDoJogador;
if (_ArmasProibidas > 0) then 
{
	removeAllWeapons player;
	playSound "FD_CP_Not_Clear_F";
	[] spawn {
	  cutText ["Use Somente Armas Liberadas No Arsenal Virtual","BLACK", 2];
	  sleep 10;
	  cutText ["", "BLACK IN"];	
	};
	IrregularidadesL = IrregularidadesL + 1;
	call RJ_fnc_IniciarLoadout;
};

{
   if !(_x IsEqualTo "") then {
	if !(_x in Itens) then {		
		
		player removePrimaryWeaponItem _x;
		hint format["Olá %1, Sua Mira ou Silenciador Foram Retirados De Sua Arma e Esta Ação Foi Uma Medida De precaução", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use Somente Armas Liberadas No Arsenal Virtual","PLAIN", 2];	
		IrregularidadesL = IrregularidadesL + 1;
	};
   };
} forEach (primaryWeaponItems player);
/*

private _badbackpack = ['B_Bergen_tna_F',
                        'B_Bergen_mcamo_F',
						'B_Bergen_hex_F',
						'B_Bergen_dgtl_F',
						'B_UAV_01_backpack_F',
						'O_UAV_01_backpack_F',
						'B_Carryall_khk',
						"B_Carryall_cbr",
						"B_Carryall_mcamo",
						"B_Carryall_oli",
						"B_Carryall_oucamo",
						"B_Carryall_ocamo",
						"B_Carryall_ghex_F",
					    'B_ViperHarness_blk_F',
					    'B_ViperHarness_hex_F',
					    'B_ViperHarness_ghex_F',
					    'B_ViperHarness_khk_F',
					    'B_ViperHarness_oli_F',
						'I_UAV_01_backpack_F'];

	if (backpack player in _badbackpack) then {
		removeBackpackGlobal player;
		hint format["%1 sua mochila foi removida e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use Somente Armas Liberadas No Arsenal Virtual","PLAIN", 2];		
	};	


private _baditembackpack = [
	'optic_tws',
	'optic_tws_mg',
	'optic_Nightstalker',
	'H_HelmetO_ViperSP_hex_F',
	'H_HelmetO_ViperSP_ghex_F',
	'H_HelmetB_Enh_tna_F',
	'H_HelmetSpecO_ghex_F',
	'H_HelmetLeaderO_ghex_F',
	'H_HelmetO_ghex_F',
	'H_HelmetCrew_O_ghex_F',
	'H_HelmetB_TI_tna_F',					 
	'NVGogglesB_grn_F',
	'NVGogglesB_gry_F',
	'NVGogglesB_blk_F',
	'V_PlateCarrierL_CTRG',
	'V_PlateCarrierH_CTRG',
	'V_PlateCarrierSpec_rgr',
	'V_PlateCarrierSpec_blk',
	'V_PlateCarrierSpec_mtp',
	'V_PlateCarrierGL_tna_F',
	'V_PlateCarrierSpec_tna_F',
	'V_PlateCarrier1_tna_F',
	'V_PlateCarrier2_tna_F',
	'V_PlateCarrier1_rgr_noflag_F',
	'V_PlateCarrier2_rgr_noflag_F',
	'B_UavTerminal',
	'O_UavTerminal',
	'I_UavTerminal',
	 //silencers
	 'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan',
	'SmokeShellPurple',
	'SLAMDirectionalMine_Wire_Mag',
	'ATMine_Range_Mag'							 
	];
{
	if (_x in _baditembackpack) then {
		
		player removeItemFromBackpack _x;
		hint format["%1 o item restrito foi retirado de sua mochila e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual","PLAIN", 2];			
	};
} forEach (backpackItems player);

*/
   if !(vest player IsEqualTo "") then {
	If !(vest player in Itens) then {
	
		removeVest player;
		hint format["%1 Seu Colete Foi Eemovido e Esta Ação Foi Armazenada Em Nosso Sistema.", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use Somente Items Liberados No Arsenal Virtual","PLAIN", 2];	
        IrregularidadesL = IrregularidadesL + 1;	
	};	
  };
/*

private _badvestitems = [
	'optic_tws',
	'optic_tws_mg',
	'optic_Nightstalker',
	'H_HelmetO_ViperSP_hex_F',
	'H_HelmetO_ViperSP_ghex_F',
	'H_HelmetB_Enh_tna_F',
	'H_HelmetSpecO_ghex_F',
	'H_HelmetLeaderO_ghex_F',
	'H_HelmetO_ghex_F',
	'H_HelmetCrew_O_ghex_F',
	'H_HelmetB_TI_tna_F',					
	'NVGogglesB_grn_F',
	'NVGogglesB_gry_F',
	'NVGogglesB_blk_F',
	'V_PlateCarrierL_CTRG',
	'V_PlateCarrierH_CTRG',
	'V_PlateCarrierSpec_rgr',
	'V_PlateCarrierSpec_blk',
	'V_PlateCarrierSpec_mtp',
	'V_PlateCarrierGL_tna_F',
	'V_PlateCarrierSpec_tna_F',
	'V_PlateCarrier1_tna_F',
	'V_PlateCarrier2_tna_F',
	'V_PlateCarrier1_rgr_noflag_F',
	'V_PlateCarrier2_rgr_noflag_F',
	'B_UavTerminal',
	'O_UavTerminal',
	'I_UavTerminal',
	//silencers
	'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan',
	'SmokeShellPurple',
	'SLAMDirectionalMine_Wire_Mag',
	'ATMine_Range_Mag'	
	];
{
	if (_x in _badvestitems) then {
		
		player removeItemFromVest _x;
		hint format["%1 o item restrito foi retirado de seu colete e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];	
	};
} forEach (vestItems player);
////////////////////////////////////////////////////////////////////////

private _baduniformitem = [
	'optic_tws',
	'optic_tws_mg',
	'optic_Nightstalker',
	'H_HelmetO_ViperSP_hex_F',
	'H_HelmetO_ViperSP_ghex_F',
	'H_HelmetB_Enh_tna_F',
	'H_HelmetSpecO_ghex_F',
	'H_HelmetLeaderO_ghex_F',
	'H_HelmetO_ghex_F',
	'H_HelmetCrew_O_ghex_F',
	'H_HelmetB_TI_tna_F',					   
	'NVGogglesB_grn_F',
	'NVGogglesB_gry_F',
	'NVGogglesB_blk_F',
	'V_PlateCarrierL_CTRG',
	'V_PlateCarrierH_CTRG',
	'V_PlateCarrierSpec_rgr',
	'V_PlateCarrierSpec_blk',
	'V_PlateCarrierSpec_mtp',
	'V_PlateCarrierGL_tna_F',
	'V_PlateCarrierSpec_tna_F',
	'V_PlateCarrier1_tna_F',
	'V_PlateCarrier2_tna_F',
	'V_PlateCarrier1_rgr_noflag_F',
	'V_PlateCarrier2_rgr_noflag_F',
	'B_UavTerminal',
	'O_UavTerminal',
	'I_UavTerminal',
	//silencers
	'muzzle_snds_L',
	'muzzle_snds_acp',
	'muzzle_snds_m_khk_F',
	'muzzle_snds_m_snd_F',
	'muzzle_snds_58_wdm_F',
	'muzzle_snds_H_khk_F',
	'muzzle_snds_H_snd_F',
	'muzzle_snds_H_MG',
	'muzzle_snds_H_MG_blk_F',
	'muzzle_snds_H_MG_khk_F',
	'muzzle_snds_65_TI_hex_F',
	'muzzle_snds_65_TI_ghex_F',
	'muzzle_snds_B_khk_F',
	'muzzle_snds_B_snd_F',
	'muzzle_snds_338_black',
	'muzzle_snds_338_green',
	'muzzle_snds_338_sand',
	'muzzle_snds_93mmg',
	'muzzle_snds_93mmg_tan',
	'SmokeShellPurple',
	'SLAMDirectionalMine_Wire_Mag',
	'ATMine_Range_Mag'								   
	];
{
	if (_x in _baduniformitem) then {
		
		player removeItemFromUniform _x;
		hint format["%1 o item restrito foi retirado de seu uniforme, esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual TEAM CORE SERVER","PLAIN", 2];			
	};
} forEach (uniformItems player);
*/
   if !(hmd player IsEqualTo "") then {
	If !(hmd player in Itens) then {
		player unlinkItem hmd player;
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use Somente Items Liberados no Arsenal Virtual","BLACK", 2];
		sleep 10;
		cutText ["", "BLACK IN"];
		IrregularidadesL = IrregularidadesL + 1;
	};
   };

/*
private _badheadgear = ['H_CrewHelmetHeli_B','H_CrewHelmetHeli_O','H_CrewHelmetHeli_I','H_HelmetO_ViperSP_ghex_F','H_HelmetO_ViperSP_hex_F','H_HelmetB_Enh_tna_F','H_HelmetSpecO_ghex_F','H_HelmetLeaderO_ghex_F','H_HelmetO_ghex_F','H_HelmetCrew_O_ghex_F','H_HelmetB_TI_tna_F'];

	If (headgear player in _badheadgear) then {
		removeheadgear player;
		hint format["%1 vc foi morto por usar um item proibido e esta ação foi logada em nosso sistema", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use somente itens liberados no Arsenal Virtual","PLAIN", 2];
	};

*/
   if !(uniform player IsEqualTo "") then {
	If !(uniform player in Itens) then {
		removeUniform player;
		hint format["%1, Um Uniforme Proibido Foi Removido Do Seu Inventário!", name player];
		playSound "FD_CP_Not_Clear_F";
		cutText ["Use Somente Items Liberados No Arsenal Virtual!!","PLAIN", 2];
        IrregularidadesL = IrregularidadesL + 1;	
	};	
   };
	
SystemChat format['Loadout Check! Resultados: %1 Irregularidades ', IrregularidadesL];
if (IrregularidadesL > 7) then {  
    [] spawn { 
	  cutText ["Foram Detectadas Muitas Irregularidades Em Sua Sessão, Você Será Expulso e Essa Ação Será Registrada.","BLACK", 2];
	  hint 'Foram Detectadas Muitas Irregularidades Em Sua Sessão, Você Será Expulso e Essa Ação Será Registrada.';
	  sleep 8;
	  endMission "Expulso Por Exesso De Irregularidades! (MAX 8)";	
	};
	[] spawn {
	    cutText ["Foram Detectadas Muitas Irregularidades Em Sua Sessão, Você Será Expulso e Essa Ação Será Registrada.","BLACK", 2];
		sleep 2.5;
		cutText ["Foram Detectadas Muitas Irregularidades Em Sua Sessão, Você Será Expulso e Essa Ação Será Registrada.","BLACK", 2];
		sleep 2.5;
		cutText ["Foram Detectadas Muitas Irregularidades Em Sua Sessão, Você Será Expulso e Essa Ação Será Registrada.","BLACK", 2];
		sleep 2.5;
		cutText ["Foram Detectadas Muitas Irregularidades Em Sua Sessão, Você Será Expulso e Essa Ação Será Registrada.","BLACK", 2];
	};
};