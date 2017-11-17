<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});
Route::get('/BuscarEmpleado', function () {
    return view('/pages/BuscarEmpleado');
});
Route::get('/BuscarContrato',function (){
    return view('/pages/BuscarContrato');
});
Route::get('/Contador', function () {
    return view('/pages/Contador');
});
Route::get('/Contador', function () {
    return view('/pages/Contador');
});
Route::get('/ListadoEmpleados', function () {
    return view('pages/ListadoEmpleados');
});
Route::get('/adm_solicitudDIA', function () {
    return view('pages/adm_solicitudDIA');
});
Route::get('/adm_solicitudDuelo', function () {
    return view('pages/adm_solicitudDuelo');
});
Route::get('/adm_solicitudExcMedica', function () {
    return view('pages/adm_solicitudExcMedica');
});
Route::get('/adm_solicitudMaternidad', function () {
    return view('pages/adm_solicitudMaternidad');
});
Route::get('/adm_solicitudMatrimonio', function () {
    return view('pages/adm_solicitudMatrimonio');
});
Route::get('/adm_solicitudSalida', function () {
    return view('pages/adm_solicitudSalida');
});
Route::get('/calendarioPermisos', function () {
    return view('pages/calendarioPermisos');
});
Route::get('/login', function () {
    return view('pages/login');
});
Route::get('/500', function () {
    return view('pages/500');
});
Route::get('/404', function () {
    return view('pages/404');
});
Route::get('/registrarEmpleado', function () {
    return view('pages/register');
});

//#########controladores de las vistas y conectados con las clases################


//Permisos
Route::post('/guardarPermiso','PermisosController@guardarPermiso');
Route::post('/permisosSinLeer','PermisosController@permisosSinLeer');
Route::post('/permisosHistorial','PermisosController@permisosHistorial');
Route::post('/denegarPermiso','PermisosController@denegarPermiso');
Route::post('/aprobarPermiso','PermisosController@aprobarPermiso');
Route::post('/obtenerTodosPermisos','PermisosController@obtenerTodosPermisos');

//Empleado
Route::post('/guardarDatosEmpleado','EmpleadoController@guardarDatosEmpleado');
Route::post('/modificarDatosEmpleado','EmpleadoController@modificarEmpleado');
Route::post('/borrarDatosEmpleado','EmpleadoController@eliminarEmpleado');
Route::post('/obtenerDatosEmpleado','EmpleadoController@obtenerDatosEmpleado');
Route::post('/iniciarSesion','EmpleadoController@iniciarSesion');
Route::post('/obtenerSuperiores','EmpleadoController@obtenerSuperiores');



//Contrato
Route::post('/encontrarContrato', "ContratoController@encontrarContrato");
Route::post('/modificarContrato', "ContratoController@modificarContrato");

//Asistencia
Route::post('/obtenerTiempoRetraso', "AsistenciaController@obtenerTiempoRetraso");
Route::post('/obtenerAsistencia', "AsistenciaController@obtenerAsistencia");
Route::post('/obtenerDiasFaltados', "AsistenciaController@obtenerDiasFaltados");
Route::get('/asistenciaMesActual', "AsistenciaController@asistenciaMesActual");
Route::get('/asistenciasEmpleado', "AsistenciaController@asistenciasEmpleado");
Route::get('/obtenerAsistencias', "AsistenciaController@obtenerAsistencias");

//Deduciones
Route::post('/aplicarDeduccion', "DeduccionesController@AplicarDeduccion");
Route::get('/verDeduccion', "DeduccionesController@VerDeduccion");
Route::post('/eliminarDeduccion', "DeduccionesController@EliminarDeduccion");

//Planilla
Route::post('/verSueldo', "PlanillaController@verSueldo");
Route::post('/calcularSueldo', "PlanillaController@calcularSueldo");
Route::get('/verPlanilla', "PlanillaController@verPlanilla");
Route::post('/guardarPlanilla', "PlanillaController@guardarPlanilla");
Route::get('/historialPagos', "PlanillaController@historialPagos");








