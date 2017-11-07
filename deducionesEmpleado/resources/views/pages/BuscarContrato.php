<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Proyecto IngSoftware</title>
   <!-- Tell the browser to be responsive to screen width -->
   <meta name="csrf-token" content="{{ csrf_token() }}">
   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <!-- Bootstrap 3.3.7 -->
   <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
   <!-- Font Awesome -->
   <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
   <!-- Ionicons -->
   <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
   <!-- fullCalendar -->
   <link rel="stylesheet" href="../bower_components/fullcalendar/dist/fullcalendar.min.css">
   <link rel="stylesheet" href="../bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
   <!-- Theme style -->
   <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
   <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
   <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Adm</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin Panel</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">1</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Tienes 1 mensaje</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="../dist/img/avatar3.png" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Titulo de mensaje
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Cuerpo del mensaje</p>
                    </a>
                  </li>
                  <!-- end message -->
                </ul>
              </li>
              <li class="footer"><a href="#">Ver todos</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">2</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Tienes 2 notificaciones</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> ¡Hoy regresa Paquito de vacaciones!
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> Aceptación de permiso de XXX empleado. Verificar y notificar.
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">Ver todos</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">1</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Tienes 1 tarea</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Responder a permisos
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Completado</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">Ver todos</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../dist/img/avatar04.png" class="user-image" alt="User Image">
              <span class="hidden-xs">Admin</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../dist/img/avatar04.png" class="img-circle" alt="User Image">

                <p>
                  Administrador
                  <small>Francisco Morazán</small>
                </p>
              </li>

              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="/login" class="btn btn-default btn-flat">Cerrar sesión</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
   <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/avatar04.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Administrador</p>
          <!--a href="#"><i class="fa fa-circle text-success"></i> Online</a-->
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Opciones principales</li>
        <li class="active">
          <a href="/">
            <i class="fa fa-dashboard"></i> <span>Inicio</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">Bienvenido</small>
            </span>
          </a>
        </li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Gestión de Planilla</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href=""><i class="fa fa-circle-o"></i> Buscar contrato</a></li>

            <li><a href="/Contador"><i class="fa fa-circle-o"></i> Planilla del mes</a></li>            
            <li><a href=""><i class="fa fa-circle-o"></i> Historial de deducciones</a></li>            

            <li><a href=""><i class="fa fa-circle-o"></i> Historial de pagos</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Realizar Pago</a></li>
          </ul>
        </li>

        

        <li class="active treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Solicitudes de Permisos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/adm_solicitudDIA"><i class="fa fa-circle-o"></i> Por día</a></li>
            <li><a href="/adm_solicitudSalida"><i class="fa fa-circle-o"></i> Pase de salida</a></li>
            <li><a href="/adm_solicitudDuelo"><i class="fa fa-circle-o"></i> Por duelo</a></li>
            <li><a href="/adm_solicitudMatrimonio"><i class="fa fa-circle-o"></i> Por matrimonio</a></li>
            <li><a href="/adm_solicitudExcMedica"><i class="fa fa-circle-o"></i> Por incapacidad médica</a></li>
            <li><a href="/adm_solicitudMaternidad"><i class="fa fa-circle-o"></i> Por maternidad</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Estado de Solicitudes Existentes</a></li>
          </ul>
        </li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Control de Asistencia</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/ListadoEmpleados"><i class="fa fa-circle-o"></i> Mes actual</a></li>
            <li><a href="/BuscarEmpleado"><i class="fa fa-circle-o"></i> <span>Busqueda por empleado</span></a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Historial de empleados</a></li>
          </ul>
        </li>
        <li>
          <a href="/calendarioPermisos">
            <i class="fa fa-calendar"></i> <span>Monitoreo de permisos</span>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fa fa-calendar"></i> <span>Monitoreo de vacaciones</span>
          </a>
        </li>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Contenido Principal -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
      <div class="row">

        <!-- /.col -->
        <div class="col-md-9">
          <div class="&emsp;&emsp;Buscar Contrato">
            <div class="shearEmployye-logo">
              
            </div>
            <!-- /.Shearemployyed-logo -->
            <div class="ShearEmployyed-box-body">

              <form action=" " method="post">
                <div class="form-group has-feedback">
                  <label for="" >&emsp;Ingrese Codigo del Contrato&emsp;</label>
                  <input id="txtCodigoContrato" type="text" class="ingresarCodigo" placeholder="Ingrese Codigo de Contrato" width="80px">
                </div>
                <div class="col-xs-6">
                  <button id ="btnBuscar" type="button" class="btn btn-primary">BUSCAR</button>
                </div>



              </form>
            </div>
                  <div class="muestra_codigo">
                    <table class="table">
                     <tr>
                        <th scope="col">Codigo del Contrato: </th>
                        <td><label id="lblCodigoContrato"></label></td>
                    </tr>
                    <tr>
                        <th scope="col">Tipo de Contrato: </th>
                        <td><label id="lblTipoContrato"></label></td>
                    </tr>
                    <tr>
                        <th scope="col">Hora de Entrada: </th>
                        <td><label id="lblHoraEntrada"></label></td>
                    </tr>
                    <tr>
                        <th scope="col">Hora de Salida: </th>
                        <td><label id="lblHoraSalida"></label></td>
                    </tr>
                    <tr>
                        <th scope="col">Dias de Trabajo: </th>
                        <td><label id="lblDiasTrabajo"></label></td>
                    </tr>
                    <tr>
                        <th scope="col">Fecha de Contratación: </th>
                        <td><label id="lblFechaContratacion"></label></td>
                    </tr>
                      
                    </table>
                  </div>
        <!-- /.col -->
        </div>
      <!-- /.row -->
      </section>
    <!-- /.content -->
    </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong> IS-802 Ingeneria de Software - Proyecto de Clase - Ingenería en Sistemas UNAH.</strong>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
      </div>
      <!-- /.tab-pane -->

      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->

      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Slimscroll -->
<script src="../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- fullCalendar -->
<script src="../bower_components/moment/moment.js"></script>
<script src="../bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<!-- Page specific script -->

<script src="js/buscarContrato.js"></script>

</body>
</html>
