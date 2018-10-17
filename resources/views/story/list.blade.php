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
        $.post("{{ route('deleteStory') }}",
        {
            id: id,
            _token: $('[name=_token]').val()
        },
        function(data, status){
            location.reload()
        });
    }
</script>
@stop

@section('main-content')
    {{ csrf_field() }}
    <div class="container-fluid spark-screen">
        <div class="row" style="background-color: white; padding: 10px;">
            <div class="col-md-12">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Thumbnail</th>
                            <th>Tiêu Đề</th>
                            <th>Ngày Cập Nhật</th>
                            <th width="50px"></th>
                            <th width="50px"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $count = 1;
                            if(isset($_GET['page'])) {
                                $count = ($_GET['page'] -1) * 10 + 1;
                            }
                        @endphp
                        @foreach ($news as $item)
                            <tr>
                                <td>{{ $count++ }}</td>
                                <td><img style="max-height: 100px" src="{{ $item->thumbnail }}"></td>
                                <td>{{ $item->title }}</td>
                                <td>{{ $item->updated_at }}</td>
                                <td>
                                    <a href="{{ route('viewAddStory') }}/?id={{ $item->id }}"><button class="btn btn-warning">Sửa</button></a></td>
                                <td><button class="btn btn-danger" onclick="deleteMenu({{ $item->id }})">Xoá</button></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="col-md-12">
                <a href="{{ route('viewAddStory') }}"><button class="btn btn-success">Thêm Mới</button></a>
            </div>
            <div class="col-md-12">
                {!! $news->links() !!}
            </div>
        </div>
    </div>
@endsection