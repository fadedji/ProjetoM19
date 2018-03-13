<?php
	$Username=$_POST['user'];
	$Password=$_POST['pass'];
	$Password=$_POST['repass'];
	$Email=$_POST['email'];
	include("ligaBD.php");

		$existe="SELECT * FROM `utilizadores` WHERE Username='$Username'and Email='$Email' and Password='$Password'";
		$faz_existe=mysql_query($existe,$ligaBD);
		if($faz_existe === FALSE){
			die(mysql_error());
		}
		if(mysql_num_rows($faz_existe) == 0){
			$insere_utilizadores= "INSERT INTO utilizadores values('".$Username."','".$Password."','".$Email."')";
			$faz_insere_utilizadores=mysql_query($insere_utilizadores,$ligaBD);
			header("Location:index.html");
            }
?>