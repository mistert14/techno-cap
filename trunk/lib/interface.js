Ext.onReady(function(){
   // Menu containing actions
    
    var tabSearch = new Ext.Panel(
    {
    	frame:true,
    	title: 'Ressources officielles',
    	collapsible:true,
    	contentEl:'mnuCapa',
    	titleCollapse: true
    });

    var tabListe = new Ext.Panel(
    {
    	frame:true,
    	title: 'Outil collaboratif',
    	collapsible:true,
    	contentEl:'mnuTools',
    	deferredRender:false,
    	autoScroll: true, 
    	height:510,
    	minHeight: 10,
    	titleCollapse: false
    });
   
 
    // Parent Panel to hold actions menu
    var actionPanel = new Ext.Panel({
    	id:'action-panel',
    	region:'west',
    	split:true,
    	collapsible: true,
    	collapseMode: 'mini',
    	width:210,
    	minWidth: 210,
    	border: false,
    	baseCls:'x-plain',
    	items: [tabSearch, tabListe]
    });
 
	// Top Panel
       var topPanel = new Ext.Panel({
    	id:'top-panel',
    	region:'north',
    	split:true,
    	collapsible: true,
    	collapseMode: 'mini',
    	baseCls:'x-plain',
		height: 60,
    	contentEl: 'top-menu'
       });


    // Main (Tabbed) Panel
    var tabPanel = new Ext.TabPanel({
		id: 'menu',
		region:'center',
		deferredRender:false,
		autoScroll: true, 
		margins:'0 4 4 0',
		activeTab:0,
		items:[

		{
		id:'tab0',
		contentEl:'tabs0',
    		title: 'Espace de travail',
    		closable:false,
    		autoScroll:true
		} ,


		
		

		
		]
    });
 
    // Configure viewport
    viewport = new Ext.Viewport({
           layout:'border',
           items:[actionPanel,tabPanel,topPanel]});

	 
});
	
	
