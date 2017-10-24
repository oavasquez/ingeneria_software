<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Asistencia.php
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
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BC2-includes begin
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BC2-includes end

/* user defined constants */
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BC2-constants begin
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BC2-constants end

/**
 * Short description of class Asistencia
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Asistencia
    /* multiple generalisations not supported by PHP: */
    /* extends Empleado,
            Planilla */
{
    // --- ASSOCIATIONS ---
    // generateAssociationEnd : 

    // --- ATTRIBUTES ---

    /**
     * Short description of attribute horaEntrada
     *
     * @access public
     * @var date
     */
    public $horaEntrada = null;

    /**
     * Short description of attribute horaSalida
     *
     * @access public
     * @var date
     */
    public $horaSalida = null;

    /**
     * Short description of attribute fecha
     *
     * @access public
     * @var date
     */
    public $fecha = null;

    // --- OPERATIONS ---

    /**
     * Short description of method getTiempoRetraso
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @param  fecha
     * @return integer
     */
    public function getTiempoRetraso($fecha)
    {
        $returnValue = null;

        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BCC begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BCC end

        return $returnValue;
    }

} /* end of class Asistencia */

?>