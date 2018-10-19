<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class NewsController extends Controller {
	public function list(Request $request) {
		# code...
		$list = DB::table('news')->paginate(6);
		return view('news/list')->with([
				'list' => $list
			]);
	}

	public function input(Request $request) {
		# code...
	}

	public function post(Request $request) {
		# code...
	}

	public function delete(Request $request) {
		# code...
	}

	public function detail(Request $request, $href_pram) {
		# code...
		$menus  = DB::table('menus')->get();
		$detail = DB::table('news')
			->where('href_param', $href_pram)
			->get();
		if ($detail != null && count($detail) > 0) {
			$detail = $detail[0];
		}

		return view('news/detail')->with([
				'detail' => $detail,
				'menus'  => $menus
			]);
	}
}
