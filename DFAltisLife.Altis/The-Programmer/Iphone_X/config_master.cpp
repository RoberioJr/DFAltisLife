/*
    Author: Jean_Park

    
    • Discord : https://discord.gg/DhFUFsq 
    • Email : contact@the-programmer.com 
    • Site : the-programmer.com -> support

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information
*/
#define false 0
#define true 1

class The_Programmer_Settings_Iphone {
    default_lang = "en"; // fr / en / es

    gps_script_enable = false;
    interpol_script_enable = false;
    phone_numbers_script_enable = false;
    advenced_phone_script_enable = false;
    bill_system_script_enable = false;
    companies_script_enable = false;
    governement_script_enable = false;
    calls_management_script_enable = false;
    whitelist_menu_script_enable = false;

    enable_cellphone_animations = false; // You need to put the "The_Programmer_Cellphone" mod into your modpack !

    reboot_1 = "00H00";
    reboot_2 = "06H00";
    reboot_3 = "12H00";
    reboot_4 = "18H00";

    default_wallpaper = "The-Programmer\Iphone_X\textures\fonds\fond_3.paa";

    Fond[] = {
        {"Forest","The-Programmer\Iphone_X\textures\fonds\fond_1.paa"},
        {"Dark & Red","The-Programmer\Iphone_X\textures\fonds\fond_2.paa"},
        {"Iphone X","The-Programmer\Iphone_X\textures\fonds\fond_3.paa"},
        {"Aninme Wallpaper","The-Programmer\Iphone_X\textures\fonds\fond_4.paa"},
        {"BMW Wallpaper","The-Programmer\Iphone_X\textures\fonds\fond_5.paa"},
        {"Ferrari Wallpaper","The-Programmer\Iphone_X\textures\fonds\fond_6.paa"}
    };

    Son_sms[] = {
        {"Mario Mushroom","mario_mushroom"},
        {"Classic Whistle","classic_whistle"},
        {"Iphone","Notif_iphone"},
        {"Samsung","Samsung"}
    };

    Sonnerie[] = {
        {"ArmyWakeup","ArmyWakeup"},
        {"Bahbahbah","bahbahbah"},
        {"Dont Worry Be Happy","DontWorryBeHappy"},
        {"Hurr Durr","HurrDurr"},
        {"Iphone","IsThatMyiPhone"},
        {"Rocket Ship","RocketShip"},
        {"Smoke Weed","SmokeWeed"}
    };

    class Cfg_Buttons {
        class Clefs {
            action = "createDialog ""The_Programmer_Iphone_Key_Menu"";";
            displayName = "Chaves";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\clef.paa";
        };
        class Setting {
            action = "if (((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""phone_numbers_script_enable"")) isEqualTo 1) && ((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""advenced_phone_script_enable"")) isEqualTo 1)) then {createDialog ""The_Programmer_Iphone_Settings_Menu_3"";} else {if ((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""phone_numbers_script_enable"")) isEqualTo 1) then {createDialog ""The_Programmer_Iphone_Settings_Menu_2"";} else {createDialog ""The_Programmer_Iphone_Settings_Menu"";};};";
            displayName = "Configurações";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\reglage.paa";
        };
        class contact {
            action = "[1] spawn the_programmer_iphone_fnc_contactmenu;";
            displayName = "Contatos";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""advenced_phone_script_enable"")) isEqualTo 1) || ((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""phone_numbers_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\contact.paa";
        };
        class ButtonMyGang {
            action = "if (isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""The_Programmer_Iphone_Create_Gang_Menu"";} else {[] spawn the_programmer_iphone_fnc_gangMenu;};};";
            displayName = "Gangue";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\groupe.paa";
        };
        class Licences {
            action = "[] call the_programmer_iphone_fnc_Licences_Menu;";
            displayName = "Licensas";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\licence.paa";
        };
        class SyncData {
            action = "[] call SOCK_fnc_syncData;";
            displayName = "Salvar Dados";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\syncro.paa";
        };
        class Banking {
            action = "[1] call the_programmer_iphone_fnc_PayEasy;";
            displayName = "Conta Bancaria";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\banque.paa";
        };
        class Inventaire {
            action = "createDialog ""The_Programmer_Iphone_Stuff_Menu"";";
            displayName = "Inventario";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\sac.paa";
        };
        class Message {
            action = "if ((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""phone_numbers_script_enable"")) isEqualTo 1) then {createDialog ""The_Programmer_Iphone_Cell_Menu""; } else {createDialog ""The_Programmer_Iphone_Cell_TONIC_Menu"";};";
            displayName = "Mensagem";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\chat.paa";
        };
        class Weather {
            action = "[] spawn the_programmer_iphone_fnc_weatherMenu;";
            displayName = "Clima";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\Meteo.paa";
        };
        class Camera {
            action = "closeDialog 0; [] spawn the_programmer_iphone_fnc_cameraMenu;";
            displayName = "Camera";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""enable_cellphone_animations"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\camera.paa";
        };
        class Entreprise {
            action = "[] spawn max_entreprise_fnc_openMenu;";
            displayName = "Empresa";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""companies_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\Entreprise.paa";
        };
        class Governement {
            action = "closeDialog 0; [] spawn max_gouvernement_fnc_selectGovernementMenu;";
            displayName = "Governement";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""governement_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\Gouvernement.paa";
        };
        class GPS {
            action = "[] call gps_menu_fnc_loadGPSMenu;";
            displayName = "GPS";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""gps_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\gps.paa";
        };
		/*
        class Clavier {
            action = "createDialog ""The_Programmer_Iphone_Clavier_Menu"";";
            displayName = "Caderno De Numeros";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""advenced_phone_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\call.paa";
        };
        class Facture {
            action = "createDialog ""facture_list"";";
            displayName = "Contas";
            condition = "((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""bill_system_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\facture.paa";
        };
		*/
		class Clavier {
            action = "closeDialog 0; createDialog ""RJ_MenuAnims"";";
            displayName = "Menu De Animações";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\anim.paa";
        };
		class Facture {
            action = "CloseDialog 0; [] call life_fnc_marketMenu;";
            displayName = "Mercado";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\mercado.paa";
        };
        class Admin {
            action = "closeDialog 0; createDialog ""the_programmer_admin_menu"";";
            displayName = "Menu Admin";
            condition = "((call life_adminlevel) >= 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\admin.paa";
        };
		/*
        class CallsManagement {
            action = "[] spawn max_callsmanage_fnc_openCallsManagementMenu;";
            displayName = "Dispatch";
            condition = "(((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""calls_management_script_enable"")) isEqualTo 1) && !(playerSide isEqualTo civilian))";
            picture = "The-Programmer\Iphone_X\textures\icons\dispatch.paa";
        };
        class Interpol {
            action = "if ((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""interpol_script_enable"")) isEqualTo 1) then {closeDialog 0; [0] remoteExec [""max_interpol_fnc_getInterpol"",2];} else {[] call life_fnc_wantedMenu;};";
            displayName = "Lista De Procurados";
            condition = "playerSide isEqualTo West";
            picture = "The-Programmer\Iphone_X\textures\icons\police.paa";
        };
		*/
		class CallsManagement {
            action = "closeDialog 0; [0] call life_call_start;";
            displayName = "Copom Medico";
            condition = "PlayerSide IsEqualTo Independent";
            picture = "The-Programmer\Iphone_X\textures\icons\dispatch.paa";
        };
		class Interpol {
            action = "closeDialog 0; [] call life_fnc_wantedMenu;";
            displayName = "Lista De Procurados";
            condition = "";
            picture = "The-Programmer\Iphone_X\textures\icons\police.paa";
        };
		/*
        class WhiteList {
            action = "createDialog ""whitelist_menu"";";
            displayName = "Whitelist Menu";
            condition = "((call life_adminlevel) >= 1) && ((getNumber (missionConfigFile >> ""The_Programmer_Settings_Iphone"" >> ""whitelist_menu_script_enable"")) isEqualTo 1)";
            picture = "The-Programmer\Iphone_X\textures\icons\whitelist.paa";
        };
		*/
		class WhiteList {
            action = "closeDialog 0; [] call RJM_fnc_ColocaveisMenu;";
            displayName = "Menu De Objetos";
            condition = "PlayerSide in [west,independent]";
            picture = "The-Programmer\Iphone_X\textures\icons\cone.paa";
        };
    };
};