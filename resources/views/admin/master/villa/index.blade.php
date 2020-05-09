@extends('template.app')

@section('pagetitle','Master Villa')


@section('content')

    {{-- Default Box --}}
    <div class="box box-primary">
        <div class="box-body">

            <div style="margin-bottom: 20px;">
                <a href="{{ route('villa.create') }}" class="btn btn-sm btn-primary">
                    <span class="fa fa-plus"></span> Tambah data
                </a>
            </div>

            <div class="table">
                <table class="table table-striped table-hover table-responsive" id="table">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Villa</th>
                        <th>Alamat</th>
                        <!-- <th>Image</th> -->
                        <th>Opsi</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach($villas as $index => $item)
                        <tr>
                            <td>{{ $index + $villas->firstItem() }}</td>
                            {{--ucfirst Mengkapitalkan Huruf Pertama--}}
                            <td>{{ ucfirst($item->nama_villa) }}</td>
                            <td>{{ ucfirst($item->alamat) }}</td>
                            <!-- <td>
                                <img src=" {{ URL::asset('uploads/'.$item->latestImage()->first()->image) }} " alt="" width="240px" height="140px">
                            </td> -->
                            <td>
                                <a href="{{ route('villa.show', $item->id) }}" class="btn btn-xs btn-primary"> <span class="fa fa-external-link"></span> </a>
                                <a href="{{ route('villa.edit', $item->id) }}" class="btn btn-xs btn-success"> <span class="fa fa-edit"></span> </a>
                                <a href="javascript:void(0)" onclick="$(this).find('form').submit()" class="btn btn-xs btn-danger"> 
                                    <span class="fa fa-trash"></span> 

                                    <form action="{{ route('villa.destroy', $item->id) }}" method="POST">
                                    
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
                    {!! $villas->links() !!}
                </div>
                {{--Tutup Pagination--}}

            </div>
        </div>
        {{-- tutup box body --}}
    </div>
@endsection