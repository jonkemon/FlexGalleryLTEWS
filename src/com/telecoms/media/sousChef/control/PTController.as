package com.telecoms.media.sousChef.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.telecoms.media.sousChef.control.command.LoadRecipeCommand;
	import com.telecoms.media.sousChef.control.events.menu.LoadRecipesEvent;

	public class PTController extends FrontController
	{
		public function PTController()
		{
			super();
			addCommand(LoadRecipesEvent.EVENT_ID, LoadRecipeCommand);
		}
		
	}
}