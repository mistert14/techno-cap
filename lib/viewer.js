
	
		var compte_ress=0;
		var header_height = 20;
		function add_window(id,type,content,titre,x,y,w,h) {
				w= 0.98 * w;
				var top_elem0 = document.createElement('DIV');
				
				top_elem0.id = 'top_'+id;
				top_elem0.name = 'top_'+id;
				
				Element.setStyle(top_elem0, { position: 'absolute', 
								  left: x+'px', top: y+'px' ,
								  width: w+'px', height: (h+header_height)+'px' });
				
				var div_title = document.createElement('DIV');
				div_title.id = 'title_'+id;
				div_title.innerHTML = titre;
				Element.addClassName(div_title, 'window_title');
				Element.setStyle(div_title,{ position: 'absolute', left: '0px', top: '0px', width: w+'px', height: header_height+'px', border: '0px none red'})	
				top_elem0.appendChild(div_title);
				
				if (type == 'ressource') {
					
					var elem0 = document.createElement('IFRAME');
					elem0.id = id;
					elem0.name = id;
					Element.addClassName(elem0, 'window_content');
					content = content.replace(/&amp;/gi,"&");
					
					elem0.src = content;
					
							
				}

				if (type == 'note') {
					var elem0 = document.createElement('DIV');
					elem0.id = id;
					elem0.name = id;
					elem0.innerHTML = content;
					Element.addClassName(elem0, 'window_note');

			
				}
				
				
				Element.setStyle(elem0, { position: 'absolute', left: '1px', top: header_height+2+'px', width: w+'px', height: h+'px', border: '0px none red'});
				top_elem0.appendChild(elem0);
				$('windowholder').appendChild(top_elem0);
							
		}

		function purge_window() {
			var cont = $('windowholder');
		
			while (parseInt(cont.childNodes.length) != 0) {
				Element.remove(cont.childNodes[cont.childNodes.length-1]);
			}
		}
		
		function patch() {
			purge_window();			
			for (var i=0;i<compte_ress;i++) {
				var id ='ress'+parseInt(i+1);
				
				var frame_id = "_iframe-win_"+id;
			
				var type = $(id+'_type').innerHTML;
			
				if (type == 'ressource') {
					
					var x = parseInt($(id+'_x').innerHTML);
					var y = parseInt($(id+'_y').innerHTML)-50;
					//var z = parseInt($(id+'_z').innerHTML);
					var w = parseInt($(id+'_w').innerHTML);
					var h = parseInt($(id+'_h').innerHTML);
					var titre = $(id+'_titre_ress').innerHTML;
					var url = $(id+'_url').innerHTML;
					var Expression = new RegExp("swf","g");
				       if ( Expression.test(url) )
						url = './giveCleanFlash?url='+url;
					add_window(id,type,url,titre,x,y,w,h);
					
				}

				if (type=='note') {
					var x = parseInt($(id+'_x').innerHTML);
					var y = parseInt($(id+'_y').innerHTML)-50;
					var z = parseInt($(id+'_z').innerHTML);
					var w = parseInt($(id+'_w').innerHTML);
					var h = parseInt($(id+'_h').innerHTML);
					var msg = $(id+'_note_msg').innerHTML;
					var titre = $(id+'_note_title').innerHTML;
					//var titre = 'Consigne';
					add_window(id,type,msg,titre,x,y,w,h);
					

				}
			}
		
		}

		function HTMLEncode(wText){
			if(typeof(wText)!="string"){
			wText=wText.toString();};
			wText=wText.replace(/&/g, "&amp;") ;
			wText=wText.replace(/"/g, "&quot;") ;
			wText=wText.replace(/</g, "&lt;") ;
			wText=wText.replace(/>/g, "&gt;") ;
			wText=wText.replace(/'/g, "&#146;") ;
			return wText;
		};
		

		function setJeton(jeton) {
			
			
			var go = './xmlparser.php';
			var params = '?jeton='+jeton;
			
			new Ajax.Request(go,{ parameters: params, method: 'post', onComplete: function(requester) {
				var cont = (requester.responseText);
				$('vueXml').innerHTML=cont;
				
			}});
			
		
			var url='./gestViewScen.php';
			var params = '?jeton='+jeton; 
			new Ajax.Request(url,{ method: 'get', parameters: params, onComplete: function(requester) {
			    	var rep = requester.responseText;
				eval(rep);
				setTimeout("patch()", 1000);

			
			}});
			
		}
	
		

