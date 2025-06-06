/******************************************************************************
 *	Copyright (c) 2004, 2025 Actuate Corporation and others.
 *	All rights reserved. This program and the accompanying materials 
 *	are made available under the terms of the Eclipse Public License v2.0
 *	which accompanies this distribution, and is available at
 *		http://www.eclipse.org/legal/epl-2.0.html
 *	
 *	Contributors:
 *		Actuate Corporation - Initial implementation.
 *****************************************************************************/
 
/**
 *	BirtReportDocument
 *	...
 */
BirtReportDocument = Class.create( );

BirtReportDocument.prototype = Object.extend( new AbstractBaseReportDocument( ),
{
	__original_background_width : null,
	__original_background_height : null,
	__original_page_height : null,
	__original_page_width : null,
	__original_page_margin : null,
	/**
	 *	Initialization routine required by "ProtoType" lib.
	 *
	 *	@return, void
	 */
	initialize : function( id, tocElement )
	{
		this.__instance = $( id );
		this.__tocElement = tocElement;
		this.__neh_resize( );
		this.__has_svg_support = hasSVGSupport;
		
		//	Prepare closures.
		this.__neh_resize_closure = this.__neh_resize.bindAsEventListener( this );
		this.__beh_getPage_closure = this.__beh_getPage.bind( this );
		this.__beh_getPageInit_closure = this.__beh_getPageInit.bind( this );
		this.__beh_changeParameter_closure = this.__beh_changeParameter.bind( this );
		this.__beh_toc_closure = this.__beh_toc.bindAsEventListener( this );
		this.__beh_cacheParameter_closure = this.__beh_cacheParameter.bind( this );
		this.__beh_printServer_closure = this.__beh_printServer.bind( this );
		this.__beh_print_closure = this.__beh_print.bind( this );
		this.__beh_pdf_closure = this.__beh_pdf.bind( this );
		this.__beh_cancelTask_closure = this.__beh_cancelTask.bind( this );
		this.__beh_getPageAll_closure = this.__beh_getPageAll.bind( this );
		this.__beh_exportReport_closure = this.__beh_exportReport.bind( this );
		this.__beh_preview_layout_closure = this.__beh_preview_layout.bind( this );
				
		Event.observe( window, 'resize', this.__neh_resize_closure, false );
		
		birtEventDispatcher.registerEventHandler( birtEvent.__E_GETPAGE, this.__instance.id, this.__beh_getPage_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_GETPAGE_INIT, this.__instance.id, this.__beh_getPageInit_closure );		
		birtEventDispatcher.registerEventHandler( birtEvent.__E_PARAMETER, this.__instance.id, this.__beh_parameter );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_CHANGE_PARAMETER, this.__instance.id, this.__beh_changeParameter_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_CASCADING_PARAMETER, this.__instance.id, this.__beh_cascadingParameter );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_TOC, this.__instance.id, this.__beh_toc_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_QUERY_EXPORT, this.__instance.id, this.__beh_export );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_CACHE_PARAMETER, this.__instance.id, this.__beh_cacheParameter_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_PRINT, this.__instance.id, this.__beh_print_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_PRINT_SERVER, this.__instance.id, this.__beh_printServer_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_PDF, this.__instance.id, this.__beh_pdf_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_CANCEL_TASK, this.__instance.id, this.__beh_cancelTask_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_GETPAGE_ALL, this.__instance.id, this.__beh_getPageAll_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_EXPORT_REPORT, this.__instance.id, this.__beh_exportReport_closure );
		birtEventDispatcher.registerEventHandler( birtEvent.__E_PREVIEW_LAYOUT, this.__instance.id, this.__beh_preview_layout_closure );
						
  		birtGetUpdatedObjectsResponseHandler.addAssociation( "Docum", this );

		// TODO: rename it to birt event
		this.__cb_installEventHandlers( id );
	},

	/**
	 *	Birt event handler for "cache parameter" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_cacheParameter : function( id )
	{
		if ( birtParameterDialog.__parameter > 0 )
		{
	        birtParameterDialog.__parameter.length = birtParameterDialog.__parameter.length - 1;
		}
        birtSoapRequest.addOperation( Constants.documentId, Constants.Document,
        							  "CacheParameter", null, birtParameterDialog.__parameter );
		birtSoapRequest.setURL( soapURL );
		birtEventDispatcher.setFocusId( null );	// Clear out current focusid.
		return true;
	},

	/**
	 *	Birt event handler for "PrintServer" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_printServer : function( id )
	{
		birtPrintReportServerDialog.__cb_bind( );
	},

	/**
	 *	Birt event handler for "print" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_print : function( id )
	{
		birtPrintReportDialog.__cb_bind( );
	},
	
	/**
	 *	Birt event handler for "preview layout" event to switch between preview page & html layout
	 *
	 *	@id, document id (optional since there's only one document instance)
	 */
	__beh_preview_layout : function( id )
	{
		var oDocument		= document.getElementById("Document");
		var oBirtRoot		= document.getElementById("__BIRT_ROOT");
		var oPreview		= document.getElementById("previewPageLayout");
		var oBackground		= document.getElementById("backgroundContainer");
		var oContentPage	= document.getElementById("contentPage");
		var oOptionPreview	= document.getElementById("previewLayoutButton");

		// preview switch only if all necessary objects are detected
		if (	oBirtRoot		== null
			||	oPreview		== null
			||	oBackground		== null
			||	oContentPage	== null
			||	oDocument		== null
			||	oOptionPreview	== null) {
			return;
		}
		
		try {
			var previewStatus = oOptionPreview.value;

			// store the original dimensions and margins to restore the page layout
			if (oContentPage.style.height != "" && oContentPage.style.width != "" ) {
				this.__original_background_width	= oBackground.style.width;
				this.__original_background_height	= oBackground.style.height;
				this.__original_page_height			= oContentPage.style.height;
				this.__original_page_width			= oContentPage.style.width;
				this.__original_page_margin			= oContentPage.style.margin;
			}

			// post process, refresh the current preview layout
			if (id === "postProcess") {
				if (previewStatus === "page") {
					previewStatus = "standard";
				} else {
					previewStatus = "page";					
				}
			}

			var imgSrc = oOptionPreview.src;
			// validate preview state
			if (previewStatus === "page") {
				// switch from page to standard
				oDocument.style.backgroundColor	= "inherit";

				oOptionPreview.value		= "standard";
				oOptionPreview.src			= imgSrc.replace("PreviewPageLayout", "PreviewStandardLayout");
				oOptionPreview.title		= oOptionPreview.getAttribute("html_title");
				oOptionPreview.alt			= oOptionPreview.getAttribute("html_alt");
				
				// remove desk background & page shadow
				oBirtRoot.classList.remove("desk-background");
				oPreview.classList.remove("preview-page-layout");
	
				oBackground.style.width		= oContentPage.style.width;
				oBackground.style.height	= "";
				oContentPage.style.height	= "";
				oContentPage.style.margin	= "0px";
			} else {
				// switch from standard to page
				oDocument.style.backgroundColor	= "";

				oOptionPreview.value		= "page";
				oOptionPreview.src			= imgSrc.replace("PreviewStandardLayout", "PreviewPageLayout");
				oOptionPreview.title		= oOptionPreview.getAttribute("page_title");
				oOptionPreview.alt			= oOptionPreview.getAttribute("page_alt");
	
				// remove desk background & page shadow
				oBirtRoot.classList.add("desk-background")
				oPreview.classList.add("preview-page-layout");		
	
				oBackground.style.width		= this.__original_background_width;
				oBackground.style.height	= this.__original_background_height;
				oContentPage.style.width	= this.__original_page_width;
				oContentPage.style.height	= this.__original_page_height;
				oContentPage.style.margin	= this.__original_page_margin;
			}
		} catch (e) {
			console.log("BIRT page layout preview message, __beh_preview_layout: " + e.message)
		}
	},
	
	/**
	 *	Birt event handler for "pdf" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_pdf : function( id )
	{	
		var docObj = document.getElementById( "Document" );
		if ( !docObj || birtUtility.trim( docObj.innerHTML ).length <= 0)
		{
			birtMessageDialog.showMessage(Constants.error.generateReportFirst);	
			return;
		}	
		else
		{	
			var divObj = document.createElement( "DIV" );
			document.body.appendChild( divObj );
			divObj.style.display = "none";
		
			var formObj = document.createElement( "FORM" );
			divObj.appendChild( formObj );

			// Replace "html" to "pdf"
			var action = soapURL;
			var reg = new RegExp( "([&|?]{1}__format\s*)=([^&|^#]*)", "gi" );
			if( action.search( reg ) < 0 )
			{
				action = action + "&__format=pdf";
			}
			else
			{
				action = action.replace( reg, "$1=pdf" );
			}
			
			// Force "__overwrite" as false
			reg = new RegExp( "([&|?]{1}__overwrite\s*)=([^&|^#]*)", "gi" );
			if( action.search( reg ) < 0 )
			{
				action = action + "&__overwrite=false";
			}
			else
			{
				action = action.replace( reg, "$1=false" );
			}
						
			formObj.action = action;
			formObj.method = "post";			
			formObj.submit( );
		}
	},

	/**
	 *	Birt event handler for "CancelTask" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_cancelTask : function( id, object )
	{	
        birtSoapRequest.addOperation( Constants.documentId, Constants.Document, "CancelTask", null, object );
		birtSoapRequest.setURL( soapURL );
		birtEventDispatcher.setFocusId( null );	// Clear out current focusid.
		return true;
	},
	
	/**
	 *	Birt event handler for "GetPageAll" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_getPageAll : function( id, object )
	{	
		// set task id
		var taskid = birtUtility.setTaskId( );
		
		if( object )
		{
	        birtSoapRequest.addOperation( Constants.documentId, Constants.Document, "GetPageAll",
	        							   null, birtParameterDialog.__parameter, object,
	        							   { name : Constants.PARAM_SVG, value : this.__has_svg_support? "true" : "false" },
	        							   { name : Constants.PARAM_TASKID, value : taskid } );
		}
		else
		{
	        birtSoapRequest.addOperation( Constants.documentId, Constants.Document, "GetPageAll",
	        							   null, birtParameterDialog.__parameter,
        							       { name : Constants.PARAM_SVG, value : this.__has_svg_support? "true" : "false" },
	        							   { name : Constants.PARAM_TASKID, value : taskid } );			
		}
		birtSoapRequest.setURL( soapURL );
		birtEventDispatcher.setFocusId( null );	// Clear out current focusid.
		birtProgressBar.setRedirect( true );
		return true;
	},

	/**
	 *	Birt event handler for "ExportReport" event.
	 *
	 *	@id, document id (optional since there's only one document instance)
	 *	@return, true indicating server call
	 */
	__beh_exportReport : function( id )
	{
		birtExportReportDialog.__cb_bind( );
	},
	
	/**
	 *	Called after the component content is rendered.	 
	 *
	 *	@id, ui object id
	 *	@return, void
	 */	
	__postRender : function( id )
	{
		// ensures that the rendered component is the report document
		if ( id == "Document" )
		{
			var docObj = document.getElementById( id );
			if ( docObj )
			{
				// set document scrollbar position to the top
				docObj.scrollTop = "0px";				
				this.__neh_resize();
			}
		}
	}
	
});