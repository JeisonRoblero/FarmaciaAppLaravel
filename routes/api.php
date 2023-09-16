<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Rutas para medicamentos
Route::get('/medicamentos','App\Http\Controllers\MedicamentoController@index'); //Mostrar todos los registros
Route::post('/medicamentos','App\Http\Controllers\MedicamentoController@store'); //Crear un registro
Route::put('/medicamentos/{id}','App\Http\Controllers\MedicamentoController@update'); //Actualizar un registro
Route::delete('/medicamentos/{id}','App\Http\Controllers\MedicamentoController@destroy'); //Eliminar un registro

// Rutas para clientes
Route::get('/clientes','App\Http\Controllers\ClienteController@index'); //Mostrar todos los registros
Route::post('/clientes','App\Http\Controllers\ClienteController@store'); //Crear un registro
Route::put('/clientes/{id}','App\Http\Controllers\ClienteController@update'); //Actualizar un registro
Route::delete('/clientes/{id}','App\Http\Controllers\ClienteController@destroy'); //Eliminar un registro

// Rutas para ventas
Route::get('/ventas','App\Http\Controllers\VentaController@index'); //Mostrar todos los registros
Route::post('/ventas','App\Http\Controllers\VentaController@store'); //Crear un registro
Route::put('/ventas/{id}','App\Http\Controllers\VentaController@update'); //Actualizar un registro
Route::delete('/ventas/{id}','App\Http\Controllers\VentaController@destroy'); //Eliminar un registro

// Rutas para carritos
Route::get('/carritos','App\Http\Controllers\CarritoController@index'); //Mostrar todos los registros
Route::post('/carritos','App\Http\Controllers\CarritoController@store'); //Crear un registro
Route::put('/carritos/{id_venta}/{id_medicamento}','App\Http\Controllers\CarritoController@update'); //Actualizar un registro
Route::delete('/carritos/{id_venta}/{id_medicamento}','App\Http\Controllers\CarritoController@destroy'); //Eliminar un registro