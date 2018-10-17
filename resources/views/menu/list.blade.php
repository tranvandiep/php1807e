@extends('adminlte::layouts.app')

@section('htmlheader_title')
    Menu
@endsection

@section('contentheader_title')
    Quản Lý Danh Mục Menu
@stop

@section('js')
<script type="text/javascript">
    function deleteMenu(id) {
        $.post("{{ route('deleteMenu') }}",
        {
            id: id,
            _token: $('[name=_token]').val()
        },
        function(data, status){
            location.reload()
        });
    }

    function editMenu(id, title) {
        $('[name=id]').val(id)
        $('[name=title]').val(title)
        $('#btn-submit').html('Cập Nhật')
    }
</script>
@stop

@section('main-content')
    <div class="container-fluid spark-screen">
        <div class="row" style="background-color: white; padding: 10px;">
            <div class="col-md-6">
                <form action="{{ route('postMenu') }}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label>Tiêu Đề</label>
                        <input style="display: none;" type="text" name="id" value="-1">
                        <input type="text" name="title" class="form-control">
                    </div>
                    <button class="btn btn-warning" id="btn-submit">Thêm Mới</button>
                </form>
            </div>
            <div class="col-md-6">
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
                                <td><button class="btn btn-warning" onclick="editMenu({{ $item->id}}, '{{ $item->title }}')">Sửa</button></td>
                                <td><button class="btn btn-danger" onclick="deleteMenu({{ $item->id }})">Xoá</button></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
