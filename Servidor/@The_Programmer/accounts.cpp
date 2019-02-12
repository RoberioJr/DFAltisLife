/*
	What is this?
	To link your server with you the programmer account to have more informations to help you for the installation of your next products.
	This is important to start our products on your server because the core do a lot of work to have an easy installation for all our products.

	This is required to start your server for security reasons. If you do not put the right email adress, you server will not work.

	EXAMPLE : (DO NOT USE THESE EMAIL ADRESS, THEY ARE NOT WORKING ITS ONLY AN EXAMPLE)

	accounts[] = {
	    "contact@the-programmer.com",
	    "postmaster@the-programmer.com"
	};
*/

accounts[] = {
	"joabeaf.12@gmail.com"
};


/*
	What is this?
	The Programmer has a global ban system so hackers don't jump around servers and learn how to bypass The Programmer.

	If you as a server admin want him to get in even tho he is globally banned,	just ask for his UID and add the UID in the array below.
*/
enable_global_ban_sync = false; // If disable, all people banned by the programmer will be able to join your server (RECOMMENDED TO USE DEFAULT : true)

bypass_global_ban_uids[] = {
	"UID1","UID2","UID3","..."
};

/*
	What is this?
	The programmer can detect errors in the installation of our products on your server.
*/
errors_detection = false;

descriptionPath = "description.ext";
cfgRemoteExecPath = "CFG\Config_RemoteExec.hpp";
coreInitPath = "core\init.sqf";
