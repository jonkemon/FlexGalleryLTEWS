package com.telecoms.media.sousChef.control.events.menu
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class LoadRecipesEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "LoadRecipes";
		public function LoadRecipesEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
		
	}
}