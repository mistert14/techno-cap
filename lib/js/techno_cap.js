	function patch(chaine) {
  		temp = chaine.replace(/[אגה]/gi,"a")
  		temp = temp.replace(/[יטךכ]/gi,"e")
  		temp = temp.replace(/[מן]/gi,"i")
  		temp = temp.replace(/[פצ]/gi,"o")
  		temp = temp.replace(/[שûü]/gi,"u")
  		temp = temp.replace(/[ח]/gi,"c")
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
		            		changeClasseVue3();
				 	Event.observe('choix_classe_vue3','change',changeClasseVue3,true);

				}

			 	if ('vue4' == vue) {
		            		changeClasseVue4();
				 	Event.observe('choix_classe_vue4','change',changeClasseVue4,true);
					/*
					var fck = new FCKeditor('DESCRIPTION');
                                	fck.BasePath='/techno-cap/lib/fckeditor/';
                                	fck.Height='200';
					fck.Width='90%';
                                	fck.ReplaceTextarea();

					var fck2 = new FCKeditor('SUPPORTS');
                                	fck2.BasePath='/techno-cap/lib/fckeditor/';
                                	fck2.Height='200';
					fck2.Width='90%';
 		                        fck2.ReplaceTextarea();
					*/	
				}

				
			}});

		}

		function init(){
			vueAjax('vue0');
		}
		
		Event.observe(window,'load',init,false);
