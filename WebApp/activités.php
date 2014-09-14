<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body style="">
        <section>
            <div style="width: 100%; text-align: center;">
                <a href="index.html"><img src="images/accueil.png" alt="accueil" style="max-height: 30px;"/></a>
                <a href="#"><img src="images/activites.png" alt="activites" style="max-height: 30px;"/></a>
                <a href="#"><img src="images/hotels.png" alt="hotels" style="max-height: 30px;"/></a>
                <a href="#"><img src="images/restaurant.png" alt="restaurant" style="max-height: 30px;"/></a>
                <a href="#"><img src="images/compte.png" alt="compte" style="max-height: 30px;"/></a>
                <hr />
            </div>
            <form method="post" action="choix.php">
                <input type="button" value="Laissez-vous guider"/><br />
                <img src="images/activite.png" alt="activité" style="max-height: 30px;"/>Activités et plein air<br /><input type="range" name="activités" style="margin-bottom: 15px;"/><br />
                <img src="images/shopping.png" alt="shopping" style="max-height: 30px;"/>Shopping<br /><input type="range" name="shopping" style="margin-bottom: 15px;"/><br />
                <img src="images/culture.png" alt="culture" style="max-height: 30px;"/>Art & Culture<br /><input type="range" name="culture" style="margin-bottom: 15px;"/><br />
                <img src="images/loisirs.png" alt="loisirs" style="max-height: 30px;"/>Loisirs<br /><input type="range" name="loisirs" style="margin-bottom: 15px;"/><br />
                <input type="submit" value="C'est parti !!"/>
            </form>
        </section>
    </body>
</html>