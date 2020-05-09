@extends('template.app')

@section('pagetitle','Master Pelanggan')


@section('content')

    {{-- Default Box --}}
    <div class="box box-primary">
        <div class="box-body">

            <div style="margin-bottom: 20px;">
                <a href="{{ route('pelanggan.create') }}" class="btn btn-sm btn-primary">
                    <span class="fa fa-plus"></span> Tambah data
                </a>
            </div>

            <div class="table">
                <table class="table table-striped table-hover table-responsive" id="table">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>No Hp/Wa</th>
                        <th>Opsi</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($pelanggans as $index => $item)
                        <tr>
                            <td>{{ $index + $pelanggans->firstItem() }}</td>
                            {{--ucfirst Mengkapitalkan Huruf Pertama--}}
                            <td>{{ ucfirst($item->nama_pelanggan) }}</td>
                            <td>{{ ucfirst($item->alamat_pelanggan) }}</td>
                            <td>{{ $item->no_hp }}</td>
                            
                            <td>
                                <a href="{{ route('pelanggan.edit', $item->id) }}" class="btn btn-xs btn-success"> <span class="fa fa-edit"></span> </a>
                                <a href="javascript:void(0)" onclick="$(this).find('form').submit()" class="btn btn-xs btn-danger"> 
                                    <span class="fa fa-trash"></span> 

                                    <form action="{{ route('pelanggan.destroy', $item->id) }}" method="POST">
                                    
                                        @csrf
                                        @method('DELETE')

                                    </form>

                                </a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>

                {{--Pagination--}}
                <div class="pull-right">
                    {!! $pelanggans->links() !!}
                </div>
                {{--Tutup Pagination--}}

            </div>
        </div>
        {{-- tutup box body --}}
    </div>
@endsection