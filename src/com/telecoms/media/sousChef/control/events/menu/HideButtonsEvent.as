package com.telecoms.media.flexGallery.control.events.gallery
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class HideButtonsEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "HideButtons";
		public function HideButtonsEvent()
		{
			super(EVENT_ID);
		}
		
	}
}