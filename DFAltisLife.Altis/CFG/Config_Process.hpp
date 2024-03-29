/*
*   class:
*       MaterialsReq (Needed to process) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       MaterialsGive (Returned items) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       Text (Progess Bar Text) = Localised String
*       NoLicenseCost (Cost to process w/o license) = Scalar
*
*   Example for multiprocess:
*
*   class Example {
*       MaterialsReq[] = {{"cocaine_processed",1},{"heroin_processed",1}};
*       MaterialsGive[] = {{"diamond_cut",1}};
*       Text = "STR_Process_Example";
*       //ScrollText = "Process Example";
*       NoLicenseCost = 4000;
*   };
*/

class ProcessAction {
    class oil {
        MaterialsReq[] = {{"oil_unprocessed",1}};
        MaterialsGive[] = {{"oil_processed",1}};
        Text = "STR_Process_Oil";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class diamond {
        MaterialsReq[] = {{"diamond_uncut",1}};
        MaterialsGive[] = {{"diamond_cut",1}};
        Text = "STR_Process_Diamond";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };

    class copper {
        MaterialsReq[] = {{"copper_unrefined",1}};
        MaterialsGive[] = {{"copper_refined",1}};
        Text = "STR_Process_Copper";
        //ScrollText = "Refine Copper";
        NoLicenseCost = 750;
    };

    class iron {
        MaterialsReq[] = {{"iron_unrefined",1}};
        MaterialsGive[] = {{"iron_refined",1}};
        Text = "STR_Process_Iron";
        //ScrollText = "Refine Iron";
        NoLicenseCost = 1120;
    };

    class salt {
        MaterialsReq[] = {{"salt_unrefined",1}};
        MaterialsGive[] = {{"salt_refined",1}};
        Text = "STR_Process_Salt";
        //ScrollText = "Refine Salt";
        NoLicenseCost = 450;
    };
	
	class uranio {
		MaterialsReq[] = {{"uranio",1}};
        MaterialsGive[] = {{"uraniop",1}};
        Text = "STR_Process_uranio";
        //ScrollText = "Refine Salt";
        NoLicenseCost = 1250;
	};

	/* TABACO */
	class cocaine {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocaine_processed",1}};
        Text = "STR_Process_Cocaine";
        //ScrollText = "Process Cocaine";
        NoLicenseCost = 12500;
    };
	
	class heroin {
        MaterialsReq[] = {{"heroin_unprocessed",1}};
        MaterialsGive[] = {{"heroin_processed",1}};
        Text = "STR_Process_Heroin";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 10750;
    };

    class marijuana {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"marijuana",1}};
        Text = "STR_Process_Marijuana";
        //ScrollText = "Harvest Marijuana";
        NoLicenseCost = 10500;
    };
	
	class lsd {
        MaterialsReq[] = {{"lsd_unprocessed",1}};
        MaterialsGive[] = {{"lsd_processed",1}};
        Text = "STR_Process_Lsd";
        //ScrollText = "Process Lsd";
        NoLicenseCost = 10500;
    };
	
	class metanfetamina {
        MaterialsReq[] = {{"metanfetamina_unprocessed",1}};
        MaterialsGive[] = {{"metanfetamina_processed",1}};
        Text = "STR_Process_Metanfetamina";
        //ScrollText = "Process metanfetamina";
        NoLicenseCost = 10500;
    };
	
	class cement {
        MaterialsReq[] = {{"rock",1}};
        MaterialsGive[] = {{"cement",1}};
        Text = "STR_Process_Cement";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 350;
    };
	
	class papel {
        MaterialsReq[] = {{"madeira",1}};
        MaterialsGive[] = {{"papel",1}};
        Text = "STR_Process_Papel";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 9000;
    };
	
	/*class fabrica_cerveja {
        MaterialsReq[] = {{"malte",1}, {"lupulo",1}, {"agua",5}};
        MaterialsGive[] = {{"caixa_cerveja",1}};
        Text = "STR_Process_Fabrica_cerveja";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 9000;
    };*/
	
	class aco_lapidado {
        MaterialsReq[] = {{"aco",2}};
        MaterialsGive[] = {{"aco_lapidado",1}};
        Text = "STR_Process_Aco_Lapidado";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 15000;
    };

	class pepita_lapidada {
        MaterialsReq[] = {{"pepita",2}};
        MaterialsGive[] = {{"pepita_lapidada",1}};
        Text = "STR_Process_Pepita_Lapidada";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 12000;
    };
	
};
