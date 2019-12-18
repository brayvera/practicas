<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
  <?php include 'includes/menubar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Lista de Estudiantes/Docentes
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li>Estudiantes/Docentes</li>
        <li class="active">Lista</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <?php
          if(isset($_REQUEST['empid']))
            {
              $empid=$_REQUEST['empid'];
            }
            else
            {
            $empid=$_POST['empid'];
          }

              $query=mysqli_query($conn,"SELECT *, usuarios.id AS empid FROM usuarios LEFT JOIN semestres ON semestres.id=usuarios.position_id LEFT JOIN horarios ON horarios.id=usuarios.schedule_id WHERE usuarios.id = '$empid' ")or die(mysqli_error());
    $i=1;
    while($row=mysqli_fetch_array($query)){


         ?>

          <form class="form-horizontal" method="POST" action="ed_edit.php">
                            <input type="hidden" class="empid" name="id" value="<?php echo $row['empid'];?>">
                <!--cod-->
                <div class="form-group">
                    <label for="edit_employee_id" class="col-sm-3 control-label">ID</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_employee_id" name="employee_id" value="<?php echo $row['employee_id'];?>">
                    </div>
                </div>


                <div class="form-group">
                    <label for="edit_firstname" class="col-sm-3 control-label">Nombre</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_firstname" name="firstname" value="<?php echo $row['firstname'];?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_lastname" class="col-sm-3 control-label">Apellido</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_lastname" name="lastname" value="<?php echo $row['lastname'];?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_address" class="col-sm-3 control-label">Dirección</label>

                    <div class="col-sm-9">
                      <textarea class="form-control" name="address" id="edit_address" value="<?php echo $row['address'];?>"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="datepicker_edit" class="col-sm-3 control-label">Fecha de nacimiento</label>

                    <div class="col-sm-9"> 
                      <div class="date">
                        <input type="text" class="form-control" id="datepicker_edit" name="birthdate" value="<?php echo $row['birthdate'];?>">
                      </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_contact" class="col-sm-3 control-label">Datos de contacto</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_contact" name="contact" value="<?php echo $row['contact_info'];?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_gender" class="col-sm-3 control-label">Género</label>

                    <div class="col-sm-9"> 
                      <select class="form-control" name="gender" id="edit_gender">
                        <option selected id="gender_val"></option>
                        <option value="Male">Masculino</option>
                        <option value="Female">Femenino</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_position" class="col-sm-3 control-label">Semestre</label>

                    <div class="col-sm-9">
                      <select class="form-control" name="position" id="edit_position">
                        <option selected id="position_val"></option>
                        <?php
                          $sql = "SELECT * FROM semestres";
                          $query = $conn->query($sql);
                          while($prow = $query->fetch_assoc()){
                            echo "
                              <option value='".$prow['id']."'>".$prow['description']."</option>
                            ";
                          }
                        ?>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_schedule" class="col-sm-3 control-label">Horario Habilitado</label>

                    <div class="col-sm-9">
                      <select class="form-control" id="edit_schedule" name="schedule">
                        <option selected id="schedule_val"></option>
                        <?php
                          $sql = "SELECT * FROM horarios";
                          $query = $conn->query($sql);
                          while($srow = $query->fetch_assoc()){
                            echo "
                              <option value='".$srow['id']."'>".$srow['time_in'].' - '.$srow['time_out']."</option>
                            ";
                          }
                        ?>
                      </select>
                    </div>
                </div>
                              <button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Actualizar</button>
                                <a class="btn btn-primary btn-print" href="ed.php"   role="button">Regresar</a>
             </div>


              </form>
<?php
  }
      ?>

    </section>   
  </div>
    
  <?php include 'includes/footer.php'; ?>

</div>
<?php include 'includes/scripts.php'; ?>

</body>
</html>
