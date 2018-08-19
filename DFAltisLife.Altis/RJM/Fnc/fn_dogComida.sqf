[] spawn { 
 disableUserInput true; 
 dog AllowDamage false;
 dog playMove "Dog_sit"; 
 dog attachto [player,[0.17,0.45,0.03]];  
 dog SetDir 180;
 sleep 4; 
 disableUserInput false;
 detach dog; 
 Sleep 3;
 dog AllowDamage true;
};