{
   if(side _x == east) then {
       _x addMPEventHandler [
           "MPKilled",
           {
               //hint format ["Unit of side '%1' was killed.", side _this]; //the mentioned hint
               PontosVermelho = PontosVermelho + 1;
               publicVariable "PontosVermelho";
               //PontosVermelho call func_deadRed;
           }
       ];
   }; 
   if(side _x == west) then {    
       _x addMPEventHandler [
           "MPKilled",
           {
               //hint format ["Unit of side '%1' was killed.", side _this]; //the mentioned hint
               PontosAzul = PontosAzul + 1;
               publicVariable "PontosAzul";
               //PontosAzul call func_deadRed;
           }
       ];
   };
   if(side _x == independent) then {    
       _x addMPEventHandler [
           "MPKilled",
           {
               //hint format ["Unit of side '%1' was killed.", side _this]; //the mentioned hint
               PontosVerde = PontosVerde + 1;
               publicVariable "PontosVerde";
               //PontosVerde call func_deadRed;
           }
       ];
   };
} forEach allUnits;