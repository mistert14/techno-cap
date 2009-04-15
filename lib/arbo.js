/*
AUTEUR MrT
CRDP Basse Normandie
Septembre 2008
*/
	
	var repImages = './images/';
		imagePlus = 'dhtmlgoodies_plus.gif';
		imageMinus = 'dhtmlgoodies_minus.gif';
		choix_niveau = '?';
	function HideAll() {
		var liste = document.getElementsByTagName('img');
				for (var i = 0; i < liste.length; i++) {
					if ($('folder'+parseInt(i))) 
					//alert($('folder'+parseInt(i)));
					HideShow($('folder'+parseInt(i)));
				}
	}
	
	function HideShow(d) {
		var plus = new RegExp(imagePlus, "i");
		var minus = new RegExp(imageMinus, "i");
		
		if (minus.exec($(d).src) != null) {
			$(d).src = repImages+imagePlus;
			var l = $(d).parent.childNodes;
			for (var i=2; i<l.length; i++) {
				if (l[i].innerHTML)
					l[i].style.display = 'none';
			}
			return;
		}
		
		if (plus.exec($(d).src) != null) {
			$(d).src = repImages+imageMinus;
			var l = $(d).parent.childNodes;
			for (var i=2; i<l.length; i++) {
				if (l[i].innerHTML)
					l[i].style.display = 'block';
			}
			return;
		}
		
	}
	
	function init_tree(container) {
			
			new Ajax.Updater(container,'mk_tree.php',{ method: 'post', onComplete: function(requester) {
				
				var liste = document.getElementsByTagName('ul');
				for (var i = 0; i < liste.length; i++) {
				elem ='';

				if (liste[i].className == 'sheet' || liste[i].className == 'folder') {
					if (liste[i].className != 'sheet' &&  liste[i].childNodes.length > 1 )
						elem += '<img id=folder'+parseInt(i)+' src="'+repImages+imageMinus+'" />';
					elem += '<img src="'+repImages+'dhtmlgoodies_'+liste[i].className+'.gif" />';
					if (liste[i].id != 'root')
						elem+='&nbsp;<input class="check" name="choix_niveau" value="'+liste[i].id+'" type=radio />';
					elem +='&nbsp;';
					liste[i].innerHTML = elem + liste[i].innerHTML;
					if ($('folder'+parseInt(i))) {
						var dossier = $('folder'+parseInt(i));
						dossier.parent = liste[i];
						dossier.onclick = function() {
							HideShow(this)
						}
					}
							
					if (liste[i].className == 'sheet')  {
						liste[i].onmouseover = function(e) {
							Element.removeClassName(this,'out');
							Element.addClassName(this,'over');
					
						} 
						liste[i].onmouseout = function(e) {
							Element.removeClassName(this,'over');
							Element.addClassName(this,'out');
						
						} 
					}
				}
				
				}
				
				var liste = document.getElementsByClassName('check');
				for (var i = 0; i < liste.length; i++) {
					$(liste[i]).onmouseup = function(e) {
						var choix_niveau = this.id;
						choix_niveau = this.value;
										
					}
					
				}
				HideAll();
				
				}});
			
			
	}
	
	
