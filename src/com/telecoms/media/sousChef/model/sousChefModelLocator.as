package com.telecoms.media.sousChef.model
{
	
	[Bindable]
	public class sousChefModelLocator
	{
		static public var __instance:sousChefModelLocator=null;
		public var recipeList:XML = new XML;
		static public function getInstance():sousChefModelLocator
		{
			if(__instance == null)
			{
				__instance = new sousChefModelLocator();
			}
			return __instance;
		}
	}	
}