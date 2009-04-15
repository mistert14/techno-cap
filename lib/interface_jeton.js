Ext.onReady(function(){
   
    // Main (Tabbed) Panel
    var tabPanelJ = new Ext.TabPanel({
		
		
		region:'center',
		deferredRender:false,
		autoScroll: true, 
		margins:'0 4 4 0',
		activeTab:0,
		items:[

		{
		id:'tabJ0',
		contentEl:'tabs',
    		title: 'Description',
    		closable:false,
    		autoScroll:true
		} ,

		{
		id:'tabJ4',
		contentEl:'tabs4',
    		title: 'Choix du niveau',
    		closable:false,
    		autoScroll:true
		} , 

		{
		id:'tabJ5',
		contentEl:'tabs5',
    		title: 'Choix du domaine',
    		closable:false,
    		autoScroll:true
		} , 

		{
		id:'tabJ3',
		contentEl:'tabs3',
    		title: 'Vue du fichier XML',
    		closable:false,
    		autoScroll:true
		},

		{
		id:'tabJ2',
		contentEl:'tabs2',
    		title: 'Aper&ccedil;u',
    		closable:false,
    		autoScroll:true
		} 

		

		
		]
    });
 
    // Configure viewport
    viewportJ = new Ext.Viewport({
           layout:'border',
           items:[tabPanelJ]});

	 
});

	Event.observe(window,'load',init,false);
	
	

	function cherche() {
                var url = 'giveDescripteurs.php';
                var params= 'joker='+$('descripteur').value;
                new Ajax.Updater('liste_descripteurs',url,{ method: 'post', parameters: params, onComplete: function(requester) {

                }});

         }

	
			

	function init() {
								   
	                     var jeton =$('jeton').innerHTML;
				setJeton(jeton);
				Event.observe('descripteur','keyup',cherche,false);
				cherche();
				init_tree('arbo');
				
				

	}
	
