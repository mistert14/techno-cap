<?php 	

require_once 'vue4.inc.php'; 
require_once '../models/models.php';

?>

<p>S&eacute;lectionnez le niveau, le centre d&apos;int&#233;r&ecirc;t puis les capacit&eacute;s dans les listes ci-dessous. Merci ensuite de compl&#233;ter les champs requis.
Le cours sera en premier lieu transmis aux mod&eacute;rateurs du site. Apr&#232;s validation il sera disponible en consultation sur le site.</p>


<br />
<h1>Qui &ecirc;tes vous ?</h1>
<br />

<label for="USER">VOTRE ADRESSE MAIL ACADEMIQUE:</label>
<input id="USER" class="titre" value="toto@ac-caen.fr"></input>
<br />

<label for="RNE">VOTRE RNE ETABLISSEMENT:</label>
<input id="RNE" class="titre" value="014XXXXX"></input>
<br />

<br />
<h1>Param&egrave;tres du cours</h1>
<br />


<div>
<span id="div_classes"><?php giveClasses(); ?></span>
<span id="div_centres_interet"><?php echo giveCentresInteret(1); ?></span>
</div>

<br />
<label for="capa_vue4"> CAPACITES CHOISIES:</label>
<div id="capa_vue4"><p>...</p></div>



<label for="TITRE">TITRE:</label>
<input id="TITRE" class="titre" value="ENTREZ ICI LE TITRE"></input>




<br />
<label for="DESCRIPTION">DESCRIPTION:</label>
<textarea id="DESCRIPTION" class="description"> --- ENTREZ ICI UN DESCRIPTIF DE LA SEANCE --- </textarea>
<div>&nbsp;</div>

<label for="SUPPORTS"> SUPPORTS CHOISIS:</label>
<textarea id="SUPPORTS" class="description"> --- ENTREZ ICI LES SUPPORTS CHOISIS --- </textarea>
<div>&nbsp;</div>

<label for="RESSOURCES"> RESSOURCES ASSOCIEES:</label>
<textarea id="RESSOURCES" class="description"> --- ENTREZ ICI LES ADRESSES INTERNET SEPAREES PAR UN # DE VOS RESSOURCES (CECI PEUT SE TROUVER SUR INTERNET OU DANS VOTRE ESPACE PERSONNEL DU LCS par exemple) MERCI DE RESPECTER LE DROIT D&apos;AUTEUR --- </textarea>
<div>&nbsp;</div>


