@extends('adminlte::layouts.app')

@section('htmlheader_title')
    Category
@endsection

@section('contentheader_title')
    Quản Lý Danh Mục
@stop

@section('js')
<script type="text/javascript">
    function deleteMenu(id) {
        $.post("{{ route('deleteCategory') }}",
        {
            id: id,
            _token: $('[name=_token]').val()
        },
        function(data, status){
            location.reload()
        });
    }

    function editMenu(id, title, id_menu) {
        $('[name=id]').val(id)
        $('[name=title]').val(title)
        $('#btn-submit').html('Cập Nhật')
        $('[name=id_menu]').val(id_menu)
    }
</script>
@stop

@section('main-content')
    <div class="container-fluid spark-screen">
        <div class="row" style="background-color: white; padding: 10px;">
            <div class="col-md-6">
                <form action="{{ route('postCategory') }}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label>Tiêu Đề</label>
                        <input style="display: none;" type="text" name="id" value="-1">
                        <input required type="text" name="title" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Menu</label>
                        <select required class="form-control" name="id_menu">
                            <option>-- Lựa Chọn --</option>
                            @foreach ($menus as $item)
                                <option value="{{ $item->id }}">{{ $item->title }}</option>
                            @endforeach
                        </select>
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
                        @foreach ($categories as $item)
                            <tr>
                                <td>{{ $count++ }}</td>
                                <td>{{ $item->title }}</td>
                                <td><button class="btn btn-warning" onclick="editMenu({{ $item->id}}, '{{ $item->title }}', {{ $item->id_menu }})">Sửa</button></td>
                                <td><button class="btn btn-danger" onclick="deleteMenu({{ $item->id }})">Xoá</button></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection