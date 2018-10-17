<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class CategoryController extends Controller {
	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct() {
		$this->middleware('auth');
	}

	public function showCategory(Request $request) {
		$categories = DB::table('categories')
			->get();
		$menus = DB::table('menus')
			->get();

		return view('category/list')->with([
				'categories' => $categories,
				'menus'      => $menus
			]);
	}

	public function postCategory(Request $request) {
		$today = date('Y-m-d H:i:s');
		if ($request            ->id == -1) {
			DB::table('categories')->insert([
					'title'      => $request->title,
					'id_menu'    => $request->id_menu,
					'created_at' => $today,
					'updated_at' => $today
				]);
		} else {
			DB::table('categories')
				->where('id', $request->id)
				->update([
					'title'      => $request->title,
					'id_menu'    => $request->id_menu,
					'updated_at' => $today
				]);
		}

		return redirect()->route('showCategory');
	}

	public function deleteCategory(Request $request) {
		DB::table('categories')
			->where('id', $request->id)
			->delete();
	}
}