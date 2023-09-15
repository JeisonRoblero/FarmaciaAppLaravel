<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Medicamento;

class MedicamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $medicamento = Medicamento::all();
        return $medicamento;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $medicamento = new Medicamento();
        $medicamento->$nombre = $request->nombre;
        $medicamento->$tipo = $request->tipo;
        $medicamento->$dosis = $request->dosis;
        $medicamento->$precio = $request->precio;
        $medicamento->$stock = $request->stock;

        $medicamento->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $medicamento = Medicamento::findOrFail($request->id);
        $medicamento->$nombre = $request->nombre;
        $medicamento->$tipo = $request->tipo;
        $medicamento->$dosis = $request->dosis;
        $medicamento->$precio = $request->precio;
        $medicamento->$stock = $request->stock;
        $medicamento->save();

        return $medicamento;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $medicamento = Medicamento::destroy($request->id);
        return $medicamento;
    }
}
