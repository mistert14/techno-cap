function changeClasse() {
	var url = './views/vue2.inc.php';
	var params = 'update_ajax=CAPA&choix_contenu='+$('choix_contenu').value+'&choix_classe='+$('choix_classe').value;
	new Ajax.Updater('div_capacites',url,{ method: 'post', parameters: params, onComplete: function(requester) {

		update();
		$('liste_capacites').innerHTML = '';
			
		
	}});
	return true;
}

function changeContenu() {
	var url = './views/vue2.inc.php';
	var params = 'update_ajax=CAPA&choix_contenu='+$('choix_contenu').value+'&choix_classe='+$('choix_classe').value;
	new Ajax.Updater('div_capacites',url,{ method: 'post', parameters: params, onComplete: function(requester) {
		update();
	}});
	return true;
}

function showHide() {
	var texte = $('cacher').innerHTML;
	if ('Cacher la liste' == texte) {
		$('cacher').innerHTML = 'Montrer la liste';
		$('div_capacites').style.display = 'none';
		return(true);
	} else {
		$('cacher').innerHTML = 'Cacher la liste';
		$('div_capacites').style.display = 'block';
		update();
		return(true);
	}
}

function hideMe(obj) {
	var elem = 'capaciteAff'+parseInt(obj);
	//alert($(elem).innerHTML);
	Element.hide(elem);
}

function update() {
		var cl = 'link_add';
		var liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
					$(liste[i]).onclick = function() {
						var comp = this.id.substr(8,5);
						var texte = $('capa'+comp).innerHTML;
						//alert(comp);
						if (!$('capaciteAff'+comp)) {

							var url = './views/vue2.inc.php';
							var params = 'update_ajax=CAPA_ID&id='+comp;
							new Ajax.Request(url,{ method: 'post', parameters: params, onComplete: function(requester) {
								var brique = requester.responseText;
								var cl = "capaAff"+$('choix_contenu').value;
								var brique2 = '<div id="capaciteAff'+comp+'" class="'+cl+'" >'+brique+'</div>';
								$('liste_capacites').innerHTML += brique2;
						
							}});
						} else {
							Element.show('capaciteAff'+comp);
						}
						showHide();

					}
			
		}


}

function effSeance() {
	$('liste_capacites').innerHTML = '';
	//alert('toto');
}

function init() {
		Event.observe('choix_classe','change',changeClasse,true);
		Event.observe('choix_contenu','change',changeContenu,true);
		Event.observe('cacher','click',showHide,false);
		Event.observe('EffaceSeance','click',effSeance,true);
		showHide();
		update();
	
}

Event.observe(window,'load',init,true);
