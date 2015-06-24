<script type="text/javascript">

    // TODO : Faire les contrôles sur TOUT LES CHAMPS par rapport au format et au fait que le champ ne doit pas être VIDE !!!!!
    jQuery(function(){
        $("#ValidationPassword").focusout(function(){
            var passwordVal  = $("#Password").val();
            var checkVal     = $("#ValidationPassword").val();
            
            if(passwordVal != checkVal) {
                $("#error-password").removeAttr('style');
            }
            else {
                $("#error-password").css('display', 'none');
            }
        });
    });
</script>
<div> 
	<div id="dialog-form"  title="Profil">
		<fieldset>
			<form class="form-horizontal" method="post" id="profil" action="index.php?control=user&action=profil" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="Nom" class="col-sm-2 control-label">Nom</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="Nom">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Prenom" class="col-sm-2 control-label">Pr&eacute;nom</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="Prenom">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Ddn" class="col-sm-2 control-label">Date de naissance</label>
                    <div class="col-sm-5">
                        <input type="date" class="form-control" name="Ddn">
                    </div>
                </div>                
                <div class="form-group">
                    <label for="NbSemestre" class="col-sm-2 control-label">Nombre de semestre</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="NbSemestre" placeholder="Nombre de Semestre Valides">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-5">
                        <input type="email" class="form-control" id="inputEmail3" name="Email" placeholder="Adresse Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Password" class="col-sm-2 control-label">Ancien Mot de passe</label>
                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="oldPassword" name="oldPassword" placeholder="Ancien Mot de passe">
                     </div>
                </div>
                 <div class="form-group">
                    <label for="Password" class="col-sm-2 control-label">Nouveau Mot de passe</label>
                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="Password" name="Password" placeholder="Nouveau Mot de passe">
                     </div>
                </div>
                <div class="alert alert-danger" style="display:none;" id="error-password">Attention : Votre mot de passe et votre confirmation de mot de passe sont différents</div>
                <div class="form-group">
                    <label for="ValidationPassword" class="col-sm-2 control-label">Confirmation de votre nouveau Mot de passe</label>
                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="ValidationPassword" name="ValidationPassword" placeholder="Confirmez votre mot de passe">
                     </div>
                </div>
                <div class="form-group">
                    <label for="Telephone" class="col-sm-2 control-label">T&eacute;l&eacute;phone</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="Telephone">
                    </div>
                </div>
                <div class="form-group">
				<label for="Filiere" class="col-sm-2 control-label">Filiere</label>
				<div class="col-sm-5">
                    <select class ="form-control col-sm-5" name="Filiere">
					<option>Biologie</option>
					<option>IPR</option>
					<option>Pharmacie</option>
				</select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" value="submit" name="submit-profil" id="submit-profil"> Modifier profil </button>
			</form>
		</fieldset>
	</div>
</div>
