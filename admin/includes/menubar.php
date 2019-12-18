<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo (!empty($user['photo'])) ? '../images/'.$user['photo'] : '../images/profile.jpg'; ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $user['firstname'].' '.$user['lastname']; ?></p>
          <a><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">ESTADISTICAS</li>
        <li class=""><a href="home.php"><i class="fa fa-dashboard"></i> <span>Panel De Infromación</span></a></li>
        <li class="header">GESTIONAR</li>
        <li><a href="asis.php"><i class="fa fa-calendar"></i> <span>Asistencia</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>Estudiantes/Docentes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="ed.php"><i class="fa fa-circle-o"></i> Lista</a></li>
            <li><a href="horarios.php"><i class="fa fa-circle-o"></i> Horarios</a></li>
          </ul>
        </li>
        <li><a href="sem.php"><i class="fa fa-suitcase"></i> Semestre/Cursos</a></li>
        <li class="header">Reportes</li>
        <li><a href="nom_asis.php"><i class="fa fa-files-o"></i> <span>Nómina de Asistencia</span></a></li>
        <li><a href="schedule_print.php" target="_blanck"><i class="fa fa-clock-o"></i> <span>Nomina de Registrados</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>