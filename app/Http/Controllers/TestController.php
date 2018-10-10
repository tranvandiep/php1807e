<?php

namespace App\Http\Controllers;

use DB;
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

	public function inputTest(Request $request) {
		# code...
		return view('input_test');
	}

	public function postTest(Request $request) {
		# code...
		// var_dump($request->all());
		$today = date('Y-m-d H:i:s');
		DB::table('tests')->insert([
				'title'      => $request->title,
				'updated_at' => $today,
				'created_at' => $today
			]);
	}
}
