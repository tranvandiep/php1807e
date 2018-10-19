<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class FrontendController extends Controller {
	public function showHome(Request $request) {
		$menus   = DB::table('menus')->get();
		$id_menu = $menus[0]->id;
		if ($request->id_menu) {
			$id_menu = $request->id_menu;
		}

		$categories = DB::table('categories')
			->where('id_menu', $id_menu)
			->get();

		$id_cate = 0;
		if ($categories != null && count($categories) > 0) {
			$id_cate = $categories[0]->id;
			if ($request->id_cate) {
				$id_cate = $request->id_cate;
			}
		}
		$stories = DB::table('news')
			->where('id_cate', $id_cate)
			->paginate(10);

		return view('frontend/home')->with([
				'menus'      => $menus,
				'categories' => $categories,
				'stories'    => $stories,
				'id_menu'    => $id_menu
			]);
	}
}
