/**
 *  Original code from Ben Clinkinbeard (http://www.returnundefined.com/2009/03/smooth-scrolling-flex-list);
 * */
package com.telecoms.media.sousChef.view.ui
{
    
    import flash.events.MouseEvent;
    
    import mx.controls.HorizontalList;
    import mx.core.ScrollPolicy;
    import mx.core.mx_internal;
    import mx.events.FlexEvent;   

    public class SmoothScrollingHorizontalList extends HorizontalList
    {
        public function SmoothScrollingHorizontalList()
        {
            super();
           
            // required to ensure all renderers get created
            setStyle( "paddingRight", -1 );
           
            // parent container will handle scrolling
            horizontalScrollPolicy = ScrollPolicy.OFF;
           
            addEventListener( FlexEvent.UPDATE_COMPLETE, handleUpdateComplete);
        }
       
        private function handleUpdateComplete( event:FlexEvent ):void
        {
           var combinedRendererWidth:Number = 0;
           
            // iterate over list of renderers provided by our List subclass
            // but since HorozintalList does not have variable column widths, we use columnWidth
            for each( var renderer:Object in renderers )
            {
                combinedRendererWidth += columnWidth;
            }
           
            // list needs to be at least 10 pixels wide to show results
            // and always needs to be 10 pixels wider than the combined width of the renderers
            width = combinedRendererWidth + 10;
           
            // need to shrink list height when canvas has a scrollbar so the scrollbar doesn't overlap the list
            //height = ( Container( parent ).maxHorizontalScrollPosition > 0 ) ? parent.height - 16 : parent.height;
           
            // set the row height to height of list
            rowHeight = height;
        }
       
        // array of renderers being used in this list
        public function get renderers():Array
        {
            // prefix the internal property name with its namespace
            var rawArray:Array = mx_internal::rendererArray;
            var arr:Array = new Array();
 
            // the rendererArray is a bit messy
            // its an Array of Arrays, except sometimes the sub arrays are empty
            // and sometimes it contains entries that aren't Arrays at all
            for each( var obj:Object in rawArray )
            {
                var rendererArray:Array = obj as Array;
               
                // make sure we have an Array and there is something in it
                if( rendererArray && rendererArray.length > 0 )
                {
                    // if there is something in it, the first item is our renderer
                    // but this doesn't seem to be the case for HorizontalList because obj[0] is always empty?
                   //arr.push( obj[ 0 ] );
                   arr = rendererArray;
                }
            }
           
            return arr;
        }
    }
}