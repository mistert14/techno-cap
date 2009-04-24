<?php 	

require_once 'vue3.inc.php'; 
require_once '../models/models.php';

?>


<p>S&#233;lectionnez la classe puis le centre d'int&#233;r&ecirc;t</p>

<div>
<span id="div_classes"><?php echo giveClasses(); ?></span>
<span id="div_centres_interet"><?php echo giveCentresInteret(1); ?></span>
</div>
<div id="capa_vue3"><p>...</p></div>

