<?php 
	include 'includes/session.php';

	if(isset($_POST['id'])){
		$id = $_POST['id'];
		$sql = "SELECT *, usuarios.id AS empid FROM usuarios LEFT JOIN horarios ON horarios.id=usuarios.schedule_id WHERE usuarios.id = '$id'";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		echo json_encode($row);
	}
?>