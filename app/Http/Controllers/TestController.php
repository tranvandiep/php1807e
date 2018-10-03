<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller {
	public function showTest(Request $request) {
		return 'okok';
	}

	public function showTest2(Request $request, $param) {
		# code...
		echo $param;
	}

	public function showTestView(Request $request) {
		# code...
		return view('test');
	}
}
