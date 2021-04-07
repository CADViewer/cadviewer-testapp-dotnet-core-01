// CADVIEWER INSTALLATION FOLDERS

//	var ServerLocation = "/var/www/html/cadviewer/";   					// Apache, Linux
	var ServerLocation = "C:\\xampp\\htdocs\\cadviewer_6_1_0\\"; 	    // Apache, Windows

// Location of installation Url
	var ServerUrl = "http://localhost/cadviewer_6_1_0/";        	    // Apache, Windows
//	var ServerUrl = "http://10.0.2.15/cadviewer/";        				// Apache, Linux



// LOCATION OF MAIN CONTROLLER FOR FILE CONVERTER 

	cvjs_setRestApiControllerLocation(ServerUrl+"php/");
	cvjs_setRestApiController("call-Api_Conversion.php");  	
	cvjs_setConverter("AutoXchange AX2020", "V1.00");



// SETTINGS OF PLATFORM SPECIFIC CONFIGURATION OF CONNECTORS FOR FILE READ/WRITE, REDLINE READ/WRITE, PRINT, PDF GENERATION, ETC

	cvjs_setServerHandlersPath(ServerUrl + "php/"); 

	// PHP is default, no further settings needed