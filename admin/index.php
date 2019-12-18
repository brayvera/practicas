<?php
  session_start();
  if(isset($_SESSION['admin'])){
    header('location:home.php');
  }
  
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
  <style> 
  body,html{overflow-x: hidden;
    background-color: #3c8dbc}

</style>
<div class="login-box">
  	<div class="login-logo">
  		<b>Jefe de Laboratorio</b>
  	</div>
  
  	<div class="login-box-body">
    	<p class="login-box-msg">Inicie Sesiòn</p>
      <center><a href="../index.php"><i class="fa fa-user"></i> Ingresar Como usuario</a></center><br>
    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="username" value="admin" required autofocus>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" value="admin" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Inicar</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>