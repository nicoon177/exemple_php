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
    <title>Головна</title>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/font-awesome.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
  </head>
  <body>
   
   <?php include_once "more/header.php"; ?>
    
    <?php include_once "more/menu.php"; ?>
    
    
    <section id="main" class="container">
            <div class="row">
                <div class="col-md-8"> 
                    <div class="row">
                       <h2>Найважливіші події Реала (за останій місяць).</h2>
                       
                       <?php 
                            $categories = get_categories($link)
                        ?>
                        <?php foreach ($categories as $category): ?>
                        <div class="col-md-5 col-md-offset-1">
                           <div class="card">
                                <img src="<?=$category["img"]?>" alt="фінал ліги чемпіонів" class="img-responsive">
                                <h3><?=$category["title"]?></h3>
                                <p><?=$category["text"]?></p>
                           </div>    
                        </div>
                        <?php endforeach; ?>
                        </div>
                </div>
                <div class="col-md-4 tables">
                    <?php include_once "more/club_info.php"; ?>
                </div>
            </div>
    </section>
    
    <section id="club_info" class="container">
            <div class="row">
                   <img src="img/club_info.png" alt="Реал Мадрид" class="img-responsive">
                   <h3>Про клуб</h3>
            </div>
            <div class="row">
                <div class="col-md-3 block">
                       <a href="history.php">
                            <img src="img/history.jpg" alt="Історія" class="img-responsive">
                            <p>Історія</p>
                        </a>
                </div>
                <div class="col-md-3 block">
                        <a href="trophy.php">
                            <img src="img/trophy.jpg" alt="" class="img-responsive">
                            <p>Трофеї</p>
                        </a>
                </div>
                <div class="col-md-3 block">
                       <a href="team.php">
                            <img src="img/legends.jpg" alt="Команда" class="img-responsive">
                            <p>Команда</p>
                        </a>
                </div>
                <div class="col-md-3 block">
                       <a href="stadium.php">
                            <img src="img/Bernabeu.jpg" alt="Стадіон" class="img-responsive">
                            <p>Стадіон</p>
                        </a>
                </div>
            </div> 
    </section>
    
    <?php include_once "more/footer.php"; ?>
    
   

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    
  </body>
</html>