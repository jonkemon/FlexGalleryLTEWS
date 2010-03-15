package com.telecoms.media.sousChef.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.sousChef.control.delegates.LoadRecipeDelegate;
	import com.telecoms.media.sousChef.model.sousChefModelLocator;
	import flash.external.ExternalInterface;
	
	import mx.controls.Alert;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class LoadRecipeCommand implements ICommand
	{		
		private var model:sousChefModelLocator = sousChefModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			var responder:Responder = new Responder(onResults,onFault);
			var delegate:LoadRecipeDelegate = new LoadRecipeDelegate(responder);
			delegate.loadRecipes();
		}
		private function onFault(event:FaultEvent):void
		{
			Alert.show('No recipes were found...');
		}
		private function onResults(event:ResultEvent):void
		{
			model.recipeList = event.token.result as XML;
		}
	}
}