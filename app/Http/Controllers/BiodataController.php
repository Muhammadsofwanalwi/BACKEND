<?php

namespace App\Http\Controllers;

use App\Models\Biodata;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class BiodataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dt = biodata::where('users', Auth::user()->id)->first();
        $cek = biodata::where('users', Auth::user()->id)->count();
        return view('dashboard.calonsiswa.biodata', compact('dt','cek'));
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
    public function store(Request $request,$id)
    {
        $this->validate($request,[
            'nama_panggilan'=>'required',
            'tmp_lahir'=>'required',
            'tgl_lahir'=>'required',
            'jns_kelamin'=>'required',
            'anak_ke'=>'required',
            'jml_sdr_kandung'=>'required',
            'jml_sdr_tiri'=> 'required',
            'alamat'=>'required',
        ]);
        $data['users']=$id;
        $data['nama_panggilan']= $request->nama_panggilan;
        $data['tmp_lahir']= $request->tmp_lahir;
        $data['tgl_lahir']= $request->tgl_lahir;
        $data['jns_kelamin']= $request->jns_kelamin;
        $data['anak_ke']= $request->anak_ke;
        $data['jml_sdr_kandung']= $request->jml_sdr_kandung;
        $data['jml_sdr_tiri']= $request->jml_sdr_tiri;
        $data['alamat']= $request->alamat;
        $data['created_at'] = date('Y-m-d H:i:s');
        $data['updated_at'] = date('Y-m-d H:i:s');
        biodata::insert($data);
        return redirect('/datasiswa')->with('success','biodata siswa berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Biodata  $biodata
     * @return \Illuminate\Http\Response
     */
    public function show(Biodata $biodata)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Biodata  $biodata
     * @return \Illuminate\Http\Response
     */
    public function edit(Biodata $biodata)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Biodata  $biodata
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'nama_panggilan'=>'required',
            'tmp_lahir'=>'required',
            'tgl_lahir'=>'required',
            'jns_kelamin'=>'required',
            'anak_ke'=>'required',
            'jml_sdr_kandung'=>'required',
            'jml_sdr_tiri'=> 'required',
            'alamat'=>'required',
        ]);
            
        $data['nama_panggilan']= $request->nama_panggilan;
        $data['tmp_lahir']= $request->tmp_lahir;
        $data['tgl_lahir']= $request->tgl_lahir;
        $data['jns_kelamin']= $request->jns_kelamin;
        $data['anak_ke']= $request->anak_ke;
        $data['jml_sdr_kandung']= $request->jml_sdr_kandung;
        $data['jml_sdr_tiri']= $request->jml_sdr_tiri;
        $data['alamat']= $request->alamat;
        $data['updated_at'] = date('Y-m-d H:i:s');
        biodata::where('users',$id)->update($data);

        return redirect('/datasiswa')->with('success','biodata siswa berhasil diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Biodata  $biodata
     * @return \Illuminate\Http\Response
     */
    public function destroy(Biodata $biodata)
    {
        //
    }
}
