	function patch(chaine) {
  		temp = chaine.replace(/[���]/gi,"a")
  		temp = temp.replace(/[����]/gi,"e")
  		temp = temp.replace(/[��]/gi,"i")
  		temp = temp.replace(/[��]/gi,"o")
  		temp = temp.replace(/[���]/gi,"u")
  		temp = temp.replace(/[�]/gi,"c")
  		temp = temp.replace(/[']/gi,"_")
  		return temp
	}

		
		function vueAjax(vue) {
			
			var url = '/techno-cap/views/'+vue+'.php';
			var params = '';
						
					
			var ajax1 = new Ajax.Updater('main',url,{ parameters: params, method: 'post', onComplete: function(requester){
					
			 	if ('vue1' == vue) {
				 	Event.observe('choix_classe','change',changeClasse,true);
                		 	Event.observe('choix_contenu','change',changeContenu,true);
                		 	Event.observe('cacher','click',showHide,false);
                		 	Event.observe('EffaceSeance','click',effSeance,true);
                		 	showHide();
                		 	update();
				}


			 	if ('vue3' == vue) {
				 	Event.observe('choix_classe_vue3','change',changeClasseVue3,true);
                		 	changeClasseVue3();

				}

				
			}});

		}

		function init(){
			vueAjax('vue0');
		}
		
		Event.observe(window,'load',init,false);
