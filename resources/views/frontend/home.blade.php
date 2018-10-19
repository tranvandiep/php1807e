<!DOCTYPE html>
<html lang="en">
<head>
  <title>Truyen Tranh</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Truyen Tranh</a>
    </div>
    <ul class="nav navbar-nav">
      @foreach ($menus as $item)
        <li><a href="{{ route('home') }}?id_menu={{ $item->id }}">{{ $item->title }}</a></li>
      @endforeach
    </ul>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <ul style="list-style-type: none;">
        @foreach ($categories as $item)
          <li style="height: 40px; background-color: GREEN; margin-bottom: 10px;"><h3 style="color: white">
            <a href="{{ route('home') }}?id_cate={{ $item->id }}&id_menu={{ $id_menu }}" style="color: white">{{ $item->title }}</a>
          </h3></li>
        @endforeach
      </ul>
    </div>
    <div class="col-md-8">
      @foreach ($stories as $item)
        <div class="col-md-4">
          <h2><a href="{{ route('news-detail', $item->href_param) }}">{{ $item->title }}</a></h2>
          <p>{!! $item->content !!}</p>
          <a href="{{ route('news-detail', $item->href_param) }}">
          <img src="{{ $item->thumbnail }}" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
        </a>
        </div>
      @endforeach
      <div class="row">
        <div class="col-md-12">
          {!! $stories->appends(request()->input())->links() !!}
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>