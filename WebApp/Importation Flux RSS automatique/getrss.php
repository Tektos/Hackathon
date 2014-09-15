<?php
// Collecter les données d'un flux RSS et les intégrer dans une Base de données.
include '_connexion.php';
mysqli_set_charset($conn,"UTF8");

if ($result = mysqli_query($conn, "SELECT RSS FROM fluxrss;")) {
    while ($row = mysqli_fetch_assoc($result)) {
	//$xml=("http://www.opalenews.com/agenda/rss/");
		if($flux = simplexml_load_file($row["RSS"])) {
			$channel = $flux->channel;

			foreach($channel->item as $valeur) {
				$item_title=$valeur->title;
				$item_link=$valeur->link;
				$item_desc=$valeur->description;
				$item_pubDate=date("Y/m/d",strtotime($valeur->pubDate));		
				echo ("<p><a href='" . $item_link . "'>" . $item_title . "</a>");
				echo ("<br>");
				echo ($item_desc . "</p>");
				echo ("<br>");

				echo ($item_pubDate);
				echo ("<br />");

				$link=mysqli_real_escape_string($conn,$item_link);
				$title=mysqli_real_escape_string($conn,$item_title);
				$desc= mysqli_real_escape_string($conn,$item_desc);
				$date= mysqli_real_escape_string($conn,$item_pubDate);
				$sql=mysqli_query($conn,"INSERT INTO events_fr (EVENTS_Description,EVENTS_EndDate,EVENTS_Website,EVENTS_Title)
				VALUES ('$desc','$date','$link','$title')");
				if (!$sql) {
					die('Error: ' . mysqli_error($conn));
				}
	
			}
		}
	}
}

mysqli_close($conn);
?>