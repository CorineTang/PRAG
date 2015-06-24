<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" type="text/css" 
                       href="View/css/headerfooter.css " /> 
    <link rel="stylesheet" type="text/css"
    					href="View/css/libs/bootstrap.min.css">
	<script type="text/javascript" src="View/js/libs/jquery-1.11.3.js"></script> 
	<script src="View/js/libs/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <!-- <meta http-equiv="Content-Type" content="application/json; charset=utf-8"/>
 --></head>
<nav class="navbar">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button> -->
      <a class="navbar-brand" href="#">Logo</a>
     <!-- <img alt="Brand" src="..."> -->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
        <li><a href="#">Accueil</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profils<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Modifier</a></li>
            <!-- <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li> -->
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Stages<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Liste de voeux</a></li>
            <li><a href="#">Consultation</a></li>
            <li><a href="#">Evaluation</a></li>
          </ul>
        </li>
          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ADMIN<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?control=import&action=showImportClassement">Import Classement</a></li>
            <li><a href="index.php?control=import&action=showImportStage">Import Stage</a></li>
          </ul>
        </li>
      </ul>
     <ul class="nav navbar-nav navbar-right">
         <p class="navbar-text">Utilisateur</p>
        <p class="navbar-text">Filiere</p>
        <li><a href="#">Connexion</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>