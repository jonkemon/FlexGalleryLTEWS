package com.telecoms.media.flexGallery.control.events.gallery
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class ShowButtonsEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "ShowButtons";
		public function ShowButtonsEvent()
		{
			super(EVENT_ID);
		}
		
	}
}