<?php
//se charge de l'acces auc donnees
	$DB = "comp_techno";
	$USER = "lcsmgr";
	$PASSE = "mrt14";
	$HOST = "localhost";
	
	$cx = mysql_connect($HOST,$USER,$PASSE) or die ('Connexion base impossible !');
	$choixdb = mysql_select_db($DB,$cx) or die(mysql_error($cx));
	
	class Capacites {
		public function liste_capa_classe_contenu($id_classe,$id_contenu) {
			global $cx;
			$sql = "SELECT * FROM capacites where id_classe='$id_classe' and  id_contenu = '$id_contenu';";
			$res = mysql_query($sql,$cx) or die(mysql_error($cx));
			while ($R = mysql_fetch_object($res))
				$liste[] = $R;
			return $liste;
		}

		public function give_capa_by_id($id_capa) {
			global $cx;
			$sql = "SELECT * FROM capacites where id='$id_capa' LIMIT 1;";
			$res = mysql_query($sql,$cx) or die(mysql_error($cx));
			while ($R = mysql_fetch_object($res))
				$liste[] = $R;
			return $liste;
		}

	}

	class Contenus {
		public function liste_contenus() {
			global $cx;
			$sql = "SELECT * FROM contenus where 1;";
			$res = mysql_query($sql,$cx) or die(mysql_error($cx));
			while ($R = mysql_fetch_object($res))
				$liste[] = $R;
			return $liste;
		}
	}

	class Classes {
				
		public function liste_classes() {
			global $cx;
			$sql = "SELECT * FROM classes where 1;";
			$res = mysql_query($sql,$cx) or die(mysql_error($cx));
			while ($R = mysql_fetch_object($res))
				$liste[] = $R;
			return $liste;
		}

	}

?>
