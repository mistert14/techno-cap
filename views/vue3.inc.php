<?php

	//moulinage Ajax ICI
 	function giveClasses() {
                $c = new Classes();
                $flux = "<select id =\"choix_classe_vue3\" name=\"choix_classe_vue3\" >";
                foreach($c->liste_classes() as $cl)
                        $flux .= "<option value=\"$cl->id\">$cl->classe</option>";
                $flux .="</select>";
		return $flux;
        }
 	
	function giveCentresInteret($idC) {
                $c = new CentresInteret();
                $flux = "<select id =\"choix_centre_interet_vue3\" name=\"choix_centre_interet_vue3\" onchange=\"javascript:update_vue3();\">";
                foreach($c->listeByIdClasse($idC) as $cl)
                        $flux .="<option value=\"$cl->id\">$cl->titre</option>";
                $flux .= "</select>";
		return $flux;

 	}               

	function giveCentresInteretList($id) {
                $c = new CentresInteret();
                foreach($c->listeById($id) as $cl)
                        $liste = $cl->liste_capa;
		$tabComp = explode(':',$cl->liste_capa);
		foreach($tabComp as $comp){
			$flux .= "<p>".giveCapaById($comp)."</p>";
		}
		return $flux;
 	}               


	function giveCapaById($id) {

                $cap = new Capacites();

                $test = $cap->give_capa_by_id($id);
                if (count($test)) {
                        foreach( $test as $capa)
				$flux .= "<div id=\"capa$capa->id\" class=\"capa$capa->id_contenu\">"
                                ."<b>$capa->capacite ($capa->niveau) </b><br /><span><i>$capa->connaissance</i></span>"
                                ."&nbsp;</div>";

                }
		return $flux;
        }

	
	if ($_POST) {
		if ($_POST['update_ajax']) {
			if ($_POST['update_ajax'] == 1) {
				require('../models/models.php');
				if ($_POST['choix_classe']) {
					echo (giveCentresInteret($_POST['choix_classe']));
				}
				if ($_POST['choix_ci']) {
					echo(giveCentresInteretList($_POST['choix_ci']));
				}
				
			}
		}
	}

?>
