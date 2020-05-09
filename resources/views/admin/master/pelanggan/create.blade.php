@extends('template.app')

@section('pagetitle','Tambah Pelanggan')

@push('customcss')
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="{{URL::asset('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')}}">

    <style>
        .label-required{
            font-size: 14px;
            color: red;
        }
    </style>
@endpush

@section('content')

    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="box box-success">
                <form action="{{ route('pelanggan.store') }}" method="post" class="form" enctype="multipart/form-data">
                    <div class="box-body">

                        @csrf  {{--sisa--}}
                        @method('POST')

                        <div class="form-group">
                            <label for="">Nama Pelanggan<span class="label-required">*</span></label>
                            <input type="text" name="nama_pelanggan" class="form-control input-sm" placeholder="Nama Villa..."
                                required maxlength="50" value="{{ old('nama_pelanggan') }}">
                        </div>

                        <div class="form-group">
                            <label for="">Alamat Pelanggan<span class="label-required">*</span></label>
                            <input type="text" name="alamat_pelanggan" class="form-control input-sm" placeholder="Alamat..."
                                required min="0" max="200" value="{{ old('alamat_pelanggan') }}">
                        </div>

                        <div class="form-group">
                            <label for="">No Hp/Wa<span class="label-required">*</span></label>
                            <input type="number" name="no_hp" class="form-control input-sm" placeholder="Nama Villa..."
                                required maxlength="14" value="{{ old('no_hp') }}">
                        </div>

                    </div> <!-- /.box-body -->

                    <div class="box-footer">
                        <div class="pull-right">
                            <button type="submit" class="btn btn-md btn-success"> <i class="fa fa-save"></i> Simpan</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('customscript')

@endpush