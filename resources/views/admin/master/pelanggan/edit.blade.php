@extends('template.app')

@section('pagetitle','Edit Pelanggan')

@push('customcss')

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
                <form action="{{ route('pelanggan.update', $pelanggan->id) }}" method="post" class="form" enctype="multipart/form-data">
                    <div class="box-body">

                        <div style="margin-bottom: 20px;">
                            <a href="{{ route('pelanggan.index') }}" class="btn btn-sm btn-primary">
                                <span class="fa fa-arrow-left"></span> Kembali
                            </a>
                        </div>

                        @csrf  {{--sisa--}}
                        @method('PUT')

                        <div class="form-group">
                            <label for="">Nama Pelanggan<span class="label-required">*</span></label>
                            <input type="text" name="nama_pelanggan" class="form-control input-sm" placeholder="Nama Villa..."
                                required maxlength="50" value="{{ $pelanggan->nama_pelanggan }}">
                        </div>

                        <div class="form-group">
                            <label for="">Alamat Pelanggan<span class="label-required">*</span></label>
                            <input type="text" name="alamat_pelanggan" class="form-control input-sm" placeholder="Alamat Villa..."
                                required maxlength="200" value="{{ $pelanggan->alamat_pelanggan }}">
                        </div>

                        <div class="form-group">
                            <label for="">No Hp/Wa<span class="label-required">*</span></label>
                            <input type="number" name="no_hp" class="form-control input-sm" placeholder="Nama Villa..."
                                required maxlength="14" value="{{ $pelanggan->no_hp }}">
                        </div>

                    </div> <!-- /.box-body -->

                    <div class="box-footer">
                        <div class="pull-right">
                            <button type="submit" class="btn btn-md btn-primary"> <i class="fa fa-save"></i> Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('customscript')
@endpush