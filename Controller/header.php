<?php
	require('/View/header.tpl');
	if (isset($_SESSION['user'])) {
		require('/View/menuConnect�e.tpl');
	}
	else{
		require('/View/menuVisiteur.tpl');
	}
?>	
		
