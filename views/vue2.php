

<?php 	require_once 'vue2.inc.php'; ?>
<p>S&eacute;lectionnez le niveau, le domaine puis les capacit&eacute;s dans les listes ci-dessus. Le lien Cacher/Montrer permet un aper�u des capacit�s d'un domaine. Le lien ajouter ajoute la capacit&eacute; dans la s&eacute;ance.</p>
<span id="div_classes"><?php giveClasses(); ?></span>
<span id="div_contenus"><?php giveContenus(); ?></span>
<span title ="Liste des capacit&eacute;s associ&eacute;es au domaine."><A id="cacher" href="#">Cacher la liste</A></span>
<div id="div_capacites"><?php giveCapacites(); ?></div>

<br />
<br />
<h3>Structure de la s&eacute;ance:</h3>  
<span><A href="#" id="EffaceSeance">Effacer</A></span>
<div id="liste_capacites" class="info"></div>	
