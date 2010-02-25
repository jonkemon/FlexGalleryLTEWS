package com.telecoms.media.flexGallery.model
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class PhotosModelLocator
	{
		static public var __instance:PhotosModelLocator=null;
		public var photoAdresses:XML = new XML;
		public var photoObjects:ArrayCollection = new ArrayCollection;
		static public function getInstance():PhotosModelLocator
		{
			if(__instance == null)
			{
				__instance = new PhotosModelLocator();
			}
			return __instance;
		}
	}	
}