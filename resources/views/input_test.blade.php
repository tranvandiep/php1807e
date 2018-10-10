<!DOCTYPE html>
<html>
<head>
	<title>Input</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
</head>
<body>
	<form method="post" action="{{ route('postTest') }}">
		{{ csrf_field() }}
		<div class="form-group">
			<label>User Name</label>
			<input type="text" name="title" class="form-control">
		</div>
		<button class="btn btn-success">Submit</button>
	</form>
</body>
</html>