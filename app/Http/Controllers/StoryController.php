<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StoryController extends Controller {
	public function showStory(Request $request) {
		return view('story/list');
	}
}
