<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Carrito extends Model
{
    public $table = "carrito";
    use HasFactory;
    protected $fillable = ['cantidad','subtotal','id_medicamento','id_venta'];
}
