<?php 

session_start(); ?>
<?php include 'header.php'; 


?>
<body class="hold-transition login-page" background="fondo.jpg" style="background-size: 100%">
<style> 
  body,html{overflow-x: hidden;}
  button{ position: relative; top:275%; left:275%;}
</style>
<div class="login-box">
  	<div class="login-logo">
   <?php 

   ?>
  		<p id="date"></p>
      <p id="time" class="bold"></p>
  	</div>
  
  	<div class="login-box-body">
    	<h4 class="login-box-msg">Ingrese<br>Codigo Del Estudiante/Docente</h4>
      <center><a href="admin/index.php"><i class="fa fa-user"></i> Ingresar Como Administrador</a></center><br>
    	<form id="attendance">
          <div class="form-group">
            <select class="form-control" name="status">
              <option value="in">Hora de entrada</option>
              <option value="out">Hora de salida</option>
            </select>
          </div>
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control input-lg" id="employee" name="employee" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
      		<div class="row" >
          
    			  <div class="col-xs-4" >
          			<button  type="submit" class="btn btn-primary btn-block btn-flat" name="signin"><i class="fa fa-sign-in"> </i>  Registrar</button>
        		</div>
      		</div>
    	</form>
  	</div>
		<div class="alert alert-success alert-dismissible mt20 text-center" style="display:none;">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <span class="result"><i class="icon fa fa-check"></i> <span class="message"></span></span>
    </div>
		<div class="alert alert-danger alert-dismissible mt20 text-center" style="display:none;">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <span class="result"><i class="icon fa fa-warning"></i> <span class="message"></span></span>
    </div>
  		
</div>
	
<?php include 'scripts.php' ?>
<script type="text/javascript">
$(function() {
  var interval = setInterval(function() {
    var momentNow = moment();
    $('#date').html(momentNow.format('MMMM DD, YYYY'));  
    $('#time').html(momentNow.format('hh:mm:ss A'));
  }, 100);

  $('#attendance').submit(function(e){
    e.preventDefault();
    var attendance = $(this).serialize();
    $.ajax({
      type: 'POST',
      url: 'attendance.php',
      data: attendance,
      dataType: 'json',
      success: function(response){
        if(response.error){
          $('.alert').hide();
          $('.alert-danger').show();
          $('.message').html(response.message);
        }
        else{
          $('.alert').hide();
          $('.alert-success').show();
          $('.message').html(response.message);
          $('#employee').val('');
        }
      }
    });
  });
    
});
</script>
</body>
</html>