<?php
	if ($_REQUEST && $_REQUEST['page'])
		$page = $_REQUEST['page'];
	else
		$page = 'vue2';
	
	require "./models/models.php";
	require "./views/entete.inc.php";
	require "./views/$page.php";
	require "./views/pied.inc.php";
	
?>
