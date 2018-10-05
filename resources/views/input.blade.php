<!DOCTYPE html>
<html>
<head>
	<title>INPUT</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<form method="post" action="{{ route('inputStudent') }}">
			{{ csrf_field() }}
			<div class="form-group">
				<label>User Name</label>
				<input type="text" name="username" class="form-control">
			</div>
			<div class="form-group">
				<label>Email</label>
				<input type="email" name="email" class="form-control">
			</div>
			<div class="form-group">
				<label>Address</label>
				<input type="text" name="address" class="form-control">
			</div>
			<button class="btn btn-success" type="submit">Register</button>
			<a href="{{ route('showStudents') }}" target="_self"><button class="btn btn-danger" type="button">View Students</button></a>
		</form>
	</div>
</body>
</html>