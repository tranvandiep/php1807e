@extends('adminlte::layouts.app')

@section('htmlheader_title')
    Menu
@endsection

@section('contentheader_title')
    Quản Lý Danh Mục Menu
@stop

@section('main-content')
    <div class="container-fluid spark-screen">
        <div class="row" style="background-color: white; padding: 10px;">
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Tên</th>
                        <th width="50px"></th>
                        <th width="50px"></th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $count = 1;
                    @endphp
                    @foreach ($menus as $item)
                        <tr>
                            <td>{{ $count++ }}</td>
                            <td>{{ $item->title }}</td>
                            <td><button class="btn btn-warning">Sửa</button></td>
                            <td><button class="btn btn-danger">Xoá</button></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
