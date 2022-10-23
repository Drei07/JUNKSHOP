<?php
	try {

		// Localhost
		// $pdoConnect = new PDO("mysql:host=localhost;dbname=chopshop", "root", "");

		// Live
		$pdoConnect = new PDO("mysql:host=localhost;dbname=u867039073_chopshop", "u867039073_chopshop", "Chopshop2022");

		$pdoConnect->setAttribute(PDO:: ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);

	}
	catch (PDOException $exc){
		echo $exc -> getMessage();
	}
    catch (PDOException $exc){
        echo $exc -> getMessage();
    exit();
    }
?>