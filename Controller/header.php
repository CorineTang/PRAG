<?php
	require('/View/header.tpl');
	if (isset($_SESSION['utilisateur'])) {
		require('/View/menuConnect�e.tpl');
	}
	else{
		require('/View/menuVisiteur.tpl');
	}
?>	
		
