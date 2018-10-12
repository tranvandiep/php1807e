<!DOCTYPE html>
<html>
<head>
	<title>{{ $title }}</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	@yield('css')
	<!-- css end -->

	<!-- js -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	@yield('js')
	<!-- js end -->
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="/">GokiSoft</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="{{ $page == 'show'?'active':'' }}"><a href="{{ route('showStudents') }}">Danh Sach Sinh Viên</a></li>
	      <li class="{{ $page == 'input'?'active':'' }}"><a href="{{ route('input') }}">Nhập Thông Tin SV</a></li>
	    </ul>
	  </div>
	</nav>

	@yield('content')
</body>
</html>