<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Medicamento extends Model
{
    public $table = "medicamento";
    use HasFactory;
    protected $fillable = ['nombre','tipo','dosis','precio','stock'];
}
