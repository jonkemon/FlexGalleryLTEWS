function doneclear()
	{document.getElementById('ffbugfix').innerHTML=" ";}

function readytheloadstop()
	{setTimeout("doneclear()", "1000");}

function forceloaddone()
{
	var thebrow=navigator.appName+navigator.appVersion+"";
	if (thebrow.indexOf('Opera')==-1 && thebrow.indexOf('Internet Explorer')==-1 && thebrow.indexOf('Safari')==-1)
	{
            document.getElementById('ffbugfix').innerHTML='<img src="http://media2.telecoms.com/loader_flash/ffonload.gif"></img>';
	    readytheloadstop();
	}
}
