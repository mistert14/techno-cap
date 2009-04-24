<?php 	

require_once 'vue1.inc.php'; 
require_once '../models/models.php';

?>


<p>S&eacute;lectionnez le niveau, le domaine puis les capacit&eacute;s dans les listes ci-dessus. Le lien Cacher/Montrer permet un aperçu des capacités d'un domaine. Le lien ajouter ajoute la capacit&eacute; dans la s&eacute;ance.</p>
<span id="div_classes"><?php giveClasses(); ?></span>
<span id="div_contenus"><?php giveContenus(); ?></span>
	<span title ="Liste des capacit&eacute;s associ&eacute;es au domaine."><A id="cacher" href="#">Cacher la liste</A></span>
<div id="div_capacites"><?php giveCapacites(); ?></div>

<br />
<br />
<h3>Liste des capacit&eacute;s</h3>  
<span><A href="#" id="EffaceSeance">Effacer les capacit&eacute;s</A></span>
	<span id="span_PDF"  title ="T&eacute;l&eacutecharger la s&eacute;ance au format PDF."><A id="PDF" href="#">T&eacute;l&eacute;charger un fichier PDF</A></span>

<div id="liste_capacites" class="info"></div>	
