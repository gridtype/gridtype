//some quick support flags for enhanced scripting/styles
(function(win, undefined){
	//define some globals
	var doc 		= win.document,
		docElem 	= doc.documentElement,
		head		= doc.head || doc.getElementsByTagName( "head" )[0] || docElem,
		Modernizr	= win.Modernizr;

	//define "gridType" global namespace
	gridType = {};
	if (typeof gridType === "undefined") { gridType = {};}

	// mixins - utility object extender
	gridType.extend = function( obj, props ){
		for (var i in props ) {
	        obj[i] = props[i];
	    }
	    return gridType;
	};

	//support hash
	gridType.extend( gridType, {
		browser	: {},
		dev		: {},
		support	: {}
	});
<<<<<<< HEAD
<<<<<<< HEAD
	
	gridType.frontendOnly = true; // flag to assist in excluding Methode-specific components when running frontend in sandbox
	
=======

	gridType.frontendOnly = true; // flag to assist in excluding Methode-specific components when running frontend in sandbox

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

	gridType.frontendOnly = true; // flag to assist in excluding Methode-specific components when running frontend in sandbox

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	//define a few browsers (from conditional comments)
	var docElem = win.document.documentElement;
	gridType.browser.ie6 = docElem.className.indexOf( "ie6" ) >= 0;
	gridType.browser.ie7 = docElem.className.indexOf( "ie7" ) >= 0;
<<<<<<< HEAD
<<<<<<< HEAD
	gridType.browser.ie8 = docElem.className.indexOf( "ie8" ) >= 0;	
	
	//dev mobile assets flag: use for previewing mobile-optimized assets
	gridType.dev.mobileOverride = location.search.indexOf("mobile-assets") >= 0;
	
	//callback for dependencies. 
=======
	gridType.browser.ie8 = docElem.className.indexOf( "ie8" ) >= 0;

	//dev mobile assets flag: use for previewing mobile-optimized assets
	gridType.dev.mobileOverride = location.search.indexOf("mobile-assets") >= 0;

	//callback for dependencies.
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
	gridType.browser.ie8 = docElem.className.indexOf( "ie8" ) >= 0;

	//dev mobile assets flag: use for previewing mobile-optimized assets
	gridType.dev.mobileOverride = location.search.indexOf("mobile-assets") >= 0;

	//callback for dependencies.
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	// You can use isDefined to run code as soon as the document.body is defined, for example, for body-dependent scripts
	// or, for a script that's loaded asynchronously that depends on other scripts, such as jQuery.
	// First argument is the property that must be defined, second is the callback function
	gridType.onDefine = function( prop, callback ){
		var callbackStack 	= [];

		if( callback ){
			callbackStack.push( callback );
		}

		function checkRun(){
			if( eval( prop ) ){
				while( callbackStack[0] && typeof( callbackStack[0] ) === "function" ){
					callbackStack.shift().call( win );
				}
			}
			else{
				setTimeout(checkRun, 15);
			}
		};

		checkRun();
	};
<<<<<<< HEAD
<<<<<<< HEAD
	
	// shortcut of isDefine body-specific 
=======

	// shortcut of isDefine body-specific
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

	// shortcut of isDefine body-specific
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	gridType.bodyready = function( callback ){
		gridType.onDefine( "document.body", callback );
	};

	/* Asset loading functions:
		- gridType.load is a simple script or stylesheet loader
		- scripts can be loaded via the gridType.load.script() function
<<<<<<< HEAD
<<<<<<< HEAD
		- Styles can be loaded via the gridType.load.style() function, 
=======
		- Styles can be loaded via the gridType.load.style() function,
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
		- Styles can be loaded via the gridType.load.style() function,
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
		  which accepts an href and an optional media attribute
	*/

	//loading functions available on gridType.load
	gridType.load = {};

	//define gridType.load.style
	gridType.load.style = function( href, media ){
		if( !href ){ return; }
		var lk			= doc.createElement( "link" ),
			links		= head.getElementsByTagName("link"),
			lastlink	= links[links.length-1];
			lk.type 	= "text/css";
			lk.href 	= href;
			lk.rel		= "stylesheet";
			if( media ){
				lk.media = media;
			}
			//if respond.js is present, be sure to update its media queries cache once this stylesheet loads
			//IE should have no problems with the load event on links, unlike other browsers
			if( "respond" in window ){
				lk.onload = respond.update;
			}

			//might need to wait until DOMReady in IE...
			// this if is busted ... needs to be fixed.
			if( lastlink != undefined && lastlink.nextSibling != null){
				head.insertBefore(lk, lastlink.nextSibling );
			} else {
				head.appendChild( lk );
			}
	};
<<<<<<< HEAD
<<<<<<< HEAD
	
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	//define gridType.load.style
	gridType.load.script = function( src ){
		console.log(src);
		if( !src ){ return; }
		var script		= doc.createElement( "script" ),
			fc			= head.firstChild;
			script.src 	= src;

			//might need to wait until DOMReady in IE...
			if( fc ){
				head.insertBefore(script, fc );
			} else {
				head.appendChild( script );
			}
	};

	//quick element class existence function
	gridType.hasClass = function( el, classname ){
		return el.className.indexOf( classname ) >= 0;
	};

	//cookie functions - set,get,forget
	gridType.cookie = {
		set: function(name,value,days) {
			if (days) {
				var date = new Date();
				date.setTime(date.getTime()+(days*24*60*60*1000));
				var expires = "; expires="+date.toGMTString();
			}
			else var expires = "";
			document.cookie = name+"="+value+expires+"; path=/";
		},
		get: function(name) {
			var nameEQ = name + "=";
			var ca = document.cookie.split(';');
			for(var i=0;i < ca.length;i++) {
				var c = ca[i];
				while (c.charAt(0)==' ') c = c.substring(1,c.length);
				if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
			}
			return null;
		},
		forget: function(name) {
			gridType.cookie.set(name, "", -1);
		}
	};
<<<<<<< HEAD
<<<<<<< HEAD
	
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======

>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
	//extend gridType.support with some modernizr definitions
	gridType.extend( gridType.support, {
		localStorage		: Modernizr.localstorage,
		applicationcache	: Modernizr.applicationcache,
		touch				: Modernizr.touch,
		displayTable		: Modernizr[ "display-table" ]
	});



})(this);
