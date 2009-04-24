<?php
	//require_once('../models/models.php');

	if ($_POST && $_POST['choix_classe'])
		$choix_classe = $_POST['choix_classe'];
	else
		$choix_classe = 1;
		
	if ($_POST && $_POST['choix_ci'])
		$choix_ci = $_POST['choix_ci'];
	else
		$choix_ci = 1;
	
	function giveClasses() {
		$c = new Classes();
		echo '<select id ="choix_classe_vue4" name="choix_classe_vue4" onchange="javascript:update_vue4();" >';
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
	
        function giveCapaById($id) {

                $cap = new Capacites();

                $test = $cap->give_capa_by_id($id);
                if (count($test)) {
                        foreach( $test as $capa)
                                $flux .= "<div id=\"capa$capa->id\" class=\"capa$capa->id_contenu\">"
				."<input type=\"checkbox\" id=\"chk_capa$capa->id\" class=\"chk_capa\" value=\"chk_capa$capa->id\"></input>&nbsp"
                                ."<b>$capa->capacite ($capa->niveau) </b><br /><span><i>$capa->connaissance</i></span>"
                                ."&nbsp;</div>";
                                                                                            
                }
                return $flux;
        }

	 function giveCentresInteret($idC) {
                $c = new CentresInteret();
                $flux = "<select id =\"choix_centre_interet_vue4\" name=\"choix_centre_interet_vue4\" onchange=\"javascript:update_vue4();\">";
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
