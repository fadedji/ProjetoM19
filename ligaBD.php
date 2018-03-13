<?php
$ligaBD = mysql_connect('localhost','root','root');
	if(!$ligaBD)
	{
		echo '<br> Erro: Não foi possível estabelecer ligação com o MySQL';exit;
	}
	else
	{
		$escolheBD = mysql_select_db('projeto_m19',$ligaBD);
		if (!$escolheBD)
		{
			echo '<br> Erro: ao escolher a BD';exit;
		}
	}
?>