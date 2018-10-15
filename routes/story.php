<?php
Route::get('/showStory', [
		'as'   => 'showStory',
		'uses' => 'StoryController@showStory'
	]);