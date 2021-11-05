<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8"/>
		<title> Portal de mype.com.pe </title>
		<link rel="stylesheet" href="estilo.css">
	</head>
	<body>
		<div id="agrupar">
			<header id="cabecera">
				<h1> Bienvenidos a mype.com.pe</h1>
			</header>
			<nav id="menu">
				<ul>
					<li><a href='http://www.mype.com.pe'>Principal</a></li>
					<li><a href='http://www.planificacion.mype.com.pe'>Planificacion</a></li>
					<li><a href='http://www.rrhh.mype.com.pe'>Recursos Humanos</a></li>
				</ul>
			</nav>
			<section id="seccion">
				<article>

					<h1>Recursos Humanos</h1>
					<form action="index.php" method="GET">
						<select name="unidad" id="escoger">
							<option value="rrhh">Recursos Humanos</option>
							<option value="finanzas" >Finanzas</option>
							<option value="logistica">Logística</option>
						</select>
						<input type='submit' text='buscar'></input>
					</form>
<?php
	$s = "localhost";
	$u = "root";
	$c = "123";
	$bd = "db_mype"		;
	$conexion = mysqli_connect($s, $u, $c, $bd);
	
	if (!$conexion){echo 'Hubo un error al conectarse a la BD, Error Nro. '.mysqli_connect_errno().PHP_EOL;}

	if (isset($_GET['unidad'])){
		$opcion = $_GET['unidad'];
		$consulta = "select * from tpersonal where unidad='$opcion'";
		$query = mysqli_query($conexion, $consulta);
	}else{
		$opcion = 'rrhh';
		$consulta = "select * from tpersonal where unidad='rrhh'";
		$query = mysqli_query($conexion, $consulta);
	}
	
	if ($opcion == 'rrhh'){
		echo '<h2>Unidad de Recursos Humanos</h2>';
	}else if($opcion == 'finanzas'){
		echo '<h2>Unidad de Finanzas</h2>';	
	}else if($opcion == 'logistica')
		echo '<h2>Unidad de Logistica</h2>';
	echo '<ul>';

	while($fila = mysqli_fetch_array($query)){
		echo '<li id="lista">';
		echo "ID: "." ".$fila['idTrabajador'].", ".$fila['Nombre']." ".$fila['apPaterno'];
		echo '</li>';
	}
?>
					</ul>
				</article>
			</section>

			<footer id="pie">
				<small>mype.com.pe - Derechos reservados &copy; 2015</small>   
			</footer>
		</div>
	</body>
</html>
