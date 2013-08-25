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
 	//var localPath = 'http://localhost:9998/GITS/gridtype/';
	//var localPath = 'http://local.beta.projectgridtype.org:9998';
	var hostname = window.location.hostname;
	var port	 = window.location.port;
	if (port != ''){
		port = ':'+port;
	}
	var localPath = 'http://'+hostname+port;

 	gridType.localPath = localPath;
	//define file loading paths
	gridType.config = {
		path: {
			"js"	: localPath+"/assets/js/",
			"css"	: localPath+"/assets/css/"
		}
	};

	gridType.helpers = {};


	//define scripts and style assets for conditional loading
	gridType.assets = {
		js: {
			d3js					: "lib/d3.v3.min.js",
			fancyBox				: "fancybox/source/jquery.fancybox.js",
			jQueryForm				: "lib/jquery.form.js",
			xCharts					: "lib/xcharts.js",
			//curateImages			: "curate-images.js",
			tips					: "tips.js"
		},
		css: {
			xCharts				: "xcharts.css",
			imageSingle			: "images-single.css",
			fancyBoxCSS			: "jquery.fancybox.css"
		}
	};

	//start compiling which scripts and styles to load based on various conditions
	var jsToLoad = gridType.assets.jsToLoad = [],
		cssToLoad = gridType.assets.cssToLoad = [];


	//wait for body to be ready for the rest, so we can check the body class and load accordingly
	gridType.bodyready(function(){

		var body	 	= doc.body,
			tmplTypes	= [
					"home",
					"internal",
					"gallery",
					"images",
					"images-view",
					"view",
					"single",
					"albums"

			],
			sections	= [
				"dashboard",
				"images",
				"albums",
				"users"
			],
			//get longer for loop length
			loopLength = tmplTypes.length > sections.length ? tmplTypes.length : sections.length;

		//run one loop to determine type, section
		for( var x=0; x < loopLength; x++ ){

			if( sections[x] ){
				if( gridType.hasClass( body, "section-" + sections[x] ) ){
					gridType.section = sections[x];
				}
			}

			if( tmplTypes[x] ){
				if( gridType.hasClass( body, "type-" + tmplTypes[x] ) ){
					gridType.tmplType = tmplTypes[x];
				}
			}


		}

		console.log('Section: '+gridType.section);
		console.log('Type: '+gridType.tmplType);

		if (gridType.section === "dashboard"){
			cssToLoad.push("dashboard.css");
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

			}
			if(gridType.tmplType === 'albums'){
				jsToLoad.push('edit-album.js');

			}
			if(gridType.tmplType === 'profile'){

			}

		}
		if (gridType.section === "albums"){
			//jsToLoad.push(gridType.assets.js.curateImages);
			jsToLoad.push('section-albums.js');
			cssToLoad.push("albums-section.css");
			cssToLoad.push("albums.css");
		}
		if (gridType.section === "images"){

			if (gridType.tmplType === "view"){

				jsToLoad.push(gridType.assets.js.fancyBox);
				jsToLoad.push(gridType.assets.js.d3js);
				jsToLoad.push(gridType.assets.js.xCharts);
				jsToLoad.push(gridType.assets.js.jQueryForm);
				jsToLoad.push('section-images-single.js');

				cssToLoad.push(gridType.assets.css.fancyBoxCSS);
				cssToLoad.push(gridType.assets.css.xCharts);
				cssToLoad.push(gridType.assets.css.imageSingle);
			} else {
				//jsToLoad.push(gridType.assets.js.curateImages);
				jsToLoad.push('section-images.js');
				cssToLoad.push('section-images.css');
			}

		}

		//load assets
		if ( jsToLoad.length ){
			gridType.load.script( gridType.config.path.js + jsToLoad.join(",") );
		}
		if( cssToLoad.length ){
			gridType.load.style( gridType.config.path.css + cssToLoad.join(",") );
		}
	});


	//scroll to top, hide address bar on mobile devices - 1 for android, 0 for the rest
	if( !location.hash ){

		//scroll to top
		window.scrollTo( 0, 1 );
		var scrollTop = 1,
			getScrollTop = function(){
				return "scrollTop" in doc.body ? doc.body.scrollTop : 1;
			};

		//reset to 0 on bodyready, if needed
		gridType.bodyready(function(){
			var scrollTop = getScrollTop();
			window.scrollTo( 0, scrollTop === 1 ? 0 : 1 );
		});

		window.onload = function(){
			setTimeout(function(){
				//reset to hide addr bar at onload
				if( getScrollTop() < 20 ){
					window.scrollTo( 0, scrollTop === 1 ? 0 : 1 );
				}
			}, 0);
		};
	}

	// WebReflection Solution for ensuring domready fires when dynamically appending jQuery in older browsers
	(function(h,a,c,k){if(h[a]==null&&h[c]){h[a]="loading";h[c](k,c=function(){h[a]="complete";h.removeEventListener(k,c,!1)},!1)}})(document,"readyState","addEventListener","DOMContentLoaded");


})( this );