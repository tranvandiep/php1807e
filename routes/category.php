<?php
Route::get('/showCategory', [
		'as'   => 'showCategory',
		'uses' => 'CategoryController@showCategory'
	]);