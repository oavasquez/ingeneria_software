<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        'iniciarSesion',
        'obtenerDatosEmpleado',
        'verPlanilla',
        'encontrarContrato',
        'verDeduccion',
        'historialPagos',
        'obtenerSuperiores',
        'guardarPermiso',
        'guardarDatosEmpleado',
        'permisosSinLeer',
        'obtenerAsistencias',
        'asistenciaMesActual',
        'permisosHistorial',
        'denegarPermiso',
        'aprobarPermiso'
    ];
}
