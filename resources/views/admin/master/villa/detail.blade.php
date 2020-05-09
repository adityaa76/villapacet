@extends('template.app')

@section('pagetitle','Detail Villa')


@section('content')
<div class="box box-primary">
    <div class="box-body">

        <div style="margin-bottom: 20px;">
            <a href="{{ route('villa.index') }}" class="btn btn-sm btn-primary">
                <span class="fa fa-arrow-left"></span> Kembali
            </a>
        </div>

        <div class="row">
            <div class="col-md-6">
                <dl class="dl-horizontal">
                    <dt>Nama Villa</dt>
                    <dd> {{ ucfirst($villa->nama_villa) }}</dd>

                    <dt>Alamat</dt>
                    <dd> {{ ucfirst($villa->alamat) }}</dd>

                </dl>
            </div>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <label for="">Deskripsi</label>
                <p class="text">{!! $villa->deskripsi !!}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <label for="">Fasilitas</label>
                <p class="text">{!! $villa->fasilitas !!}</p>
            </div>
        </div>

        {{-- <div class="row"> --}}
            <div class="table">
                <table class="table table-striped table-hover table-responsive" id="table">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Gambar</th>
                        </tr>
                    </thead>

                        @foreach ($villa->imageRelation as $image)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>

                            <img src=" {{ URL::asset('uploads/'.$image->image) }} " alt="" width="240px" height="140px">
                            
                            </td>
                        </tr>
                        @endforeach

                    <tbody>
                    </tbody>
                </table>
            </div>
            {{-- </div> --}}

    </div>
</div>
@endsection
