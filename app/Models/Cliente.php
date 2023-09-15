<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    public $table = "cliente";
    use HasFactory;
    protected $fillable = ['nombre','edad','genero','direccion','correo'];
}
