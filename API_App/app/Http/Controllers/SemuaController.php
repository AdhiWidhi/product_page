<?php

namespace App\Http\Controllers;

use App\Models\Semua;
use Illuminate\Http\Request;

class SemuaController extends Controller
{

    public function index()
    {
        $semuas = Semua::all();
        return response()->json(['Message' => 'Data Semua', 'data' => $semuas]);
    }
    public function show($id)
    {
        $semuas = Semua::find($id);
        return response()->json(['Message' => 'Toko saya', 'data' => $semuas]);
    }
}