#include "..\..\script_macros.hpp"
/*

    Author: RobérioJR

*/

switch (playerSide) do
{
	case west:
	{
		switch(FETCH_CONST(life_coplevel)) do
		{
		 /* Policia Militar */
			case 0: {life_paycheck = life_paycheck + 0;};
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 6000;}; 
			case 3: {life_paycheck = life_paycheck + 7000;}; 
			case 4: {life_paycheck = life_paycheck + 8000;}; 
			case 5: {life_paycheck = life_paycheck + 9000;}; 
			case 6: {life_paycheck = life_paycheck + 10000;}; 
			case 7: {life_paycheck = life_paycheck + 11000;};
			case 8: {life_paycheck = life_paycheck + 12000;};
			case 9: {life_paycheck = life_paycheck + 13000;};
			case 10: {life_paycheck = life_paycheck + 14000;};
			case 11: {life_paycheck = life_paycheck + 15000;};
			case 12: {life_paycheck = life_paycheck + 16000;};
			case 13: {life_paycheck = life_paycheck + 17000;};
		};
		switch(FETCH_CONST(life_donorlevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 250;};
			case 2: {life_paycheck = life_paycheck + 500;}; 
			case 3: {life_paycheck = life_paycheck + 750;}; 
			case 4: {life_paycheck = life_paycheck + 1000;}; 
			case 5: {life_paycheck = life_paycheck + 1250;}; 
		};
	};

	case independent:
	{
		switch(FETCH_CONST(life_mediclevel)) do
		{
		    //SAMU
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;}; 
			case 2: {life_paycheck = life_paycheck + 5000;}; 
			case 3: {life_paycheck = life_paycheck + 7000;};
			case 4: {life_paycheck = life_paycheck + 9000;};
			case 5: {life_paycheck = life_paycheck + 11000;};
			case 6: {life_paycheck = life_paycheck + 13000;};
			case 7: {life_paycheck = life_paycheck + 15000;};
			case 8: {life_paycheck = life_paycheck + 17000;};
			//BM
			case 9: {life_paycheck = life_paycheck + 0;};
			case 10: {life_paycheck = life_paycheck + 5000;};
			case 11: {life_paycheck = life_paycheck + 7000;};
			case 12: {life_paycheck = life_paycheck + 9000;};
			case 13: {life_paycheck = life_paycheck + 11000;};
			case 14: {life_paycheck = life_paycheck + 13000;};
			case 15: {life_paycheck = life_paycheck + 15000;};
			case 16: {life_paycheck = life_paycheck + 17000;};
		};
		switch(FETCH_CONST(life_donorlevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 250;};
			case 2: {life_paycheck = life_paycheck + 500;}; 
			case 3: {life_paycheck = life_paycheck + 750;}; 
			case 4: {life_paycheck = life_paycheck + 1000;}; 
			case 5: {life_paycheck = life_paycheck + 1250;}; 
		};
	};
	
	case civilian:
	{
		switch(FETCH_CONST(life_donorlevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 250;};
			case 2: {life_paycheck = life_paycheck + 500;}; 
			case 3: {life_paycheck = life_paycheck + 750;}; 
			case 4: {life_paycheck = life_paycheck + 1000;}; 
			case 5: {life_paycheck = life_paycheck + 1250;}; 
		};
		/* Ajudantes */
		switch(FETCH_CONST(life_adminlevel)) do
		{
		    case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 750;};
			case 2: {life_paycheck = life_paycheck + 1250;}; 
			case 3: {life_paycheck = life_paycheck + 1750;}; 
		};
		/* Licenças */
		If (!license_civ_rebel) Then {life_paycheck = life_paycheck + 2000;};
		If (license_civ_uber) Then {life_paycheck = life_paycheck + 250;};
	};
};


