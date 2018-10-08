@extends('layouts/master')

@section('css')

@stop
@section('js')
<script type="text/javascript">
	function deleteStudent(id) {
	    $.post("{{ route('deleteStudentForm') }}",
	    {
			'_token': $('[name=_token]').val(),
	        'id': id
	    },
	    function(data, status){
	       location.reload()
	    });
	}
</script>
@stop

@section('content')
<div class="container-fluid">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>No</th>
				<th>User Name</th>
				<th>Email</th>
				<th>Address</th>
				<th width="50px"></th>
				<th width="50px"></th>
				<th width="50px"></th>
				<th width="50px"></th>
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
					<td><a href="{{ route('input') }}?id={{ $item->id }}"><button class="btn btn-warning">Edit</button></a></td>
					<td><a href="{{ route('deleteStudent', $item->id) }}"><button class="btn btn-danger">Delete GET</button></a></td>
					<td>
						<form method='post' action="{{ route('deleteStudentForm') }}">
							{{ csrf_field() }}
							<input type="text" name="id" value="{{ $item->id }}" style="display: none;">
							<button type="submit" class="btn btn-danger">Delete POST FORM</button>
						</form>
					</td>
					<td><button onclick="deleteStudent({{ $item->id }})" class="btn btn-danger">Delete POST AJax</button></td>
				</tr>
			@endforeach
		</tbody>
	</table>
	{{ $students->links() }}
</div>
@stop