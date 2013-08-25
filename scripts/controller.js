/*
 var body_section = $('body').attr('class').split(' ');
 $(document).ready(function(){
 	alert(body_section);
 });
*/


/*
GridType JS asset controller
*/
(function(win, undefined){

	//define some globals
	var doc 		= win.document,
		docElem 	= doc.documentElement,
		head		= doc.head || doc.getElementsByTagName( "head" )[0] || docElem,
		gridType	= win.gridType;


  	//var for path
  	//var localPath = 'http://10.61.194.194:8888/';
<<<<<<< HEAD
<<<<<<< HEAD
 	var localPath = 'http://localhost:8888/GITS/gridtype/';
 	
 	var whereAmI = window.location;
 	
 	console.log(whereAmI);
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
 	//var localPath = 'http://localhost:9998/GITS/gridtype/';
	//var localPath = 'http://local.beta.projectgridtype.org:9998';
	var hostname = window.location.hostname;
	var port	 = window.location.port;
	if (port != ''){
		port = ':'+port;
	}
	var localPath = 'http://'+hostname+port;
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

 	gridType.localPath = localPath;
	//define file loading paths
	gridType.config = {
		path: {
<<<<<<< HEAD
<<<<<<< HEAD
			"js"	: localPath+"assets/js/",
			"css"	: localPath+"assets/css/"
=======
			"js"	: localPath+"/assets/js/",
			"css"	: localPath+"/assets/css/"
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
			"js"	: localPath+"/assets/js/",
			"css"	: localPath+"/assets/css/"
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		}
	};

	gridType.helpers = {};


	//define scripts and style assets for conditional loading
	gridType.assets = {
		js: {
			d3js					: "lib/d3.v3.min.js",
			fancyBox				: "fancybox/source/jquery.fancybox.js",
<<<<<<< HEAD
<<<<<<< HEAD
			dashboardImages			: "dashboard-images.js",
			jQueryForm				: "lib/jquery.form.js",			
			xCharts					: "lib/xcharts.js",
			//curateImages			: "curate-images.js",
			flag					: "flag.js",
			tips					: "tips.js",
			loadMore				: "load-more.js"			
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			jQueryForm				: "lib/jquery.form.js",
			xCharts					: "lib/xcharts.js",
			//curateImages			: "curate-images.js",
			tips					: "tips.js"
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		},
		css: {
			xCharts				: "xcharts.css",
			imageSingle			: "images-single.css",
<<<<<<< HEAD
<<<<<<< HEAD
			section_images		: "section-images.css",
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			fancyBoxCSS			: "jquery.fancybox.css"
		}
	};

	//start compiling which scripts and styles to load based on various conditions
	var jsToLoad = gridType.assets.jsToLoad = [],
		cssToLoad = gridType.assets.cssToLoad = [];


	//wait for body to be ready for the rest, so we can check the body class and load accordingly
	gridType.bodyready(function(){
<<<<<<< HEAD
<<<<<<< HEAD
	
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		var body	 	= doc.body,
			tmplTypes	= [
					"home",
					"internal",
					"gallery",
					"images",
<<<<<<< HEAD
<<<<<<< HEAD
					"single",
					"albums"
					
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
					"images-view",
					"view",
					"single",
					"albums"

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			],
			sections	= [
				"dashboard",
				"images",
				"albums",
				"users"
			],
			//get longer for loop length
			loopLength = tmplTypes.length > sections.length ? tmplTypes.length : sections.length;
<<<<<<< HEAD
<<<<<<< HEAD
 
		//run one loop to determine type, section
		for( var x=0; x < loopLength; x++ ){
 
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

		//run one loop to determine type, section
		for( var x=0; x < loopLength; x++ ){

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			if( sections[x] ){
				if( gridType.hasClass( body, "section-" + sections[x] ) ){
					gridType.section = sections[x];
				}
			}
<<<<<<< HEAD
<<<<<<< HEAD
			
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			if( tmplTypes[x] ){
				if( gridType.hasClass( body, "type-" + tmplTypes[x] ) ){
					gridType.tmplType = tmplTypes[x];
				}
			}
<<<<<<< HEAD
<<<<<<< HEAD
 

		}
		
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f


		}

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		console.log('Section: '+gridType.section);
		console.log('Type: '+gridType.tmplType);

		if (gridType.section === "dashboard"){
			cssToLoad.push("dashboard.css");
<<<<<<< HEAD
<<<<<<< HEAD
			jsToLoad.push(gridType.assets.js.tips);
			
			if(gridType.tmplType === 'images'){
				jsToLoad.push(gridType.assets.js.dashboardImages);
				//jsToLoad.push(gridType.assets.js.curateImages);
				jsToLoad.push(gridType.assets.js.d3js);
				jsToLoad.push(gridType.assets.js.xCharts);
					
				cssToLoad.push(gridType.assets.css.fancyBoxCSS);				
				cssToLoad.push(gridType.assets.css.xCharts);
				cssToLoad.push(gridType.assets.css.imageSection);								
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			//jsToLoad.push(gridType.assets.js.tips);

			if(gridType.tmplType === 'images'){
				jsToLoad.push(gridType.assets.js.d3js);
				jsToLoad.push(gridType.assets.js.xCharts);

				cssToLoad.push(gridType.assets.css.fancyBoxCSS);
				cssToLoad.push(gridType.assets.css.xCharts);
			}
			if(gridType.tmplType === 'images-view'){
				jsToLoad.push(gridType.assets.js.d3js);
				jsToLoad.push(gridType.assets.js.xCharts);
				jsToLoad.push('section-dashboard-images-view.js');

				cssToLoad.push(gridType.assets.css.xCharts);
				cssToLoad.push(gridType.assets.css.imageSection);
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

			}
			if(gridType.tmplType === 'albums'){
				jsToLoad.push('edit-album.js');
<<<<<<< HEAD
<<<<<<< HEAD
				
			}
			if(gridType.tmplType === 'profile'){
			
			}								
			
		}
		if (gridType.section === "albums"){
			//jsToLoad.push(gridType.assets.js.curateImages);
			jsToLoad.push('section-albums.js');			
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

			}
			if(gridType.tmplType === 'profile'){

			}

		}
		if (gridType.section === "albums"){
			//jsToLoad.push(gridType.assets.js.curateImages);
			jsToLoad.push('section-albums.js');
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			cssToLoad.push("albums-section.css");
			cssToLoad.push("albums.css");
		}
		if (gridType.section === "images"){
<<<<<<< HEAD
<<<<<<< HEAD
		
			if (gridType.tmplType === "single"){
				
=======

			if (gridType.tmplType === "view"){

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

			if (gridType.tmplType === "view"){

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
				jsToLoad.push(gridType.assets.js.fancyBox);
				jsToLoad.push(gridType.assets.js.d3js);
				jsToLoad.push(gridType.assets.js.xCharts);
				jsToLoad.push(gridType.assets.js.jQueryForm);
<<<<<<< HEAD
<<<<<<< HEAD
				jsToLoad.push('section-images-single.js');				
			
				cssToLoad.push(gridType.assets.css.fancyBoxCSS);	
				cssToLoad.push(gridType.assets.css.xCharts);
				cssToLoad.push(gridType.assets.css.imageSingle);		
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
				jsToLoad.push('section-images-single.js');

				cssToLoad.push(gridType.assets.css.fancyBoxCSS);
				cssToLoad.push(gridType.assets.css.xCharts);
				cssToLoad.push(gridType.assets.css.imageSingle);
<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			} else {
				//jsToLoad.push(gridType.assets.js.curateImages);
				jsToLoad.push('section-images.js');
				cssToLoad.push('section-images.css');
<<<<<<< HEAD
<<<<<<< HEAD
			}		

		}		
			
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
			}

		}

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		//load assets
		if ( jsToLoad.length ){
			gridType.load.script( gridType.config.path.js + jsToLoad.join(",") );
		}
		if( cssToLoad.length ){
			gridType.load.style( gridType.config.path.css + cssToLoad.join(",") );
		}
	});

<<<<<<< HEAD
<<<<<<< HEAD
	
	//scroll to top, hide address bar on mobile devices - 1 for android, 0 for the rest
	if( !location.hash ){
		
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

	//scroll to top, hide address bar on mobile devices - 1 for android, 0 for the rest
	if( !location.hash ){

<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		//scroll to top
		window.scrollTo( 0, 1 );
		var scrollTop = 1,
			getScrollTop = function(){
				return "scrollTop" in doc.body ? doc.body.scrollTop : 1;
			};
<<<<<<< HEAD
<<<<<<< HEAD
		
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		//reset to 0 on bodyready, if needed
		gridType.bodyready(function(){
			var scrollTop = getScrollTop();
			window.scrollTo( 0, scrollTop === 1 ? 0 : 1 );
		});
<<<<<<< HEAD
<<<<<<< HEAD
		
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		window.onload = function(){
			setTimeout(function(){
				//reset to hide addr bar at onload
				if( getScrollTop() < 20 ){
					window.scrollTo( 0, scrollTop === 1 ? 0 : 1 );
				}
			}, 0);
		};
	}
<<<<<<< HEAD
<<<<<<< HEAD
 
	// WebReflection Solution for ensuring domready fires when dynamically appending jQuery in older browsers
	(function(h,a,c,k){if(h[a]==null&&h[c]){h[a]="loading";h[c](k,c=function(){h[a]="complete";h.removeEventListener(k,c,!1)},!1)}})(document,"readyState","addEventListener","DOMContentLoaded");
 
 
=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f

	// WebReflection Solution for ensuring domready fires when dynamically appending jQuery in older browsers
	(function(h,a,c,k){if(h[a]==null&&h[c]){h[a]="loading";h[c](k,c=function(){h[a]="complete";h.removeEventListener(k,c,!1)},!1)}})(document,"readyState","addEventListener","DOMContentLoaded");


<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
})( this );