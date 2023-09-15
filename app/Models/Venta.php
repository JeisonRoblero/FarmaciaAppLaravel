<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Venta extends Model
{
    public $table = "venta";
    use HasFactory;

    protected $fillable = ['fecha_venta','metodo_pago','total','id_cliente'];
}
