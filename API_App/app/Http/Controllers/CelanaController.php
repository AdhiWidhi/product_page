<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Celana;

class CelanaController extends Controller
{
    public function index(){
        $celanas = Celana::all();
        return response()->json(['Message' => 'Data Celana','data' => $celanas]);
    }
    public function show($id)
    {
        $celanas = Celana::find($id);
        return response()->json(['Message' => 'Toko saya', 'data' => $celanas]);
    }

    //untuk formnya dibuat di postman dengan method POST nanti ditambahkan di body isi dari data API kita seperti nama, deskripsi,dll
    //setelah itu baru ke method Simpan ini, abis buat formnya diaplikasi nanti akan disimpan ke database dan muncul pesan sucess di postman
    public function simpan(Request $request)
    {
        $celanas = Celana::create($request->all());
        return  response()->json(['Message' => 'Berhasil disimpan', 'data' => $celanas]);
    }

    //method edit di API
    // method update perlu parameter id agar data yang di edit jelas di ID mana di edit 
    public function update(Request $request, $id)
    {
        $celanas = Celana::find($id);
        $celanas->update($request->all());
        return response()->json(['Message' => 'Berhasil diupdate', 'data' => $celanas]);
    }

    //method Delete di APi
    public function destroy($id)
    {
        $celanas = Celana::find($id);
        $celanas->delete();
        return response()->json(['Message' => 'Berhasil didelete', 'data' => null]);
    }
}
