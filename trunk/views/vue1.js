var maliste = 'liste:';
function changeClasse() {
	var url = './views/vue1.inc.php';
	var params = 'update_ajax=CAPA&choix_contenu='+$('choix_contenu').value+'&choix_classe='+$('choix_classe').value;
	new Ajax.Updater('div_capacites',url,{ method: 'post', parameters: params, onComplete: function(requester) {

		update();
		$('liste_capacites').innerHTML = '';
		$('PDF').href = '#';	
		
	}});
	return true;
}

function changeContenu() {
	var url = './views/vue1.inc.php';
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
         	update();
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
	chkRess();
}

function chkRess() {

		var listeAffichee = '/techno-cap/views/toPDF.php?lst=liste:';
		cl = 'capaAff1';
		liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
			if ( $(liste[i]).style.display != 'none' )
				listeAffichee+= $(liste[i]).id.substr(11,5)+':';
	
		}		
		cl = 'capaAff2';
		liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
			if ( $(liste[i]).style.display != 'none' )
				listeAffichee+= $(liste[i]).id.substr(11,5)+':';
		}		
		cl = 'capaAff3';
		liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
			if ( $(liste[i]).style.display != 'none' )
				listeAffichee+= $(liste[i]).id.substr(11,5)+':';

		}		
		cl = 'capaAff4';
		liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
			if ( $(liste[i]).style.display != 'none' )
				listeAffichee+= $(liste[i]).id.substr(11,5)+':';

		}		
		cl = 'capaAff5';
		liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
			if ( $(liste[i]).style.display != 'none' )
				listeAffichee+= $(liste[i]).id.substr(11,5)+':';

		}		
		cl = 'capaAff6';
		liste = document.getElementsByClassName(cl);
		for (var i=0;i<liste.length;i++) {
			if ( $(liste[i]).style.display != 'none' )
				listeAffichee+= $(liste[i]).id.substr(11,5)+':';

		}
		$('PDF').href = listeAffichee;

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

							var url = './views/vue1.inc.php';
							var params = 'update_ajax=CAPA_ID&id='+comp;
							new Ajax.Request(url,{ method: 'post', parameters: params, onComplete: function(requester) {
								var brique = requester.responseText;
								var cl = "capaAff"+$('choix_contenu').value;
								var brique2 = '<div id="capaciteAff'+comp+'" class="'+cl+'" >'+brique+'</div>';
								$('liste_capacites').innerHTML += brique2;
								chkRess();
						
							}});
						} else {
							Element.show('capaciteAff'+comp);
						}
						showHide();

					}
			
		}

		//alert(listeAffichee);		
 
}

function effSeance() {
	$('liste_capacites').innerHTML = '';
	$('PDF').href='#';
	//alert('toto');
}

	

