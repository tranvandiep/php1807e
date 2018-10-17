@extends('adminlte::layouts.app')

@section('htmlheader_title')
    Story
@endsection

@section('contentheader_title')
    Thêm/Sửa truyện
@stop

@section('js')

@stop

@section('main-content')
    {{ csrf_field() }}
    <div class="container-fluid spark-screen">
        <div class="row" style="background-color: white; padding: 10px;">
            <form method="post" action="{{ route('postStory') }}">
            <div class="col-md-12">
                <div class="form-group">
                    {{ csrf_field() }}
                    <input type="text" name="id" value="{{ $id }}" style="display: none;">
                    <label>Tiêu Đề</label>
                    <input type="text" name="title" class="form-control" value="{{ $title }}">
                </div>

                <div class="form-group">
                    <label>Thumbnail</label>
                    <input type="text" name="thumbnail" class="form-control" value="{{ $thumbnail }}">
                </div>

                <div class="form-group">
                    <label>Lựa Chọn Danh Mục</label>
                    <select class="form-control" name="id_cate">
                        <option>-- Lua Chon --</option>
                        @foreach ($categories as $item)
                            @if ($item->id == $id_cate)
                                <option value="{{ $item->id }}" selected>{{ $item->title }}</option>
                            @else
                                <option value="{{ $item->id }}">{{ $item->title }}</option>
                            @endif

                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label>Noi Dung</label>
                    <textarea style="min-height: 300px;" class="form-control" name="content">{{ $content }}</textarea>
                </div>
                <button class="btn btn-success">Lưu</button>
                </form>
            </div>
        </div>
    </div>
@endsection