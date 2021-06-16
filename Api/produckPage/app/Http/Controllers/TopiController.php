<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Topi;

class TopiController extends Controller
{
    public function index(){
        $topis = Topi::all();
        return response()->json(['Message' => 'Data Topi','data' => $topis]);
    }
    public function show($id)
    {
        $topis = Topi::find($id);
        return response()->json(['Message' => 'Toko saya', 'data' => $topis]);
    }

    //untuk formnya dibuat di postman dengan method POST nanti ditambahkan di body isi dari data API kita seperti nama, deskripsi,dll
    //setelah itu baru ke method Simpan ini, abis buat formnya diaplikasi nanti akan disimpan ke database dan muncul pesan sucess di postman
    public function simpan(Request $request)
    {
        $topis = Topi::create($request->all());
        return  response()->json(['Message' => 'Berhasil disimpan', 'data' => $topis]);
    }

    //method edit di API
    // method update perlu parameter id agar data yang di edit jelas di ID mana di edit 
    public function update(Request $request, $id)
    {
        $topis = Topi::find($id);
        $topis->update($request->all());
        return response()->json(['Message' => 'Berhasil diupdate', 'data' => $topis]);
    }

    //method Delete di APi
    public function destroy($id)
    {
        $topis = Topi::find($id);
        $topis->delete();
        return response()->json(['Message' => 'Berhasil didelete', 'data' => null]);
    }
}
