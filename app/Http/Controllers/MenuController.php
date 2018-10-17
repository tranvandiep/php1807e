<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class MenuController extends Controller {
	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct() {
		$this->middleware('auth');
	}

	public function showMenu(Request $request) {
		$menus = DB::table('menus')
			->get();

		return view('menu/list')->with([
				'menus' => $menus
			]);
	}

	public function postMenu(Request $request) {
		$today = date('Y-m-d H:i:s');
		if ($request       ->id == -1) {
			DB::table('menus')->insert([
					'title'      => $request->title,
					'created_at' => $today,
					'updated_at' => $today
				]);
		} else {
			DB::table('menus')
				->where('id', $request->id)
				->update([
					'title'      => $request->title,
					'updated_at' => $today
				]);
		}

		return redirect()->route('showMenu');
	}

	public function deleteMenu(Request $request) {
		DB::table('menus')
			->where('id', $request->id)
			->delete();
	}
}
