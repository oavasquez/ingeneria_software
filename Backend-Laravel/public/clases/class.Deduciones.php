<?php

error_reporting(E_ALL);

/**
 * modelo sin título - class.Deduciones.php
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
 * include Planilla
 *
 * @author firstname and lastname of author, <author@example.org>
 */
require_once('class.Planilla.php');

/* user defined includes */
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BFF-includes begin
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BFF-includes end

/* user defined constants */
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BFF-constants begin
// section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000BFF-constants end

/**
 * Short description of class Deduciones
 *
 * @access public
 * @author firstname and lastname of author, <author@example.org>
 */
class Deduciones
    extends Planilla
{
    // --- ASSOCIATIONS ---


    // --- ATTRIBUTES ---

    /**
     * Short description of attribute deducIHSS
     *
     * @access private
     * @var double
     */
    private $deducIHSS = 0.0;

    /**
     * Short description of attribute deducRAP
     *
     * @access private
     * @var double
     */
    private $deducRAP = 0.0;

    /**
     * Short description of attribute deducAportacion
     *
     * @access private
     * @var double
     */
    private $deducAportacion = 0.0;

    /**
     * Short description of attribute deducRetraso
     *
     * @access private
     * @var double
     */
    private $deducRetraso = 0.0;

    // --- OPERATIONS ---

    /**
     * Short description of method aplicarDeducion
     *
     * @access private
     * @author firstname and lastname of author, <author@example.org>
     * @param  integer
     * @param  integer
     * @param  integer
     * @param  integer
     * @return integer
     */
    private function aplicarDeducion($integer, $integer, $integer, $integer)
    {
        $returnValue = null;

        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000C0C begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000C0C end

        return $returnValue;
    }

    /**
     * Short description of method verDeducion
     *
     * @access private
     * @author firstname and lastname of author, <author@example.org>
     * @return void
     */
    private function verDeducion()
    {
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000C0E begin
        // section -64--88-56-1--7e4e0547:15f4d348c90:-8000:0000000000000C0E end
    }

} /* end of class Deduciones */

?>