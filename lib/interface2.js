Ext.onReady(function(){
   // Menu containing actions
   var tabXML = new Ext.Panel(
    {
    	frame:true,
    	title:'R&#233;ponse XML envoy&#233;e',
    	collapsible:true,
	contentEl:'vueXML',
       shim: false, 
	height: 200,
	autoScroll: true,
    	defaults: { autoHeight: true },
	collapsed:true,
    	titleCollapse:true
    });



   
    var tabMat = new Ext.Panel(
    {
    	frame:true,
    	title:'Mati&#232;re/Domaine',
    	collapsible:true,
	contentEl:'domaine',
       shim: false, 
	height: 200,
	autoScroll: true,
    	defaults: { autoHeight: true },
	collapsed:true,
    	titleCollapse:true
    });
	

    var tabDescription = new Ext.Panel(
    {
    	frame:true,
    	title:'Description',
    	collapsible:true,
	collapsed:true,
    	contentEl:'description',
    	titleCollapse:true
    });

    var tabNiveau = new Ext.Panel(
    {
    	frame:true,
    	title: 'Niveau',
    	collapsible:true,
	shim: false, 
	height: 200,
	autoScroll: true,
    	defaults: { autoHeight: true },
	collapsed:true,
    	contentEl:'niveau',
    	titleCollapse: true
    });


 
    // Parent Panel to hold actions menu
    var actionPanel = new Ext.Panel({
    	id:'action-panel',
    	split:true,
    	collapsible: true,
    	collapseMode: 'mini',
    	width: 350,
    	minWidth: 150,
    	border: false,
    	baseCls:'x-plain',
    	items: [tabMat, tabDescription, tabNiveau, tabXML]
    });
 

// Top Panel
       var topPanel = new Ext.Panel({
    	id:'top-panel',
    	region:'north',
    	split:true,
	border:false,
	hideBorders:true,
    	collapsible: true,
    	collapseMode: 'mini',
    	baseCls:'x-plain',
	autoHeight: true,
    	items: [{  html: '<div id="msg">Merci de fournir les divers param&#232;tres suivants :<br /></div>'}]
       });

// Feet Panel
       var feetPanel = new Ext.Panel({
    	id:'feet-panel',
    	region:'south',
    	split:true,
	border:false,
	hideBorders:true,
    	collapsible: true,
    	collapseMode: 'mini',
    	baseCls:'x-plain',
	autoHeight: true,
    	items: [{  html: '<br /><div align="center"><input type="button" value="Enregistrer" id="btn_submit"></input></div>'}]
	
       });


 
    // Configure viewport
    viewport = new Ext.Viewport({
           //layout:'border',
           items:[ topPanel, actionPanel, feetPanel]
	});

	 
});

	Event.observe(window,'load',init,false);
	
	
	function cherche() {
                var url = 'giveDescripteurs.php';
                var params= 'joker='+$('descripteur').value;
                new Ajax.Updater('liste_descripteurs',url,{ method: 'post', parameters: params, onComplete: function(requester) {

                }});

         }

	function send() {
		
		//description
		
		var bo = $('BO').value;
		var obj_peda = $('obj_peda').value;
		var keywords = $('keywords').value;
		
		if (bo == '' || obj_peda == '' || keywords == '' ) {
			alert('Merci de compléter la partie description');
			return false;
		}
			

		//choix du niveau
		var tests=document.getElementsByName("choix_niveau");
		for(var i=0;i<tests.length;i++){
			if(tests[i].checked)
				choix_niveau = tests[i].value;
		}

		if (choix_niveau == '?') {
			alert('Merci de choisir un niveau');
			return false;
		}

			 

		//choix descripteurs
		var choix_dom ='';
		var tests2=document.getElementsByClassName("descripteur");
		for(i=0;i<tests2.length;i++){
			if(tests2[i].checked) {
				
				if (choix_dom != '' )
					choix_dom += '|'+tests2[i].id;
				else
					choix_dom += tests2[i].id;
				
			}
		}

		if (choix_dom == '') {

			alert('Merci de choisir un domaine ou une matière');
			return false;
		}


		var params = '';
		var url = 'saveAcadScen.php';
		params += '?bo='+bo;
		params += '&obj_peda='+obj_peda;
		params += '&keywords='+keywords;
		params += '&niveau='+choix_niveau;
		params += '&domaines='+choix_dom;
		params += '&jeton='+$('jeton').innerHTML;
		params += '&etab='+$('etab').innerHTML;


		
		//requete ajax de sauvegarde ici
		
		new Ajax.Request(url,{ method: 'post', parameters: params, onComplete: function(requester) {
			alert(requester.responseText);
              }});

		
	}	

	function init() {
				init_tree('arbo');
				Event.observe('descripteur','keyup',cherche,false);
				Event.observe('btn_submit','click',send,false);
				cherche();
				

	}
	
	var choix_niveau;