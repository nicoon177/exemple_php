<?php
    require_once "more/db.php";
    require_once "more/functions.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
   <?php include_once("more/header.php"); ?>
   
   <?php include_once("more/menu.php"); ?>
    

  
   <section id="history" class="container">
       <div class="row">
           <h1>Історія королівського клуба "Real Madrid"</h1>
           <ul>
                        <?php 
                            $history = get_history($link)
                        ?>
                    <?php foreach ($history as $historys): ?>
               <li>
                   <div class="row history_years">
                       <h3><?=$historys["title"]?></h3>
                       <img src="<?=$historys["img"]?>" alt="<?=$historys["title_img"]?>" class="img-responsive">
                       <p><?=$historys["text"]?></p>
                   </div>
               </li>
               <?php endforeach; ?>
           </ul>
       </div>
   </section>
    
     <?php include_once("more/footer.php"); ?>
    
    
    
 
   
   
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    
  </body>
</html>