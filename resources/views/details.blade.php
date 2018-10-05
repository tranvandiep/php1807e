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
		<table class="table table-hover">
			<thead>
				<tr>
					<th>No</th>
					<th>User Name</th>
					<th>Email</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				@php
					$count = 0;
					if(isset($_GET['page'])) {
						$count = ($_GET['page'] - 1) * 6;
					}
				@endphp
				@foreach ($students as $item)
					<tr>
						<td>{{ ++$count }}</td>
						<td>{{ $item->username }}</td>
						<td>{{ $item->email }}</td>
						<td>{{ $item->address }}</td>
					</tr>
				@endforeach
			</tbody>
		</table>
		{{ $students->links() }}
	</div>
</body>
</html>