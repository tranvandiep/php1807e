@extends('layouts/master')

@section('css')

@stop
@section('js')

@stop

@section('content')
<div class="container-fluid">
		<form method="post" action="{{ route('inputStudent') }}">
			{{ csrf_field() }}
			<input type="text" name="id" value="{{ $id }}" style="display: none;">
			<div class="form-group">
				<label>User Name</label>
				<input type="text" name="username" class="form-control" value="{{ $username }}">
			</div>
			<div class="form-group">
				<label>Email</label>
				<input type="email" name="email" class="form-control" value="{{ $email }}">
			</div>
			<div class="form-group">
				<label>Address</label>
				<input type="text" name="address" class="form-control" value="{{ $address }}">
			</div>
			<button class="btn btn-success" type="submit">{{ $status == 0?'Register':'Update' }}</button>
		</form>
	</div>
@stop