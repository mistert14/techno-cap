<?php

	if ($_POST && $_POST['choix_classe'])
		$choix_classe = $_POST['choix_classe'];
	else
		$choix_classe = 1;
		
	if ($_POST && $_POST['choix_contenu'])
		$choix_contenu = $_POST['choix_contenu'];
	else
		$choix_contenu = 1;
	
	if ($_POST && $_POST['update_ajax']) {
		require ('../models/models.php');
		if ( $_POST['update_ajax'] == 'CAPA')
			die(giveCapacites());
		if ( $_POST['update_ajax'] == 'CONT')
			die(giveContenus());
		if ( $_POST['update_ajax'] == 'CAPA_ID')
			die(giveCapaById());
	
	}
	
	function giveClasses() {
		$c = new Classes();
		echo '<select id ="choix_classe" name="choix_classe">';
		foreach($c->liste_classes() as $cl)
			echo "<br /><option value=$cl->id>$cl->classe</option>";
		echo '</select>';
	}
	
	function giveContenus() {
		$cont = new Contenus();
		echo '<select id="choix_contenu" name="choix_contenu">';
		
		foreach($cont->liste_contenus() as $content)
			echo "<br /><option value=$content->id>$content->contenu</option>";
		echo '</select>';
		
	}
	
	function giveCapacites() {
		global $choix_classe, $choix_contenu;
		$cap = new Capacites();
		
		$test = $cap->liste_capa_classe_contenu($choix_classe,$choix_contenu);
		if (count($test)) {
			foreach( $test as $capa)
				echo "<div id=\"capa$capa->id\" class=\"capa$choix_contenu\"><A href=\"#\" id=\"capacite$capa->id\" class=\"link_add\">Ajouter</A>"
				."<b>$capa->capacite ($capa->niveau) </b><br /><span><i>$capa->connaissance</i></span>"
				."&nbsp;</div>";
			
		}
	}

	function giveCapaById() {

		$cap = new Capacites();
		
		$test = $cap->give_capa_by_id($_POST['id']);
		if (count($test)) {
			foreach( $test as $capa)
				echo "<A href=\"#\" onclick=\"javascript:hideMe($capa->id);\" class=\"capDel\">Retirer</A>"
				."<b>$capa->capacite ($capa->niveau) </b><br /><span><i>$capa->connaissance</i></span>";
			
		}
	}
?>
