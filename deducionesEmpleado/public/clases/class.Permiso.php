<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Permiso.php
 *
 * $Id$
 *
 * This file is part of modelo sin título.
 *
 * Automatically generated on 24.10.2017, 11:53:54 with ArgoUML PHP module 
 * (last revised $Date: 2010-01-12 20:14:42 +0100 (Tue, 12 Jan 2010) $)
 *
 * @author firstname and lastname of author, <author@example.org>
 */

if (0 > version_compare(PHP_VERSION, '5')) {
    die('This file was generated for PHP 5');
}

/**
 * include Empleado
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Empleado.php');

/**
 * include Planilla
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Planilla.php');

/* user defined includes */
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BE1-includes begin
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BE1-includes end

/* user defined constants */
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BE1-constants begin
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BE1-constants end

/**
 * Short description of class Permiso
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Permiso
    /* multiple generalisations not supported by PHP: */
    /* extends Planilla,
            Empleado */
{
    // --- ASSOCIATIONS ---


    // --- ATTRIBUTES ---

    /**
     * Short description of attribute tipoPermiso
     *
     * @access private
     * @var string
     */
    private $tipoPermiso = '';

    /**
     * Short description of attribute fechaInico
     *
     * @access private
     * @var date
     */
    private $fechaInico = null;

    /**
     * Short description of attribute fechaFin
     *
     * @access private
     * @var date
     */
    private $fechaFin = null;

    /**
     * Short description of attribute numDias
     *
     * @access private
     * @var Integer
     */
    private $numDias = null;

    // --- OPERATIONS ---

    /**
     * Short description of method aprobarPermiso
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    public function aprobarPermiso()
    {
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF0 begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF0 end
    }

    /**
     * Short description of method verSolicitud
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    public function verSolicitud()
    {
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF5 begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF5 end
    }

    /**
     * Short description of method solicitarPermiso
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    public function solicitarPermiso()
    {
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF7 begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF7 end
    }

    /**
     * Short description of method denegarSolicitud
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    public function denegarSolicitud()
    {
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF9 begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BF9 end
    }

    /**
     * Short description of method imprimirSolicitud
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    public function imprimirSolicitud()
    {
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BFB begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BFB end
    }

} /* end of class Permiso */

?>