<head>
	<link rel="stylesheet" type="text/css" 
                       href="View/css/importStage.css " />
    <script src="View/js/importClassement.js"></script>
</head>
<div id="InportStage">
     <h1>Import de la liste des stages</h1>
<div id="instruction">  
 <div class="container" style="margin-top:40px"><div class="row"><div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
     <div class="panel panel-default panel-horizontal">
    <div class="panel-heading">
        <h3 class="panel-title">Instruction</h3>
    </div>
    <div class="panel-body">
        Sélectionnez la filiere
        Choissisez votre fichier <strong>CSV</strong>
    <p>Cliquez sur "Envoyez" le fichier</p></div>
    <div class="panel-footer">Instruction</div>
</div>

</div></div></div>
</div>
<br>
<form class="form-horizontal" enctype="multipart/form-data" action="index.php?control=import&action=importerStage" method="POST">
	<div class="form-group">
		<label for="Filiere" class="col-sm-3 control-label">Filiere</label>
        <div class="col-sm-9">
                <select class ="form-control" name="Filiere">
                <?php foreach ($listFiliere as $filiere) { ?>
                        <option value=<?php echo utf8_decode($filiere['id_Filiere']) ?>> <?php echo utf8_decode($filiere['nom_filiere']) ?> </option>
                <?php } ?>
        	</select>
        </div>
    </div>
    <div class="form-group">
        <label for="exampleInputFile">Fichier à importer</label>
     <input name="file" type="file" />
 	</div>
	 <button type="submit" class="btn btn-primary">Envoyer le fichier</button>
</form>