<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sepatu;

class SepatuController extends Controller
{
    public function index(){
        $sepatus = Sepatu::all();
        return response()->json(['Message' => 'Data Sepatu','data' => $sepatus]);
    }
    public function show($id)
    {
        $sepatus = Sepatu::find($id);
        return response()->json(['Message' => 'Toko saya', 'data' => $sepatus]);
    }

    //untuk formnya dibuat di postman dengan method POST nanti ditambahkan di body isi dari data API kita seperti nama, deskripsi,dll
    //setelah itu baru ke method Simpan ini, abis buat formnya diaplikasi nanti akan disimpan ke database dan muncul pesan sucess di postman
    public function simpan(Request $request)
    {
        $sepatus = Sepatu::create($request->all());
        return  response()->json(['Message' => 'Berhasil disimpan', 'data' => $sepatus]);
    }

    //method edit di API
    // method update perlu parameter id agar data yang di edit jelas di ID mana di edit 
    public function update(Request $request, $id)
    {
        $sepatus = Sepatu::find($id);
        $sepatus->update($request->all());
        return response()->json(['Message' => 'Berhasil diupdate', 'data' => $sepatus]);
    }

    //method Delete di APi
    public function destroy($id)
    {
        $sepatus = Sepatu::find($id);
        $sepatus->delete();
        return response()->json(['Message' => 'Berhasil didelete', 'data' => null]);
    }
}