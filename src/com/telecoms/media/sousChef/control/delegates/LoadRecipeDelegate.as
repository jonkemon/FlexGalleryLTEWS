package com.telecoms.media.sousChef.control.delegates
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class LoadRecipeDelegate
	{
		private var __locator:ServiceLocator = ServiceLocator.getInstance();
		private var __service:HTTPService;
		private var __responder:IResponder;
		
		public function LoadRecipeDelegate(responder:IResponder)
		{
			__service = __locator.getHTTPService("recipeRetrieve");
			__responder = responder;
		}
		
		public function loadRecipes():void
		{
			var token:AsyncToken = __service.send();
			token.addResponder(__responder);
		}
	}
}