<?php 
	include 'includes/session.php';

	if(isset($_POST['id'])){
		$id = $_POST['id'];
		$sql = "SELECT *, usuarios.id as empid FROM usuarios LEFT JOIN position ON position.id=usuarios.position_id LEFT JOIN horarios ON horarios.id=usuarios.schedule_id WHERE usuarios.id = '$id'";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		echo json_encode($row);
	}
?>