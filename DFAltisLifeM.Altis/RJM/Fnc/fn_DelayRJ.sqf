/*
    Author: RobérioJR
*/

 Private ['_delay'];
 
 _delay = param [0,0,[0]];

 RJ_DelayTerminado = false;
 sleep _delay;
 RJ_DelayTerminado = true;