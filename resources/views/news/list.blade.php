<!DOCTYPE html>
<html>
<head>
	<title>List</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
</head>
<body>
	<div class="container-fluid">
		@foreach($list as $item)
			<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
				<div class="col-md-3">
					<a href="{{ route('news-detail', $item->href_param) }}"><img width="100%" src="{{ $item->thumbnail }}"></a>
				</div>
				<div class="col-md-9">
					{{ $item->title }}
				</div>
			</div>
		@endforeach
		{!! $list->links() !!}
	</div>
</body>
</html>