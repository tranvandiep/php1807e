<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class MenuController extends Controller {
	public function showMenu(Request $request) {
		$menus = DB::table('menus')
			->get();

		return view('menu/list')->with([
				'menus' => $menus
			]);
	}
}
