function changeClasseVue3() {
	var url = './views/vue3.inc.php';
	var params = 'update_ajax=1&choix_classe='+$('choix_classe_vue3').value;
	new Ajax.Updater('div_centres_interet',url,{ method: 'post', parameters: params, onComplete: function(requester) {
		update_vue3();
	}});
	return true;
}



function update_vue3() {
		var choixCI = $('choix_centre_interet_vue3').value;
		var url = './views/vue3.inc.php';
		var params = 'update_ajax=1&choix_ci='+choixCI;

		new Ajax.Updater('capa_vue3',url,{ method: 'post', parameters: params, onComplete: function(requester) {
			return true;
		}});
	
}
