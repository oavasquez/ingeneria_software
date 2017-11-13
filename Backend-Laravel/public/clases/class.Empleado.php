<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Empleado.php
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
 * include Asistencia
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Asistencia.php');

/**
 * include Cargo
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Cargo.php');

/**
 * include Persona
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Persona.php');

/* user defined includes */
// section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000B43-includes begin
// section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000B43-includes end

/* user defined constants */
// section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000B43-constants begin
// section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000B43-constants end

/**
 * Short description of class Empleado
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Empleado
    /* multiple generalisations not supported by PHP: */
    /* extends Persona,
            Cargo */
{
    // --- ASSOCIATIONS ---
    // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd :     // generateAssociationEnd : 

    // --- ATTRIBUTES ---

    /**
     * Short description of attribute codigoEmple
     *
     * @access private
     * @var string
     */
    private $codigoEmple = '';

    /**
     * Short description of attribute sueldoBase
     *
     * @access private
     * @var double
     */
    private $sueldoBase = 0.0;

    /**
     * Short description of attribute fechaInicio
     *
     * @access private
     * @var date
     */
    private $fechaInicio = null;

    // --- OPERATIONS ---

    /**
     * Short description of method getCodigoEmple
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    public function getCodigoEmple()
    {
        // section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000C0F begin
        // section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000C0F end
    }

    /**
     * Short description of method getSueldoBase
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return integer
     */
    public function getSueldoBase()
    {
        $returnValue = null;

        // section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000C27 begin
        // section -64--88-0-4-c328f42:15f27798541:-8000:0000000000000C27 end

        return $returnValue;
    }

    /**
     * Short description of method getFechaInico
     *
     * @access public
     * @author firstname and lastname of author, <author@example.org>
     * @return date
     */
    public function getFechaInico()
    {
        $returnValue = null;

        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BBF begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BBF end

        return $returnValue;
    }

} /* end of class Empleado */

?>