<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class Contrato extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	 DB::table('Contrato')->insert([
            'TipoContrato' => str_random(10),
            'horaEntrada' => str_random(10).'@gmail.com',
            'horaSalida' => bcrypt('secret'),
        ]);
        //
    }
}

 'TipoContrato',
         'horaEntrada',
         'horaSalida',
         'diasDeTrabajo',
         'fechaContratacion',
         'sueldo'
        ];

