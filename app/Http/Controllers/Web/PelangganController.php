<?php

namespace App\Http\Controllers\Web;

use App\Models\Pelanggan;
use DB;
use Storage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class PelangganController extends Controller
{
    public function index()
    {
        $pelanggans = Pelanggan::paginate(10);

        return view('admin.master.pelanggan.index', compact('pelanggans'));
    }

    public function create()
    {
        return view('admin.master.pelanggan.create');
    }

    public function store(Request $request)
    {

        DB::beginTransaction();

        try{

            //menyimpan data pelanggan

            $pelanggan = Pelanggan::create([
                "nama_pelanggan" => $request->nama_pelanggan,
                "alamat_pelanggan" => $request->alamat_pelanggan,
                "no_hp" => $request->no_hp,
            ]);

            DB::commit();

        } catch (\Exception $e){
            DB::rollback();
            dd($e);
        }

        return redirect()->route("pelanggan.index");

    }

    public function edit($id)
    {
        $pelanggan = Pelanggan::find($id);

        return view('admin.master.pelanggan.edit', compact('pelanggan'));
    }

    public function update(Request $request, $id)
    {
        $pelanggan = Pelanggan::find($id);

        DB::beginTransaction();

        try{

            //menyimpan data pelanggan

            $pelanggan->update([
                "nama_pelanggan" => $request->nama_pelanggan,
                "alamat_pelanggan" => $request->alamat_pelanggan,
                "no_hp" => $request->no_hp,
            ]);

            DB::commit();

        } catch (\Exception $e){
            DB::rollback();
            dd($e);
        }

        return redirect()->route("pelanggan.index");

    }

    public function destroy($id)
    {
        $pelanggan = Pelanggan::find($id);

        if(!$pelanggan){
            abort(404);
        }

        $pelanggan->delete();

        return redirect()->route('pelanggan.index');

    }

}
