<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class StoryController extends Controller {
	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct() {
		$this->middleware('auth');
	}

	public function showStory(Request $request) {
		$news = DB::table('news')->paginate(10);

		return view('story/list')->with([
				'news' => $news
			]);
	}

	public function deleteStory(Request $request) {
		DB::table('news')
			->where('id', $request->id)
			->delete();
	}

	public function postStory(Request $request) {
		$id        = $request->id;
		$title     = $request->title;
		$id_cate   = $request->id_cate;
		$content   = $request->content;
		$thumbnail = $request->thumbnail;
		$today     = date('Y-m-d H:i:s');
		if ($id != "" && $id > 0) {
			//update
			DB::table('news')
				->where('id', $id)
				->update([
					'title'      => $title,
					'href_param' => $title,
					'id_cate'    => $id_cate,
					'content'    => $content,
					'thumbnail'  => $thumbnail,
					'updated_at' => $today
				]);
		} else {
			//insert
			DB::table('news')->insert([
					'title'      => $title,
					'href_param' => $title,
					'id_cate'    => $id_cate,
					'content'    => $content,
					'thumbnail'  => $thumbnail,
					'created_at' => $today,
					'updated_at' => $today
				]);
		}
		return redirect()->route('showStory');
	}

	public function viewAddStory(Request $request) {
		$categories = DB::table('categories')
			->get();
		$id = $title = $thumbnail = $id_cate = $content = "";
		if ($request->id) {
			$news = DB::table('news')
				->where('id', $request->id)
				->get();
			if ($news != null && count($news) > 0) {
				$id        = $request->id;
				$title     = $news[0]->title;
				$thumbnail = $news[0]->thumbnail;
				$id_cate   = $news[0]->id_cate;
				$content   = $news[0]->content;
			}
		}

		return view('story/view_add_story')->with([
				'categories' => $categories,
				'id'         => $id,
				'title'      => $title,
				'thumbnail'  => $thumbnail,
				'id_cate'    => $id_cate,
				'content'    => $content
			]);
	}
}
