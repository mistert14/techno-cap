function changeClasseVue4() {
	var url = './views/vue4.inc.php';
	var params = 'update_ajax=1&choix_classe='+$('choix_classe_vue4').value;
	new Ajax.Updater('div_centres_interet',url,{ method: 'post', parameters: params, onComplete: function(requester) {
		update_vue4();
	}});
	return true;
}



function update_vue4() {
		var choixCI = $('choix_centre_interet_vue4').value;
		var url = './views/vue4.inc.php';
		var params = 'update_ajax=1&choix_ci='+choixCI;

		new Ajax.Updater('capa_vue4',url,{ method: 'post', parameters: params, onComplete: function(requester) {
			return true;
		}});
	
}
