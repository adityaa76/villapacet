<?php

namespace App\Http\Controllers\web;

use App\Models\ImagesVilla;
use App\Models\Villa;
use DB;
use Storage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class VillaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $villas = Villa::paginate(10);

        return view('admin.master.villa.index', compact('villas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.master.villa.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::beginTransaction();

        try{

            //menyimpan data villa

            $villa = Villa::create([

                //kolom ditabel inpuan admin
                "nama_villa" => $request->nama_villa,
                "alamat" => $request->alamat,
                "deskripsi" => $request->deskripsi,
                "fasilitas" => $request->fasilitas,

            ]);

            //menyimpan gambar
            if ($request->hasFile('images')){
                
                $arrayImages = [];
                foreach ($request->images as $value){
                    $path = $value->store('villa');

                    $columnsImage = [
                        "villa_id" => $villa->id,
                        "image" => $path,
                    ];

                    array_push($arrayImages, $columnsImage);

                }

                ImagesVilla::insert($arrayImages);

            }

            DB::commit();

        } catch (\Exception $e){
            DB::rollback();
            dd($e);
        }

        return redirect()->route("villa.index");

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $villa = Villa::with(['imageRelation'])->find($id);

        return view('admin.master.villa.detail', compact('villa'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $villa = Villa::find($id);

        return view('admin.master.villa.edit', compact('villa'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $villa = Villa::find($id);
        $oldImages = ImagesVilla::where('villa_id', $id)->get();

        DB::beginTransaction();

        try{

            //mengubah data villa

            $villa->update([

                //kolom ditabel inpuan admin
                "nama_villa" => $request->nama_villa,
                "alamat" => $request->alamat,
                "deskripsi" => $request->deskripsi,
                "fasilitas" => $request->fasilitas,

            ]);

            //menyimpan gambar
            if ($request->hasFile('images')){
                
                if(count($oldImages) > 0 ){

                    foreach($oldImages as $old){
                        Storage::delete($old->image);
                    }

                    ImagesVilla::where('villa_id', $id)->delete();

                }

                $arrayImages = [];
                foreach ($request->images as $value){
                    $path = $value->store('villa');

                    $columnsImage = [
                        "villa_id" => $villa->id,
                        "image" => $path,
                    ];

                    array_push($arrayImages, $columnsImage);

                }

                ImagesVilla::insert($arrayImages);

            }

            DB::commit();

        } catch (\Exception $e){
            DB::rollback();
            dd($e);
        }

        return redirect()->route("villa.index");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $villa = Villa::find($id);

        if(!$villa){
            abort(404);
        }

        $oldImages = ImagesVilla::where('villa_id', $id)->get();

        if(count($oldImages) > 0 ){

            foreach($oldImages as $old){
                Storage::delete($old->image);
            }

            ImagesVilla::where('villa_id', $id)->delete();

        }

        $villa->delete();

        return redirect()->route('villa.index');

    }
}
