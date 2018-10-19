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
  	<img src="{{ $detail->thumbnail }}" style="width: 80%">
  	<p>
  	{!! $detail->content !!}
  	</p>
  </div>
</div>

</body>
</html>