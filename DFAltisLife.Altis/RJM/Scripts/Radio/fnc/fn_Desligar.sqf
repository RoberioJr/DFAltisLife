/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/


PlayMusic "";
deleteVehicle ((Vehicle Player) getVariable ["tocando", objNull]);
removeAllMusicEventHandlers "MusicStart";
removeAllMusicEventHandlers "MusicStop";
CloseDialog 0;
['Rádio Desligada!',(Vehicle Player)] remoteExec ["RJM_fnc_Notifi",0];