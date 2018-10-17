<?php
Route::get('/showStory', [
		'as'   => 'showStory',
		'uses' => 'StoryController@showStory'
	]);
Route::get('/viewAddStory', [
		'as'   => 'viewAddStory',
		'uses' => 'StoryController@viewAddStory'
	]);
Route::post('/postStory', [
		'as'   => 'postStory',
		'uses' => 'StoryController@postStory'
	]);

Route::post('/deleteStory', [
		'as'   => 'deleteStory',
		'uses' => 'StoryController@deleteStory'
	]);