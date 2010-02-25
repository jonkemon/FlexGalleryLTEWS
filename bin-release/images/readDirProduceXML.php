<?php
$str = '<?xml version="1.0" encoding="UTF-8" ?>
<content>';
echo $str;

// find the path to the php script
if(empty($_SERVER['REQUEST_URI'])) {
$_SERVER['REQUEST_URI'] = $_SERVER['SCRIPT_NAME'];
}
// strip the php file name from the path and add '/mp3s/'
$url = preg_replace('/\?.*$/', '', $_SERVER['REQUEST_URI']);
$url = 'http://'.$_SERVER['HTTP_HOST'].'/'.ltrim(dirname($url), '/').'/';

$dir=".";
// scan the images directory for file names
$files = scandir($dir);
foreach ($files as &$file) {
if ($file!='.' && $file!='..' && $file!='readDirProduceXML.php' )
{
// strip '.jpg' from the file name for the title shown in the player
echo '<images>';
// give the full absolute path for each mp3
echo '<url>'.$url.$file.'</url>';
echo '</images>';
}
}

$str2 = '</content>
';
echo $str2;
?>