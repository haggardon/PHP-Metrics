<?php
function unzip($sfname){
     $zip = new ZipArchive;
	 $path = 'server/php/files/source';
     $res = $zip->open($sfname);
     if ($res === TRUE) {
         $zip->extractTo($path);
         $zip->close();
     } else {
         echo 'failed';
     }
}
	 ?> 