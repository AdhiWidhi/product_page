<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Jacket;

class JacketController extends Controller
{
    public function index(){
        $jakets = Jacket::all();
        return response()->json(['Message' => 'Data Jacket','data' => $jakets]);
    }
    public function show($id)
    {
        $jakets = Jacket::find($id);
        return response()->json(['Message' => 'Toko saya', 'data' => $jakets]);
    }

    //untuk formnya dibuat di postman dengan method POST nanti ditambahkan di body isi dari data API kita seperti nama, deskripsi,dll
    //setelah itu baru ke method Simpan ini, abis buat formnya diaplikasi nanti akan disimpan ke database dan muncul pesan sucess di postman
    public function simpan(Request $request)
    {
        $jakets = Jacket::create($request->all());
        return  response()->json(['Message' => 'Berhasil disimpan', 'data' => $jakets]);
    }

    //method edit di API
    // method update perlu parameter id agar data yang di edit jelas di ID mana di edit 
    public function update(Request $request, $id)
    {
        $jakets = Jacket::find($id);
        $jakets->update($request->all());
        return response()->json(['Message' => 'Berhasil diupdate', 'data' => $jakets]);
    }

    //method Delete di APi
    public function destroy($id)
    {
        $jakets = Jacket::find($id);
        $jakets->delete();
        return response()->json(['Message' => 'Berhasil didelete', 'data' => null]);
    }
}
